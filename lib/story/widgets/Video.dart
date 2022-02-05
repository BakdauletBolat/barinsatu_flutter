import 'dart:async';
import 'dart:developer';

import 'package:barinsatu/story/bloc/preload_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:provider/src/provider.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  const Video({Key? key, required this.url, required this.position})
      : super(key: key);

  final String url;
  final int position;

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  VideoPlayerController? _controller;
  late BaseCacheManager _cacheManager = DefaultCacheManager();

  @override
  Future<VideoPlayerController> getControllerForVideo(url) async {
    final fileInfo = await _cacheManager.getFileFromCache(url);

    if (fileInfo == null || fileInfo.file == null) {
      log('[VideoControllerService]: No video in cache');

      log('[VideoControllerService]: Saving video to cache');
      unawaited(_cacheManager.downloadFile(url));

      return VideoPlayerController.network(url);
    } else {
      log('[VideoControllerService]: Loading video from cache');
      return VideoPlayerController.file(fileInfo.file);
    }
  }

  bool isLoaded = false;

  @override
  void initState() {
    final focusedIndex =
        BlocProvider.of<PreloadBloc>(context).state.focusedIndex;
    getControllerForVideo(widget.url).then((value) {
      _controller = value;
      _controller!.initialize().then((value) {
        if (focusedIndex == widget.position) {
          _controller!.play();
        }
        log(' initialized kz 🚀🚀🚀' + widget.position.toString());
        setState(() {
          isLoaded = true;
        });
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();

    log('disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final focusedIndex =
        BlocProvider.of<PreloadBloc>(context).state.focusedIndex;

    log('current Pos ' +
        widget.position.toString() +
        ' focusedIndex ' +
        focusedIndex.toString());

    if (_controller != null) {
      if (_controller!.value.isInitialized && _controller != null) {
        if (widget.position == focusedIndex) {
          _controller!.play();
          log('played ' + widget.position.toString());
        } else {
          log('paused ' + widget.position.toString());
          _controller!.pause();
          _controller!.seekTo(const Duration());
        }
        _controller!.setLooping(true);
      }
    }
    if (_controller != null) {
      if (isLoaded) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(color: Colors.black),
          alignment: AlignmentDirectional.center,
          child: Stack(
            fit: StackFit.expand,
            alignment: AlignmentDirectional.center,
            children: [
              FittedBox(
                fit: BoxFit.contain,
                alignment: Alignment.center,
                child: SizedBox(
                  width: _controller!.value.size.width,
                  height: _controller!.value.size.height,
                  child: VideoPlayer(_controller!),
                ),
              ),
            ],
          ),
        );
      } else {
        return const Center(child: CupertinoActivityIndicator());
      }
    }
    return Container();
  }
}

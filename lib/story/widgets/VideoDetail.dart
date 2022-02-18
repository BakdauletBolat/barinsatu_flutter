import 'dart:async';
import 'dart:developer';
import 'package:barinsatu/pages/HomePage.dart';
import 'package:barinsatu/story/models/story.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'dart:io' show Platform;
import 'package:video_player/video_player.dart';

class VideoDetail extends StatefulWidget {
  const VideoDetail({Key? key, required this.story}) : super(key: key);

  final Story story;

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<VideoDetail> {
  VideoPlayerController? _controller;
  final BaseCacheManager _cacheManager = DefaultCacheManager();

  Future<VideoPlayerController> getControllerForVideo(url) async {
    final fileInfo = await _cacheManager.getFileFromCache(url);

    if (fileInfo == null) {
      log('[VideoControllerService]: No video in cache');

      log('[VideoControllerService]: Saving video to cache');
      unawaited(_cacheManager.downloadFile(url));

      return VideoPlayerController.network(url);
    } else {
      log('[VideoControllerService]: Loading video from cache');
      print(fileInfo);
      return VideoPlayerController.file(fileInfo.file);
    }
  }

  bool isLoaded = false;

  @override
  void initState() {
    if (Platform.isIOS) {
      _controller = VideoPlayerController.network(widget.story.video);
      _controller!.initialize().then((value) {
        _controller!.play();

        log('played');
        setState(() {
          isLoaded = true;
        });
      });
    } else {
      getControllerForVideo(widget.story.video).then((value) {
        _controller = value;
        _controller!.initialize().then((value) {
          _controller!.play();
          log('played');
          setState(() {
            isLoaded = true;
          });
        });
      });
    }

    super.initState();
  }

  @override
  void dispose() {
    if (_controller != null) {
      _controller!.dispose();
    }

    log('disposed');
    super.dispose();
  }

  bool? isPlaying;

  Widget isDoneButton() {
    var newRoute = CupertinoPageRoute(builder: (context) => const HomePage());
    return TextButton(
        onPressed: () {
          Navigator.pushAndRemoveUntil(context, newRoute, (route) => false);
        },
        child: const Text('Готово'));
  }

  @override
  Widget build(BuildContext context) {
    if (_controller != null) {
      if (isLoaded) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text('История'),
            foregroundColor: Theme.of(context).primaryColor,
            actions: [isDoneButton()],
          ),
          body: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(color: Colors.black),
              alignment: AlignmentDirectional.center,
              child: Stack(
                fit: StackFit.expand,
                alignment: AlignmentDirectional.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      log('tapped');
                      if (_controller!.value.isPlaying) {
                        _controller!.pause();
                        setState(() {
                          isPlaying = false;
                        });
                      } else {
                        _controller!.play();
                        setState(() {
                          isPlaying = true;
                        });
                      }
                    },
                    child: FittedBox(
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: _controller!.value.size.width,
                        height: _controller!.value.size.height,
                        child: VideoPlayer(_controller!),
                      ),
                    ),
                  ),
                  bottomProfile(),
                  Positioned(
                      right: 20,
                      bottom: 100,
                      child: Column(
                        children: const [
                          Icon(Icons.favorite_outline,
                              color: Colors.white, size: 35),
                          SizedBox(
                            height: 20,
                          ),
                          Icon(Icons.comment, color: Colors.white, size: 35),
                          SizedBox(
                            height: 20,
                          ),
                          Icon(Icons.send, color: Colors.white, size: 35),
                        ],
                      )),
                  if (isPlaying != null)
                    if (!isPlaying!)
                      GestureDetector(
                        onTap: () {
                          _controller!.play();
                          setState(() {
                            isPlaying = true;
                          });
                        },
                        child: Center(
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white.withOpacity(0.8),
                            size: 60,
                          ),
                        ),
                      ),
                ],
              ),
            ),
          ),
        );
      } else {
        return buildThumb();
      }
    }
    return buildThumb();
  }

  Widget buildThumb() {
    if (widget.story.thumb != null) {
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ExtendedImage.network(
          widget.story.thumb!,
          width: 150,
          height: 150,
          fit: BoxFit.cover,
          cache: true,
        ),
      );
    }

    return const Center(child: CupertinoActivityIndicator());
  }

  Widget buildProfilePicture() {
    if (widget.story.author.avatar != null) {
      return Image.network(
        widget.story.author.avatar!,
        width: 45,
        height: 45,
        fit: BoxFit.cover,
      );
    }
    return Image.asset(
      'assets/no-image.jpeg',
      width: 45,
      height: 45,
      fit: BoxFit.cover,
    );
  }

  Widget bottomProfile() {
    return Positioned(
        left: 20,
        bottom: 20,
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: buildProfilePicture()),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    widget.story.author.email,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ));
  }
}

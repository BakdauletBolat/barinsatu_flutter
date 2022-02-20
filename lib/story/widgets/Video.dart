import 'dart:async';
import 'dart:developer';

import 'package:barinsatu/authentication/bloc/auth_bloc.dart';
import 'package:barinsatu/pages/auth/ProfileView.dart';
import 'package:barinsatu/pages/story/CommentsPage.dart';
import 'package:barinsatu/story/bloc/preload_bloc.dart';
import 'package:barinsatu/story/models/story.dart';
import 'package:barinsatu/story/repositories/story_repo.dart';
import 'package:barinsatu/utils/DateFormatter.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:provider/src/provider.dart';

import 'dart:io' show Platform;
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  const Video({Key? key, required this.story, required this.position})
      : super(key: key);

  final Story story;
  final int position;

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  VideoPlayerController? _controller;
  final BaseCacheManager _cacheManager = DefaultCacheManager();

  bool isLike = false;

  int count = 0;

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

  void initLike() {
    context.read<AuthBloc>().state.mapOrNull(
      loaded: (value) {
        var contain = widget.story.story_likes
            .where((element) => element.user.id == value.userLoaded.user.id);

        setState(() {
          count = widget.story.story_likes.length;
        });
        if (contain.isEmpty) {
          setState(() {
            isLike = false;
          });
        } else {
          setState(() {
            isLike = true;
          });
        }
      },
    );
  }

  void likeAd() async {
    var userState = BlocProvider.of<AuthBloc>(context).state;
    userState.maybeWhen(orElse: () {
      const snackBar = SnackBar(
        content: Text('Не зарегестрированный человек не можеть лайкнуть'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }, loaded: (user, msg) async {
      int id = widget.story.id;
      StoryRepo storyRepo = StoryRepo();

      StoryLike like = await storyRepo.likeAd(id);

      if (like.isLiked) {
        setState(() {
          isLike = true;
          count += 1;
        });
      } else {
        setState(() {
          isLike = false;
          count -= 1;
        });
      }
    });
  }

  @override
  void initState() {
    final focusedIndex =
        BlocProvider.of<PreloadBloc>(context).state.focusedIndex;

    if (Platform.isIOS || kIsWeb) {
      _controller = VideoPlayerController.network(widget.story.video);
      _controller!.initialize().then((value) {
        if (focusedIndex == widget.position) {
          _controller!.play();
        }
        log(' initialized kz 🚀🚀🚀' + widget.position.toString());
        setState(() {
          isLoaded = true;
        });
      });
    } else {
      getControllerForVideo(widget.story.video).then((value) {
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

      initLike();
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
        if (widget.position == focusedIndex && isPlaying == null) {
          isPlaying = true;
          _controller!.play();

          log('played ' + widget.position.toString());
        } else if (widget.position != focusedIndex) {
          log('paused ' + widget.position.toString());
          _controller!.pause();
          isPlaying = null;
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
                    children: [
                      TextButton(
                          onPressed: likeAd,
                          child: Row(
                            children: [
                              if (isLike == false)
                                const Icon(
                                  Icons.favorite_outline,
                                  size: 30,
                                  color: Colors.red,
                                )
                              else
                                const Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Colors.red,
                                ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(count.toString(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                            offset: Offset(1, 2),
                                            blurRadius: 3.0,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          )
                                        ])),
                              )
                            ],
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              var newRoute = CupertinoPageRoute(
                                  builder: (context) =>
                                      CommentsPage(story: widget.story));

                              Navigator.push(context, newRoute);
                            },
                            child: const Icon(Icons.comment,
                                color: Colors.white, size: 35),
                          ),
                          Text(
                            widget.story.story_comments.length.toString(),
                            style: const TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Icon(Icons.send, color: Colors.white, size: 35),
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
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (context) => ProfileView(user: widget.story.author)),
            );
          },
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
          ),
        ));
  }
}

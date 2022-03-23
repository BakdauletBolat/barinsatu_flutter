import 'dart:async';
import 'dart:developer';

import 'package:barinsatu/authentication/bloc/auth_bloc.dart';
import 'package:barinsatu/pages/HomePage.dart';
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

class VideoOneSingle extends StatefulWidget {
  const VideoOneSingle(
      {Key? key, required this.story, required this.position, this.isSingle})
      : super(key: key);

  final Story story;
  final int position;
  final int? isSingle;

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<VideoOneSingle> {
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

  Future<void> _showRemoveDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Вы точно хотите удалить историю ?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Нет'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Да'),
              onPressed: () async {
                StoryRepo storyRepo = StoryRepo();
                try {
                  var res = await storyRepo.deleteStory(widget.story.id);
                  var newRoute = CupertinoPageRoute(
                      builder: (context) => const HomePage());
                  Navigator.pushAndRemoveUntil(
                      context, newRoute, (route) => false);
                } catch (e) {
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  Widget buildRemoveAction() {
    var state = context.watch<AuthBloc>().state;
    Widget container = const SizedBox.shrink();
    state.whenOrNull(
        loaded: (userLoaded, msg) => {
              if (userLoaded.user.id == widget.story.author.id)
                {
                  container = IconButton(
                      onPressed: _showRemoveDialog,
                      icon: const Icon(Icons.delete))
                }
            });

    return container;
  }

  Widget buildViewIcon() {
    return Row(
      children: [
        const Icon(Icons.remove_red_eye_sharp),
        const SizedBox(
          width: 5,
        ),
        Text(widget.story.views.toString()),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }

  @override
  void initState() {
    final focusedIndex =
        BlocProvider.of<PreloadBloc>(context).state.focusedIndex;

    StoryRepo storyRepo = StoryRepo();
    storyRepo.viewStory(widget.story.id);

    if (Platform.isIOS || kIsWeb) {
      _controller = VideoPlayerController.network(widget.story.video);
      _controller!.initialize().then((value) {
        _controller!.play();
        setState(() {
          isLoaded = true;
        });
      });
    } else {
      getControllerForVideo(widget.story.video).then((value) {
        _controller = value;
        _controller!.initialize().then((value) {
          _controller!.play();
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
    if (_controller != null) {
      if (isLoaded) {
        return Scaffold(
          backgroundColor: Colors.white,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              actions: [buildRemoveAction(), buildViewIcon()]),
          body: Container(
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
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
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
      return ExtendedImage.network(
        widget.story.author.avatar!,
        width: 45,
        height: 45,
        fit: BoxFit.cover,
        cache: true,
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

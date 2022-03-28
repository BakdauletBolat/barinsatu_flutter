import 'dart:developer';
import 'dart:io';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/authentication/bloc/auth_bloc.dart';
import 'package:barinsatu/pages/DoneScreenStory.dart';
import 'package:barinsatu/pages/ad/CreatePage.dart';
import 'package:barinsatu/pages/auth/LoginPage.dart';
import 'package:barinsatu/story/models/story.dart';
import 'package:barinsatu/story/repositories/story_repo.dart';
import 'package:barinsatu/story/widgets/ProgressDialogWidget.dart';
import 'package:barinsatu/story/widgets/Video.dart';
import 'package:barinsatu/story/widgets/VideoDetail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_video_info/flutter_video_info.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/src/provider.dart';
import 'package:video_compress/video_compress.dart';
import 'dart:async';
import 'package:dio/dio.dart';

import 'package:video_player/video_player.dart';

class VideoCreate extends StatefulWidget {
  const VideoCreate({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<VideoCreate> {
  File? videoFile;

  File? thum;

  bool controllerLoading = false;
  double? videoSize;

  bool isLoading = false;

  VideoPlayerController? _controller;

  final imagePicker = ImagePicker();

  var dio = Dio();

  bool isPlaying = false;
  var formData = FormData.fromMap({'a': 'a'});

  void navigateReplace(Story story) {
    var newRoute =
        CupertinoPageRoute(builder: (context) => DoneScreenStory(story: story));
    Navigator.push(context, newRoute);
  }

  final videoInfo = FlutterVideoInfo();

  void sendData() async {
    if (videoFile != null) {
      formData = FormData.fromMap({
        'thumb': await MultipartFile.fromFile(thum!.path),
        'video': await MultipartFile.fromFile(videoFile!.path),
      });
    }

    StoryRepo storyRepo = StoryRepo();

    try {
      setState(() {
        isLoading = true;
      });
      Story story = await storyRepo.createStory(formData);
      const snackBar = SnackBar(
        content: Text('Поздравляем с успешной загрузкой'),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Future.delayed(const Duration(seconds: 3));
      _controller!.seekTo(const Duration());
      navigateReplace(story);
      setState(() {
        isLoading = true;
      });
    } on DioError catch (e) {
      if (e.response != null) {
        const snackBar = SnackBar(
          content: Text('Видео обязательный параметр'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else {
        print(e.requestOptions);
        print(e.message);
      }
    }
  }

  void getThumb(path) async {
    final thumbnailFile = await VideoCompress.getFileThumbnail(path,
        quality: 50, // default(100)
        position: -1 // default(-1)
        );

    setState(() {
      thum = thumbnailFile;
    });
  }

  Future compressVideo(String file) async {
    try {
      final info = await VideoCompress.compressVideo(file,
          quality: VideoQuality.DefaultQuality,
          deleteOrigin: false,
          includeAudio: true);

      setState(() {
        videoFile = File(info!.path!);
      });

      getThumb(videoFile!.path);
      _controller = VideoPlayerController.file(videoFile!);
      getVideoSize(videoFile!);
      _controller!.initialize().then((v) {
        _controller!.play();
        setState(() {
          isPlaying = true;
        });
        _controller!.setLooping(true);
        log('success');
        setState(() {
          controllerLoading = false;
        });
      });
    } catch (e) {
      print(e);
      VideoCompress.cancelCompression();
      log('error');
      setState(() {
        controllerLoading = false;
      });
    }
  }

  void setupVideo() async {
    var userState = BlocProvider.of<AuthBloc>(context).state;

    userState.maybeWhen(
        orElse: () {},
        loaded: (userLoaded, msg) async {
          setState(() {
            controllerLoading = true;
          });
          XFile? file;
          file = await imagePicker.pickVideo(source: ImageSource.gallery);

          if (file != null) {
            var info = await videoInfo.getVideoInfo(file.path);
            print(info!.duration!);
            if (info.duration! > 20000) {
              print('aa');
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        actions: [
                          TextButton(
                              onPressed: () async {
                                Navigator.pop(context);
                                file = await imagePicker.pickVideo(
                                    source: ImageSource.gallery);

                                await compressVideo(file!.path);
                              },
                              child: const Text('Выбрать другое видео'))
                        ],
                        title: const Text(
                            'Ограничение продолжительности видео 30 секунд'),
                      ));

              return;
            }
            showDialog(
                context: context,
                builder: (context) => const Dialog(
                      child: ProgressDialogWidget(),
                    ));
            await compressVideo(file.path);

            Navigator.pop(context);
          }
        });
  }

  @override
  void initState() {
    setupVideo();
    super.initState();
  }

  @override
  void dispose() {
    if (_controller != null) {
      _controller!.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userState = context.watch<AuthBloc>().state;

    return userState.maybeWhen(error: (msg) {
      return const LoginPage();
    }, orElse: () {
      return const LoginPage();
    }, loaded: (userLoaded, msg) {
      return Scaffold(
        body: SafeArea(
          child: Center(
              child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(color: Colors.black),
            alignment: AlignmentDirectional.center,
            child: Stack(
              fit: StackFit.expand,
              alignment: AlignmentDirectional.center,
              children: [
                if (controllerLoading)
                  const Center(
                    child: CupertinoActivityIndicator(),
                  )
                else if (videoFile != null && _controller!.value.isInitialized)
                  FittedBox(
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: _controller!.value.size.width,
                      height: _controller!.value.size.height,
                      child: GestureDetector(
                          onTap: () {
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
                          child: VideoPlayer(_controller!)),
                    ),
                  )
                else
                  const Center(
                    child: Text('Выберите видео'),
                  ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: SizedBox(
                    width: 320,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: const [
                          // Text('Size ' + videoSize.toString(),
                          //     style: const TextStyle(
                          //         fontSize: 15,
                          //         color: Colors.white,
                          //         shadows: [
                          //           Shadow(
                          //             offset: Offset(10.0, 10.0),
                          //             blurRadius: 3.0,
                          //             color: Color.fromARGB(255, 0, 0, 0),
                          //           )
                          //         ])),
                        ],
                      ),
                    ),
                  ),
                ),
                if (!isPlaying)
                  Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white.withOpacity(0.8),
                      size: 40,
                    ),
                  ),
                Positioned(bottom: 28, right: 15, child: buildSendButton())
              ],
            ),
          )),
        ),
      );
    });
  }

  Widget buildSendButton() {
    if (isLoading) {
      return ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Ожидайте пока видео загрузиться',
                  style: TextStyle(fontSize: 15),
                ),
                CupertinoActivityIndicator()
              ],
            ),
          ));
    }
    return ElevatedButton(
        onPressed: sendData,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'Опубликовать',
                style: TextStyle(fontSize: 15),
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
        ));
  }

  Future getVideoSize(File file) async {
    final int size = await file.length();

    log((size / 1000).toString());

    setState(() {
      videoSize = size / 1000;
    });
  }
}

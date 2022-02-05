import 'dart:developer';
import 'dart:io';
import 'package:barinsatu/story/widgets/ProgressDialogWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_compress/video_compress.dart';
import 'dart:async';

import 'package:video_player/video_player.dart';

class VideoCreate extends StatefulWidget {
  const VideoCreate({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<VideoCreate> {
  File? videoFile;

  bool controllerLoading = false;
  double? videoSize;

  VideoPlayerController? _controller;

  final imagePicker = ImagePicker();

  bool isPlaying = false;

  Future compressVideo(File file) async {
    final info = await VideoCompress.compressVideo(
      file.path,
      quality: VideoQuality.HighestQuality,
      startTime: 0,
      duration: 1,
      deleteOrigin: false,
    ).then((value) {
      if (value != null) {
        setState(() {
          videoFile = File(value.path!);
        });
        _controller = VideoPlayerController.file(videoFile!);
        getVideoSize(videoFile!);
        _controller!.initialize().then((v) {
          _controller!.play();
          setState(() {
            isPlaying = true;
          });
          log('success');
          setState(() {
            controllerLoading = false;
          });
        }).catchError((e) {
          log(e);
          VideoCompress.cancelCompression();
          log('error');
          setState(() {
            controllerLoading = false;
          });
        });
      }
    });
  }

  void setupVideo() async {
    setState(() {
      controllerLoading = true;
    });
    XFile? file = await imagePicker.pickVideo(
        source: ImageSource.gallery, maxDuration: const Duration(seconds: 20));

    if (file != null) {
      showDialog(
          context: context,
          builder: (context) => const Dialog(
                child: ProgressDialogWidget(),
              ));
      await compressVideo(File(file.path));

      Navigator.pop(context);
    }
  }

  @override
  void initState() {
    setupVideo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
                    children: [
                      Text('Size ' + videoSize.toString()),
                      const Text(
                          'Вы загружаете видео-историю в Barinsatu чисто для ознакомителных целях',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              shadows: [Shadow()])),
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
            Positioned(
                bottom: 28,
                right: 15,
                child: ElevatedButton(
                    onPressed: () {},
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
                    )))
          ],
        ),
      )),
    );
  }

  Future getVideoSize(File file) async {
    final int size = await file.length();

    print(size);

    setState(() {
      videoSize = size / 1000;
    });
  }
}

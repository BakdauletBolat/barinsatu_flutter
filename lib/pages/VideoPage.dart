import 'dart:developer';

import 'package:barinsatu/story/bloc/preload_bloc.dart';
import 'package:barinsatu/story/widgets/Video.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  int focusedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PreloadBloc, PreloadState>(
      builder: (context, state) {
        if (state.loaded) {
          return Scaffold(
            body: PreloadPageView.builder(
              preloadPagesCount: 3,
              itemCount: state.stories.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int position) =>
                  Video(url: state.stories[position].video, position: position),
              controller: PreloadPageController(initialPage: 0),
              onPageChanged: (int position) {
                context
                    .read<PreloadBloc>()
                    .add(PreloadEvent.onVideoIndexChanged(position));
              },
            ),
          );
        } else {
          return const Center(child: CupertinoActivityIndicator());
        }
      },
    );
  }
}

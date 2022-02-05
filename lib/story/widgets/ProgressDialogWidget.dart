import 'package:flutter/material.dart';
import 'package:video_compress/video_compress.dart';

class ProgressDialogWidget extends StatefulWidget {
  const ProgressDialogWidget({Key? key}) : super(key: key);

  @override
  _ProgressDialogWidgetState createState() => _ProgressDialogWidgetState();
}

class _ProgressDialogWidgetState extends State<ProgressDialogWidget> {
  late Subscription subscription;

  double? progress;

  @override
  void initState() {
    subscription = VideoCompress.compressProgress$.subscribe((progress) {
      setState(() {
        this.progress = progress;
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    VideoCompress.cancelCompression();
    subscription.unsubscribe();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final value = progress == null ? progress : progress! / 100;
    return SizedBox(
      height: 180,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Видео сжимается, подождите'),
            const SizedBox(
              height: 24,
            ),
            LinearProgressIndicator(
              value: value,
              minHeight: 12,
            )
          ],
        ),
      ),
    );
  }
}

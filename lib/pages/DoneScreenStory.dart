// ignore: file_names
import 'package:barinsatu/pages/HomePage.dart';
import 'package:barinsatu/pages/story/VideoPage.dart';
import 'package:barinsatu/story/models/story.dart';
import 'package:barinsatu/story/widgets/Video.dart';
import 'package:barinsatu/story/widgets/VideoDetail.dart';
import 'package:barinsatu/story/widgets/VideoOneSingle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DoneScreenStory extends StatefulWidget {
  const DoneScreenStory({Key? key, required this.story}) : super(key: key);

  final Story story;

  @override
  State<DoneScreenStory> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreenStory>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void navigateToDetailScreen() {
    var newRoute = CupertinoPageRoute(
        builder: (context) => VideoOneSingle(
              story: widget.story,
            ));
    Navigator.pushAndRemoveUntil(context, newRoute, (route) => false);
  }

  void navigateToMainScreen() {
    var newRoute = CupertinoPageRoute(builder: (context) => const HomePage());
    Navigator.pushAndRemoveUntil(context, newRoute, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Lottie.asset(
                  'assets/animation/done-f.json',
                  controller: _controller,
                  onLoaded: (composition) {
                    _controller
                      ..duration = composition.duration
                      ..forward();
                  },
                  width: 200,
                  height: 200,
                ),
              ),
              Text('Поздравляем !',
                  style: TextStyle(
                      fontSize: 20,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 15,
              ),
              const Text('История успешно создано',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                    'Удачи в продаже и аренде желаем чтобы у вас быстрее нашелся покупатель 🤩',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                    )),
              ),
              const SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: navigateToMainScreen,
                          child: const Text('Назад в главную')),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                          onPressed: navigateToDetailScreen,
                          child: const Text('Смотреть историю')),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

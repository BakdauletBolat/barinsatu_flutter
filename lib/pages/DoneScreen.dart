// ignore: file_names
import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/pages/HomePage.dart';
import 'package:barinsatu/pages/ad/DetailPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({Key? key, required this.ad}) : super(key: key);

  final Ad ad;

  @override
  State<DoneScreen> createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> with TickerProviderStateMixin {
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
    Navigator.pushAndRemoveUntil(
        context,
        CupertinoPageRoute(
            builder: (context) => DetailPage(
                  item: widget.ad,
                  isComplete: true,
                )),
        (route) => false);
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
              const Text('Публикация успешно создано',
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
                          child: const Text('Смотреть публикацию')),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

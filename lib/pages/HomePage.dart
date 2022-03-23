import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/ads/widgets/CreateStepAd.dart';
import 'package:barinsatu/authentication/bloc/auth_bloc.dart';
import 'package:barinsatu/authentication/repositories/auth_repo.dart';
import 'package:barinsatu/pages/Calculator.dart';
import 'package:barinsatu/pages/MainPage.dart';
import 'package:barinsatu/pages/Map.dart';
import 'package:barinsatu/pages/story/VideoCreatePage.dart';
import 'package:barinsatu/pages/story/VideoPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:intl/date_symbol_data_local.dart';

import 'ad/CreatePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final AdRepo adRepo = AdRepo();
  final AuthRepo authRepo = AuthRepo();

  final PageController pageController = PageController();

  @override
  void initState() {
    initializeDateFormatting();
    context.read<AuthBloc>().add(const AuthEvent.getUser());
    super.initState();
  }

  int _selectedIndex = 0;

  final List<Widget> pages = const <Widget>[
    MainPage(),
    if (kIsWeb == false) VideoPage(),
    CreatePage(),
    CalculatorPage(),
    Map()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    pageController.jumpToPage(index);
  }

  void onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;
    Color grey = Colors.grey;

    Widget buildItem(int index, String title, IconData icon, bool isTapable) {
      return TextButton(
          onPressed: () {
            if (isTapable) {
              _onItemTapped(index);
            } else {
              showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                  ),
                  builder: (context) => Container(
                        padding: const EdgeInsets.all(15),
                        height: MediaQuery.of(context).size.height / 3,
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Создать',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: const Icon(Icons.close))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          if (kIsWeb == false)
                            GestureDetector(
                              onTap: () {
                                var route = CupertinoPageRoute(
                                    builder: (context) => const VideoCreate());
                                Navigator.push(context, route);
                              },
                              child: Row(
                                children: [
                                  DecoratedBox(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Theme.of(context).primaryColor),
                                    child: const Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Icon(
                                        Icons.slideshow,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text('Создать историю')
                                ],
                              ),
                            ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              var route = CupertinoPageRoute(
                                  builder: (context) => const CreatePage());
                              Navigator.push(context, route);
                            },
                            child: Row(
                              children: [
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Theme.of(context).primaryColor),
                                  child: const Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Icon(
                                      Icons.add_box,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text('Создать публикацию')
                              ],
                            ),
                          )
                        ]),
                      ));
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, color: _selectedIndex == index ? primaryColor : grey),
              Text(
                title,
                style: TextStyle(
                    fontSize: 12,
                    color: _selectedIndex == index ? primaryColor : grey),
              ),
            ],
          ));
    }

    final List<dynamic> pagesBody = [
      {"title": 'Главная', "icon": Icons.storefront, "isTapable": true},
      if (kIsWeb == false)
        {"title": 'Историй', "icon": Icons.slideshow, "isTapable": true},
      {"title": 'Создать', "icon": Icons.add_box, "isTapable": false},
      {"title": 'Калькулятор', "icon": Icons.calculate, "isTapable": true},
      {"title": 'Карта', "icon": Icons.map, "isTapable": true}
    ];
    return SafeArea(
      child: Scaffold(
          body: PageView(
            pageSnapping: true,
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            onPageChanged: onPageChanged,
            children: pages,
          ),
          bottomNavigationBar: SizedBox(
            height: 60,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: pagesBody.asMap().entries.map((entry) {
                  int index = entry.key;
                  var val = entry.value;
                  print(entry);
                  return buildItem(
                      index, val['title'], val['icon'], val['isTapable']);
                }).toList()),
          )),
    );
  }
}

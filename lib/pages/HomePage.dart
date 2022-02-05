import 'package:barinsatu/ads/bloc/ad_bloc.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/authentication/bloc/auth_bloc.dart';
import 'package:barinsatu/authentication/repositories/auth_repo.dart';
// import 'package:barinsatu/pages/LoginPage.dart';
import 'package:barinsatu/pages/MainPage.dart';
import 'package:barinsatu/pages/Map.dart';
import 'package:barinsatu/pages/VideoCreatePage.dart';
import 'package:barinsatu/pages/VideoPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'CreatePage.dart';

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
    context.read<AdBloc>().add(const AdEvent.fetch(offset: 0, adType: 2));
    print('init');
    super.initState();
  }

  int _selectedIndex = 0;

  final List<Widget> pages = const <Widget>[
    MainPage(),
    VideoPage(),
    CreatePage(),
    VideoCreate(),
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
    return SafeArea(
      child: Scaffold(
        body: PageView(
          controller: pageController,
          onPageChanged: onPageChanged,
          children: pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: Colors.black,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.other_houses),
              label: 'Главная',
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie_creation),
              label: 'История',
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box),
              label: 'Создать',
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.videocam),
              label: 'Создать историю',
              backgroundColor: Theme.of(context).primaryColor,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.map),
              label: 'Карта',
              backgroundColor: Theme.of(context).primaryColor,
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

import 'package:barinsatu/ads/bloc/ad_bloc.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/authentication/bloc/auth_bloc.dart';
import 'package:barinsatu/authentication/repositories/auth_repo.dart';
import 'package:barinsatu/pages/Calculator.dart';
// import 'package:barinsatu/pages/LoginPage.dart';
import 'package:barinsatu/pages/MainPage.dart';
import 'package:barinsatu/pages/Map.dart';
import 'package:barinsatu/pages/story/VideoCreatePage.dart';
import 'package:barinsatu/pages/story/VideoPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    // a();
    initializeDateFormatting();
    context.read<AuthBloc>().add(const AuthEvent.getUser());
    print('init');
    super.initState();
  }

  void a() async {
    var a = await DefaultCacheManager().emptyCache();
    print('deleted');
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
    return Scaffold(
      body: SafeArea(
        child: PageView(
          pageSnapping: true,
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: onPageChanged,
          children: pages,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        iconSize: 25,
        unselectedFontSize: 12,
        selectedFontSize: 12,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        enableFeedback: true,
        elevation: 1,
        showUnselectedLabels: true,
        unselectedItemColor: const Color.fromRGBO(95, 99, 104, 1),
        // backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront),
            label: 'Главная',
          ),
          if (kIsWeb == false)
            BottomNavigationBarItem(
              icon: Icon(Icons.slideshow),
              label: 'История',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'Создать',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Калькулятор',
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.map),
            label: 'Карта',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

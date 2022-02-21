// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:badges/badges.dart';
import 'package:barinsatu/ads/bloc/ad_bloc.dart';
import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/ads/widgets/AdCard.dart';
import 'package:barinsatu/authentication/bloc/auth_bloc.dart';
import 'package:barinsatu/authentication/models/user.dart' as UserModel;
import 'package:barinsatu/authentication/repositories/auth_repo.dart';
import 'package:barinsatu/pages/ad/AdDetailTypePage.dart';
import 'package:barinsatu/pages/ad/FilterPage.dart';
import 'package:barinsatu/pages/auth/NotificationPage.dart';
import 'package:barinsatu/pages/auth/ProfileView.dart';
import 'package:barinsatu/pages/auth/RegisterPage.dart';
import 'package:barinsatu/pages/auth/UsersPage.dart';
import 'package:barinsatu/pages/story/VideoCreatePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:core';
import 'package:intl/intl.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with AutomaticKeepAliveClientMixin {
  int offset = 5;
  int adType = 2;
  int? totalPages = 5;

  AuthRepo authRepo = AuthRepo();

  List<UserModel.Notification> notications = [];

  getNotitcations() async {
    try {
      List<UserModel.Notification> noticationsRaw =
          await authRepo.getNotifications();
      setState(() {
        notications = noticationsRaw;
      });
    } catch (e) {
      print(e);
    }
  }

  int filterNotify(List<UserModel.Notification> notifications) {
    int length =
        notications.where((element) => element.is_readed == false).length;
    return length;
  }

  @override
  void initState() {
    getNotitcations();
    context.read<AdBloc>().add(const AdEvent.fetch(offset: 0, adType: 2));
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  AdRepo adRepo = AdRepo();

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    context.read<AdBloc>().add(AdEvent.fetch(offset: 0, adType: adType));
    offset = 5;
    setState(() {});
    getNotitcations();
    _refreshController.refreshCompleted();
    _refreshController.resetNoData();
  }

  void _onLoading() async {
    log('loading');
    if (totalPages! >= offset) {
      try {
        AdResponse ads = await adRepo.getAds(offset, adType: adType);
        context.read<AdBloc>().add(AdEvent.update(adsUpdate: ads.results));
        offset += 5;
        setState(() {});
      } catch (e) {
        print(e);
      }

      _refreshController.loadComplete();
    } else {
      _refreshController.loadNoData();
    }
  }

  @override
  Widget build(BuildContext context) {
    // final state = context.watch<AdBloc>().state;
    final userState = context.watch<AuthBloc>().state;

    String now = DateFormat("dd MMMM, yyyy", "Ru").format(DateTime.now());
    const EdgeInsets padding = EdgeInsets.symmetric(horizontal: 10);
    const SizedBox sizedBox = SizedBox(
      height: 20,
    );

    Widget profileImage(UserModel.User user) {
      if (user.avatar == null) {
        return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (context) => ProfileView(user: user)),
              );
            },
            child: Image.asset('assets/no-image.jpeg', fit: BoxFit.cover));
      }
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(builder: (context) => ProfileView(user: user)),
          );
        },
        child: Image.network(user.avatar.toString(), fit: BoxFit.cover),
      );
    }

    Widget MainPageTop() {
      return Padding(
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  userState.maybeWhen(
                    loaded: (userLoaded, msg) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: profileImage(userLoaded.user),
                        ),
                      ),
                    ),
                    orElse: () => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: Image.asset(
                            'assets/logo.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      userState.maybeWhen(
                          loaded: (userLoaded, msg) => GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                            ProfileView(user: userLoaded.user)),
                                  );
                                },
                                child: Text(
                                  userLoaded.user.name.toString(),
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                          orElse: () => const Text(
                                'Barinsatu',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              )),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(now, style: const TextStyle(fontSize: 16)),
                      )
                    ],
                  )
                ],
              ),
              userState.maybeWhen(
                loaded: (userLoaded, msg) => Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {
                      var route = CupertinoPageRoute(
                          builder: (context) => const NotificationPage());
                      Navigator.push(context, route);
                    },
                    child: Badge(
                      badgeContent: Text(
                        filterNotify(notications).toString(),
                        style: const TextStyle(color: Colors.white),
                      ),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.grey,
                        size: 36,
                      ),
                    ),
                  ),
                ),
                orElse: () => GestureDetector(
                  onTap: () {
                    var route = CupertinoPageRoute(
                        builder: (context) => const RegisterPage());
                    Navigator.push(context, route);
                  },
                  child: Icon(
                    Icons.login,
                    color: Theme.of(context).primaryColor,
                    size: 36,
                  ),
                ),
              ),
            ],
          ));
    }

    return SmartRefresher(
      controller: _refreshController,
      enablePullUp: true,
      physics: const BouncingScrollPhysics(),
      onRefresh: _onRefresh,
      onLoading: _onLoading,
      footer: CustomFooter(
        builder: (context, LoadStatus? mode) {
          Widget body;
          if (mode == LoadStatus.idle) {
            body = const Text("Потяните верх чтобы обновить");
          } else if (mode == LoadStatus.loading) {
            body = const CupertinoActivityIndicator();
          } else if (mode == LoadStatus.failed) {
            body = const Text("Что то пошло не так!");
          } else if (mode == LoadStatus.canLoading) {
            body = const Text("Данные загружается");
          } else {
            body = const Text("Нет данных для отображение");
          }

          return Container(
            height: 55,
            child: Center(child: body),
          );
        },
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBox,
          MainPageTop(),
          sizedBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: CupertinoSlidingSegmentedControl(
                    onValueChanged: (value) async {
                      setState(() {
                        adType = value as int;
                      });

                      context
                          .read<AdBloc>()
                          .add(AdEvent.fetch(offset: 0, adType: value as int));
                      offset = 5;
                    },
                    groupValue: adType,
                    children: const {
                      2: Padding(
                          padding: EdgeInsets.all(10), child: Text('Продажа')),
                      1: Padding(
                        child: Text('Аренда'),
                        padding: EdgeInsets.all(10),
                      )
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: ElevatedButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Фильтр'),
                  Icon(Icons.filter_list),
                ],
              ),
              onPressed: navigateFilterPage,
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Объекты',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 0, left: 2, right: 10),
              child: SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ItemCard(
                        type: 0,
                        name: 'Дома',
                        icon: Icons.home_work,
                        backgrounImage: 'assets/icons/dom.jpeg',
                        id: 1,
                        color: Theme.of(context).primaryColor),
                    const ItemCard(
                        type: 0,
                        name: 'Квартиры',
                        backgrounImage: 'assets/icons/kvartira.jpeg',
                        icon: Icons.apartment,
                        id: 3,
                        color: Color.fromRGBO(194, 100, 145, 1)),
                    const ItemCard(
                        type: 0,
                        name: 'Участки',
                        icon: Icons.foundation,
                        backgrounImage: 'assets/icons/uchastok.jpeg',
                        id: 2,
                        color: Color.fromRGBO(133, 109, 185, 1)),
                  ],
                ),
              )),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Специалисты',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 0, left: 2, right: 10),
              child: SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const ItemCard(
                        type: 1,
                        name: 'Риэлторы',
                        backgrounImage: 'assets/icons/realtor.jpeg',
                        id: 2,
                        color: Color.fromRGBO(89, 116, 185, 1)),
                    const ItemCard(
                        type: 1,
                        name: 'Застройщики',
                        backgrounImage: 'assets/icons/zastroi.jpeg',
                        icon: Icons.engineering,
                        id: 3,
                        color: Color.fromRGBO(194, 100, 145, 1)),
                    const ItemCard(
                        type: 1,
                        name: 'Оценщики',
                        backgrounImage: 'assets/icons/ocencik.jpeg',
                        icon: Icons.hail,
                        id: 4,
                        color: Color.fromRGBO(133, 109, 185, 1)),
                    ItemCard(
                        type: 1,
                        name: 'Нотариусы',
                        backgrounImage: 'assets/icons/notarius.jpeg',
                        icon: Icons.group,
                        id: 5,
                        color: Theme.of(context).primaryColor),
                  ],
                ),
              )),
          sizedBox,
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Последние объявления',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<AdBloc, AdState>(
            builder: (context, state) {
              log('changed');
              return state.maybeWhen(
                  orElse: () {
                    return Container();
                  },
                  loading: () {
                    return const Center(
                      child: CupertinoActivityIndicator(),
                    );
                  },
                  loaded: (adLoaded) {
                    totalPages = adLoaded.count;
                    return ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 20,
                      ),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        Ad item = adLoaded.results[index];
                        return AdCard(item: item);
                      },
                      itemCount: adLoaded.results.length,
                    );
                  },
                  error: () => Center(
                        child: Expanded(
                          child: Column(
                            children: [
                              const Text('Проверьте сеть интернет'),
                              Image.asset('assets/error.png')
                            ],
                          ),
                        ),
                      ));
            },
          ),
        ],
      ),
    );
  }

  void navigateFilterPage() {
    var newRoute = CupertinoPageRoute(builder: (context) => const FilterPage());
    Navigator.push(context, newRoute);
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard(
      {Key? key,
      this.backgrounImage,
      required this.name,
      this.icon,
      required this.id,
      this.color,
      required this.type})
      : super(key: key);

  final IconData? icon;
  final String? backgrounImage;
  final String name;
  final Color? color;
  final int id;
  final int type;

  @override
  Widget build(BuildContext context) {
    void navigate() {
      if (type == 0) {
        var route = CupertinoPageRoute(
            builder: (context) => AdDetailTypePage(
                  typeId: id,
                ));
        Navigator.push(context, route);
      } else {
        var route = CupertinoPageRoute(
            builder: (context) => UsersPage(
                  userType: id,
                ));
        Navigator.push(context, route);
      }
    }

    return TextButton(
      onPressed: navigate,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Container(
          width: 120,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(backgrounImage ?? "assets/no-image.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              SizedBox(
                  height: 150,
                  width: 120,
                  child: DecoratedBox(
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.2)),
                  )),
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black.withOpacity(0.5),
                      offset: const Offset(3.0, 3.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

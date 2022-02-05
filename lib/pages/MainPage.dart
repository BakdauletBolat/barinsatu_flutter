import 'dart:developer';

import 'package:barinsatu/ads/bloc/ad_bloc.dart';
import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/ads/widgets/AdCard.dart';
import 'package:barinsatu/authentication/bloc/auth_bloc.dart';
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
  late int totalPages;

  @override
  void initState() {
    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  AdRepo adRepo = AdRepo();

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  ScrollController scrollController = ScrollController();

  void _onRefresh() async {
    context.read<AdBloc>().add(AdEvent.fetch(offset: 0, adType: adType));
    offset = 5;
    setState(() {});
    _refreshController.refreshCompleted();
    _refreshController.resetNoData();
  }

  void _onLoading() async {
    log('loading');
    if (totalPages >= offset) {
      AdResponse ads = await adRepo.getAds(offset, adType: adType);
      context.read<AdBloc>().add(AdEvent.update(adsUpdate: ads.results));
      offset += 5;
      setState(() {});
      _refreshController.loadComplete();
    } else {
      _refreshController.loadNoData();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AdBloc>().state;
    final userState = context.watch<AuthBloc>().state;

    String now = DateFormat("D MMMM, yyyy", "Ru").format(DateTime.now());
    const EdgeInsets padding = EdgeInsets.symmetric(horizontal: 28);
    const SizedBox sizedBox = SizedBox(
      height: 20,
    );

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
                          child: Image.network(
                              userLoaded.user.avatar.toString(),
                              fit: BoxFit.cover),
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
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      userState.maybeWhen(
                          loaded: (userLoaded, msg) => Text(
                                'Привет, ' + userLoaded.user.name.toString(),
                                style: const TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                          orElse: () => const Text(
                                'Привет',
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
                loaded: (userLoaded, msg) => const Icon(
                  Icons.notifications,
                  color: Colors.grey,
                  size: 36,
                ),
                orElse: () => const Icon(
                  Icons.notification_add,
                  size: 36,
                ),
              ),
            ],
          ));
    }

    return SmartRefresher(
      controller: _refreshController,
      enablePullUp: true,
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
      child: SingleChildScrollView(
        // controller: scrollController,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            sizedBox,
            MainPageTop(),
            sizedBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(
                children: [
                  Expanded(
                    child: CupertinoSlidingSegmentedControl(
                      onValueChanged: (value) async {
                        setState(() {
                          adType = value as int;
                        });

                        context.read<AdBloc>().add(
                            AdEvent.fetch(offset: 0, adType: value as int));
                        offset = 5;
                      },
                      groupValue: adType,
                      children: const {
                        2: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text('Продажа')),
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
              padding: const EdgeInsets.only(top: 10, left: 28, right: 28),
              child: ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Фильтр'),
                    Icon(Icons.filter_list),
                  ],
                ),
                onPressed: showFilterScreen,
              ),
            ),
            sizedBox,
            state.when(
                loading: () {
                  return const Center(
                    child: CupertinoActivityIndicator(),
                  );
                },
                loaded: (adLoaded) {
                  totalPages = adLoaded.count;
                  return Flexible(
                    child: ListView.separated(
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
                    ),
                  );
                },
                error: () => Center(
                      child: Column(
                        children: [
                          ElevatedButton(onPressed: () {}, child: Text('dlcik'))
                        ],
                      ),
                    )),
          ],
        ),
      ),
    );
  }

  void showFilterScreen() {
    showBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height - 200,
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text('Modal BottomSheet'),
                ElevatedButton(
                  child: const Text('Close BottomSheet'),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

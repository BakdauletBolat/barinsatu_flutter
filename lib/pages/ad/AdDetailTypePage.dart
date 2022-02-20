import 'dart:developer';

import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/ads/widgets/AdCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AdDetailTypePage extends StatefulWidget {
  const AdDetailTypePage({Key? key, required this.typeId}) : super(key: key);

  final int typeId;

  @override
  _AdDetailTypePageState createState() => _AdDetailTypePageState();
}

class _AdDetailTypePageState extends State<AdDetailTypePage> {
  List<Ad> listAd = [];

  int offset = 5;
  int? totalPages = 5;
  bool isLoading = false;

  AdRepo adRepo = AdRepo();

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    setState(() {
      isLoading = true;
    });
    AdResponse ads = await adRepo.getAds(0, adDetailType: widget.typeId);
    listAd = ads.results;
    offset = 5;
    isLoading = false;
    setState(() {});
    _refreshController.refreshCompleted();
    _refreshController.resetNoData();
  }

  void _onLoading() async {
    log('loading');
    if (totalPages! >= offset) {
      try {
        AdResponse ads =
            await adRepo.getAds(offset, adDetailType: widget.typeId);

        setState(() {
          listAd = [...listAd, ...ads.results];
        });

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

  void getAds() async {
    setState(() {
      isLoading = true;
    });
    AdResponse ads = await adRepo.getAds(0, adDetailType: widget.typeId);
    setState(() {
      listAd = ads.results;
      isLoading = false;
    });
  }

  @override
  void initState() {
    getAds();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String title = '';
    if (widget.typeId == 1) {
      title = 'Дома';
    } else if (widget.typeId == 2) {
      title = 'Участки';
    } else if (widget.typeId == 3) {
      title = 'Квартиры';
    }

    Widget buildLoader() {
      if (isLoading) {
        return const Center(
          child: CupertinoActivityIndicator(),
        );
      }
      if (listAd.isEmpty) {
        return const Center(
          child: Text('Ничего не найдено'),
        );
      }
      return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          Ad item = listAd[index];
          return AdCard(item: item);
        },
        itemCount: listAd.length,
      );
    }

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(title),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 10),
          child: SmartRefresher(
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
              child: buildLoader()),
        ));
  }
}

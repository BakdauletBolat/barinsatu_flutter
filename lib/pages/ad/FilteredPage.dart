import 'dart:developer';

import 'package:barinsatu/ads/bloc/filter_ad_bloc.dart';
import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/ads/widgets/AdCard.dart';
import 'package:barinsatu/pages/ad/FilterPage.dart' as F;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/src/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class FilteredPage extends StatefulWidget {
  const FilteredPage({Key? key, required this.data}) : super(key: key);

  final F.FilterData data;

  @override
  _FilteredPageState createState() => _FilteredPageState();
}

class _FilteredPageState extends State<FilteredPage> {
  int offset = 5;
  int? totalPages = 5;

  final AdRepo adRepo = AdRepo();

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  void _onRefresh() async {
    context
        .read<FilterAdBloc>()
        .add(FilterAdEvent.filterAdsFetch(offset: 0, data: widget.data));
    offset = 5;
    setState(() {});
    _refreshController.refreshCompleted();
    _refreshController.resetNoData();
  }

  void _onLoading() async {
    log('loading');
    if (totalPages! >= offset) {
      try {
        AdResponse ads =
            await adRepo.getFilteredAds(offset: offset, data: widget.data);
        context
            .read<FilterAdBloc>()
            .add(FilterAdEvent.filterAdsUpdate(adsUpdate: ads.results));
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
  void initState() {
    _onRefresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Фильтр'),
        foregroundColor: Theme.of(context).primaryColor,
      ),
      body: SmartRefresher(
        controller: _refreshController,
        enablePullUp: true,
        physics: BouncingScrollPhysics(),
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
          children: [
            BlocBuilder<FilterAdBloc, FilterAdState>(
              builder: (context, state) {
                log('changed');
                return state.maybeWhen(
                    orElse: () {
                      return Container(
                        child: const Center(
                          child: Text('Ничего не найдено'),
                        ),
                      );
                    },
                    loading: () {
                      return const Center(
                        child: CupertinoActivityIndicator(),
                      );
                    },
                    filterAdsLoaded: (adLoaded) {
                      if (adLoaded.results.isEmpty) {
                        Container(
                          child: const Center(
                            child: Text('Ничего не найдено'),
                          ),
                        );
                      }
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
                                Text('Проверьте сеть интернет'),
                                Image.asset('assets/error.png')
                              ],
                            ),
                          ),
                        ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

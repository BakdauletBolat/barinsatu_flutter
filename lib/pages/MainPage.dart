import 'package:barinsatu/ads/bloc/ad_bloc.dart';
import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/widgets/AdCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    context.read<AdBloc>().add(const AdEvent.fetch(offset: 5));
    super.initState();
  }

  void _upd() {
    const Ad ad = Ad(
        id: 1, title: "adasd", description: "adasd", price: 1313, images: []);
    context.read<AdBloc>().add(const AdEvent.update(adUpdate: ad));
    print('ip');
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<AdBloc>().state;

    final EdgeInsets padding = EdgeInsets.symmetric(horizontal: 28);

    const SizedBox sizedBox = SizedBox(
      height: 20,
    );

    return Column(
      children: [
        sizedBox,
        Padding(
          padding: padding,
          child: const CupertinoSearchTextField(),
        ),
        sizedBox,
        Expanded(
          child: state.when(
              loading: () {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              },
              loaded: (adLoaded) {
                return Column(
                  children: [
                    ElevatedButton(onPressed: _upd, child: Text('dlcik')),
                    Expanded(
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 20,
                        ),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          Ad item = adLoaded[index];
                          return AdCard(item: item);
                        },
                        itemCount: adLoaded.length,
                      ),
                    ),
                  ],
                );
              },
              error: () => Center(
                    child: Column(
                      children: [
                        ElevatedButton(onPressed: _upd, child: Text('dlcik'))
                      ],
                    ),
                  )),
        ),
      ],
    );
  }
}

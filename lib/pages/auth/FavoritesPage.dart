import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/authentication/repositories/auth_repo.dart';
import 'package:barinsatu/pages/ad/DetailPage.dart';
import 'package:barinsatu/story/models/story.dart';
import 'package:barinsatu/story/widgets/VideoOneSingle.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key, required this.id}) : super(key: key);

  final int id;

  @override
  State<FavoritesPage> createState() => _AdMiniViewState();
}

class _AdMiniViewState extends State<FavoritesPage> {
  List<Ad> ads = [];

  getFavorites() async {
    AuthRepo authRepo = AuthRepo();
    List<Ad> raw = await authRepo.getFavorites(widget.id);
    setState(() {
      ads = raw;
    });
  }

  @override
  void initState() {
    getFavorites();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Избранные'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 3.0,
          mainAxisSpacing: 3.0,
        ),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          Ad item = ads[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                    builder: (context) => DetailPage(
                          item: item,
                        )),
              );
            },
            child: MiniAd(ad: item),
          );
        },
        itemCount: ads.length,
      ),
    );
  }
}

class MiniAd extends StatelessWidget {
  const MiniAd({Key? key, required this.ad}) : super(key: key);

  final Ad ad;

  Widget buildImage() {
    if (ad.images.isEmpty) {
      return Image.asset('assets/no-image.jpeg');
    }
    return ExtendedImage.network(
      ad.images[0].image,
      width: 150,
      height: 150,
      fit: BoxFit.cover,
      cache: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildImage();
  }
}

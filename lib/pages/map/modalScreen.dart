import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/pages/ad/DetailPage.dart';
import 'package:barinsatu/pages/map/Place.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class AdMiniItem extends StatelessWidget {
  AdMiniItem({Key? key, required this.place}) : super(key: key);

  final Place place;
  final priceFormat = NumberFormat("#,##0", "en_US");

  void navigateToDetailsPage(context) async {
    AdRepo adRepo = AdRepo();
    Ad ad = await adRepo.getSingleAd(place.id);

    var route = CupertinoPageRoute(builder: (context) => DetailPage(item: ad));
    Navigator.push(context, route);
  }

  @override
  Widget build(BuildContext context) {
    Widget buildImage() {
      if (place.image != null) {
        return ExtendedImage.network(
          place.image!.image,
          width: 125,
          height: 125,
          fit: BoxFit.cover,
          cache: true,
        );
      } else {
        return SizedBox(
          width: 125,
          height: 125,
          child: Image.asset(
            'assets/no-image.jpeg',
            width: 125,
            height: 125,
            fit: BoxFit.cover,
          ),
        );
      }
    }

    return GestureDetector(
      onTap: () {
        navigateToDetailsPage(context);
      },
      child: Container(
          padding: const EdgeInsets.all(15),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(10, 0, 0, 0),
                    blurRadius: 8,
                    spreadRadius: 2)
              ]),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8), child: buildImage()),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      priceFormat.format(place.price) + ' т',
                      style: const TextStyle(
                          fontFamily: 'OpenSans',
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Text(
                        place.name,
                        style: const TextStyle(
                          fontFamily: 'OpenSans',
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

void showAsBottomSheet(List<Place> items, context) async {
  final result = await showSlidingBottomSheet(context, builder: (context) {
    return SlidingSheetDialog(
      elevation: 3,
      duration: const Duration(milliseconds: 300),
      cornerRadius: 16,
      snapSpec: const SnapSpec(
        snap: true,
        snappings: [0.4, 0.7, 1.0],
        positioning: SnapPositioning.relativeToAvailableSpace,
      ),
      builder: (context, state) {
        return SafeArea(
            child: Container(
                padding: const EdgeInsets.all(18),
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Публикаций',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                color: Theme.of(context).primaryColor,
                                fontSize: 16,
                                decoration: TextDecoration.none),
                          ),
                          Text(
                            items.length.toString(),
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                color: Theme.of(context).primaryColor,
                                fontSize: 16,
                                decoration: TextDecoration.none),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                        color: Color.fromARGB(40, 0, 0, 0),
                        indent: 10,
                      ),
                      shrinkWrap: true,
                      itemCount: items.length,
                      itemBuilder: (context, index) =>
                          AdMiniItem(place: items[index]),
                    ))
                  ],
                )));
      },
    );
  });
}

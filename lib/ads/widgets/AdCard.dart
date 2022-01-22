import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/pages/DetailPage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class AdCard extends StatelessWidget {
  AdCard({Key? key, required this.item}) : super(key: key);

  final Ad item;

  final priceFormat = new NumberFormat("#,##0", "en_US");

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(builder: (context) => DetailPage(item: item)),
        );
      },
      child: Container(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.symmetric(horizontal: 28),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.07),
                spreadRadius: 0,
                blurRadius: 6,
                offset: const Offset(0, 6), // changes position of shadow
              ),
            ],
            color: CupertinoColors.white,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          children: [
            SizedBox(
              height: 236,
              width: width,
              child: CachedNetworkImage(
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const CupertinoActivityIndicator(),
                  errorWidget: (context, url, error) =>
                      const Icon(CupertinoIcons.forward),
                  imageUrl: item.images.isNotEmpty
                      ? item.images[0].image
                      : 'http://via.placeholder.com/350x150'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 23, left: 20, right: 20, bottom: 26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('₸' + priceFormat.format(item.price),
                          style: const TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700)),
                      GestureDetector(
                          child: Icon(
                            CupertinoIcons.heart,
                            color: CupertinoColors.systemRed,
                          ),
                          onTap: () => {})
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 12),
                      child: Text(
                        item.title,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:barinsatu/ads/bloc/ad_bloc.dart';
import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/authentication/bloc/auth_bloc.dart';
import 'package:barinsatu/authentication/models/user.dart';
import 'package:barinsatu/pages/DetailPage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:provider/src/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// Import package
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:carousel_slider/carousel_slider.dart';

class AdCard extends StatefulWidget {
  AdCard({Key? key, required this.item}) : super(key: key);

  final Ad item;

  @override
  _AdCardState createState() => _AdCardState();
}

class _AdCardState extends State<AdCard> {
  final priceFormat = NumberFormat("#,##0", "en_US");
  int activeIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(horizontal: 28),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.07),
          spreadRadius: 0,
          blurRadius: 6,
          offset: const Offset(0, 6), // changes position of shadow
        ),
      ], color: CupertinoColors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Column(
            children: [
              if (widget.item.images.isNotEmpty)
                GestureDetector(
                  onTap: () {
                    print('tapped');
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => DetailPage(item: widget.item)),
                    );
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 236,
                        width: width,
                        child: CarouselSlider.builder(
                            itemCount: widget.item.images.length,
                            options: CarouselOptions(
                              height: 236,
                              viewportFraction: 1,
                              onPageChanged: (index, reason) => setState(() {
                                activeIndex = index;
                              }),
                            ),
                            itemBuilder: (context, index, realIndex) {
                              final Images urlImage = widget.item.images[index];
                              return buildImage(urlImage, index);
                            }),
                      ),
                      Positioned(
                        bottom: 15,
                        child: AnimatedSmoothIndicator(
                          activeIndex: activeIndex,
                          count: widget.item.images.length,
                          effect: ScrollingDotsEffect(
                              fixedCenter: true,
                              dotHeight: 10,
                              dotWidth: 10,
                              dotColor: const Color.fromRGBO(249, 249, 249, 1),
                              activeDotColor: Theme.of(context).primaryColor),
                        ),
                      ),
                      Positioned(
                          top: 15,
                          right: 15,
                          child: TextButton(
                            onPressed: () async {
                              context
                                  .read<AdBloc>()
                                  .add(AdEvent.likeAd(ad: widget.item.id));
                            },
                            child: BlocSelector<AuthBloc, AuthState,
                                AuthStateLoaded?>(
                              selector: (state) =>
                                  state.mapOrNull(loaded: (user) => user),
                              builder: (context, loadedUser) {
                                var contain = widget.item.likes.where(
                                    (element) =>
                                        element.user ==
                                        loadedUser!.userLoaded.user.id);
                                if (contain.isEmpty) {
                                  return const Icon(
                                    Icons.favorite_outline,
                                    size: 30,
                                  );
                                }
                                return const Icon(
                                  Icons.favorite,
                                  size: 30,
                                  color: Colors.red,
                                );
                              },
                            ),
                          ))
                    ],
                  ),
                )
              else
                GestureDetector(
                  onTap: () {
                    print('tapped');
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => DetailPage(item: widget.item)),
                    );
                  },
                  child: SizedBox(
                    height: 236,
                    width: width,
                    child: const Text('No Image'),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 23, left: 20, right: 20, bottom: 26),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: FaIcon(
                            FontAwesomeIcons.tenge,
                            size: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            priceFormat.format(widget.item.price),
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        if (widget.item.details?.total_area != null)
                          Text(priceFormat.format(widget.item.price /
                                  widget.item.details!.total_area) +
                              ' т за м²')
                      ],
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 7),
                        child: Text(
                          widget.item.location_text.toString(),
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        )),
                    Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Text(
                          widget.item.title,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
            child: Form(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(9),
                child: TextFormField(
                  style: const TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                    hintText: 'Оставить комментарий',
                    suffixIcon: TextButton(
                        onPressed: () {}, child: const Icon(Icons.send)),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    border: InputBorder.none,
                    fillColor: const Color.fromRGBO(249, 249, 249, 1),
                    filled: true,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildImage(Images urlImage, int index) => CachedNetworkImage(
      fit: BoxFit.cover,
      placeholder: (context, url) => const CupertinoActivityIndicator(),
      errorWidget: (context, url, error) => const Icon(CupertinoIcons.forward),
      imageUrl: urlImage.image.isNotEmpty
          ? urlImage.image
          : 'http://via.placeholder.com/350x150');
}

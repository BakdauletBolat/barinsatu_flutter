import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/authentication/models/user.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(62),
              child: Image.network(
                user.avatar.toString(),
                height: 62,
                width: 62,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name.toString() + " " + user.surname.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 21),
                ),
                Text(user.email)
              ],
            )
          ],
        ),
        Row(
          children: const [
            Icon(
              Icons.favorite_outline,
              size: 30,
            ),
            Icon(
              Icons.reply,
              size: 30,
            )
          ],
        )
      ],
    );
  }
}

class RectangleWithIcon extends StatelessWidget {
  const RectangleWithIcon(
      {Key? key,
      required this.icon,
      required this.placeholder,
      required this.title})
      : super(key: key);

  final IconData icon;
  final String placeholder;
  final dynamic title;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.07),
                spreadRadius: 0,
                blurRadius: 6,
                offset: const Offset(0, 6))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 35,
            color: Theme.of(context).primaryColor,
          ),
          const SizedBox(
            height: 12,
          ),
          Column(
            children: [
              Text(
                placeholder,
                style:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold))
            ],
          )
        ],
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key, required this.item}) : super(key: key);

  final Ad item;
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final priceFormat = NumberFormat("#,##0", "en_US");
  int activeIndex = 0;

  Widget buildDetails() {
    if (widget.item.ad_detail_type!.title == 'homedetail') {
      return GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        shrinkWrap: true,
        padding: const EdgeInsets.only(bottom: 10),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          RectangleWithIcon(
              icon: Icons.meeting_room,
              placeholder: 'Этажность',
              title: widget.item.details!.floor.toString()),
          RectangleWithIcon(
              icon: Icons.chair,
              placeholder: 'Количество комнат',
              title: widget.item.details!.numbers_room.toString()),
          RectangleWithIcon(
              icon: Icons.other_houses,
              placeholder: 'Общая площадь',
              title: widget.item.details!.total_area.toString() + ' сот.'),
          RectangleWithIcon(
              icon: Icons.calendar_today,
              placeholder: 'Дата постройки',
              title:
                  widget.item.details!.year_construction.toString() + ' год.'),
          RectangleWithIcon(
              icon: Icons.construction,
              placeholder: 'Тип ремонта',
              title: widget.item.details!.repair_type!.name.toString()),
          RectangleWithIcon(
              icon: Icons.house_siding,
              placeholder: 'Тип построение',
              title: widget.item.details!.building_type!.name.toString())
        ],
      );
    } else if (widget.item.ad_detail_type!.title == 'apartmentdetail') {
      return GridView.count(
        padding: const EdgeInsets.only(bottom: 10),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          RectangleWithIcon(
              icon: Icons.meeting_room,
              placeholder: 'Этаж',
              title: widget.item.details!.floor.toString() +
                  " из " +
                  widget.item.details!.total_floor.toString()),
          RectangleWithIcon(
              icon: Icons.chair,
              placeholder: 'Количество комнат',
              title: widget.item.details!.numbers_room.toString()),
          RectangleWithIcon(
              icon: Icons.other_houses,
              placeholder: 'Общая площадь',
              title: widget.item.details!.total_area.toString() + ' сот.'),
          RectangleWithIcon(
              icon: Icons.calendar_today,
              placeholder: 'Дата постройки',
              title:
                  widget.item.details!.year_construction.toString() + ' год.'),
          RectangleWithIcon(
              icon: Icons.construction,
              placeholder: 'Тип ремонта',
              title: widget.item.details!.repair_type!.name.toString()),
          RectangleWithIcon(
              icon: Icons.house_siding,
              placeholder: 'Тип построение',
              title: widget.item.details!.building_type!.name.toString())
        ],
      );
    } else if (widget.item.ad_detail_type!.title == 'areadetail') {
      return GridView.count(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.only(bottom: 10),
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          RectangleWithIcon(
              icon: Icons.other_houses,
              placeholder: 'Общая площадь',
              title: widget.item.details!.total_area.toString() + ' сот.'),
        ],
      );
    }

    return Container(
      child: Text(widget.item.ad_detail_type!.title.toString()),
    );
  }

  Widget buildImage(Images urlImage, int index) => CachedNetworkImage(
      fit: BoxFit.cover,
      width: double.infinity,
      height: 292,
      placeholder: (context, url) => const CupertinoActivityIndicator(),
      errorWidget: (context, url, error) => const Icon(CupertinoIcons.forward),
      imageUrl: urlImage.image.isNotEmpty
          ? urlImage.image
          : 'http://via.placeholder.com/350x150');

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Stack(
        children: [
          Scaffold(
            body: SingleChildScrollView(
              child: Container(
                  decoration: const BoxDecoration(color: CupertinoColors.white),
                  child: Column(
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                            child: CarouselSlider.builder(
                                itemCount: widget.item.images.length,
                                options: CarouselOptions(
                                  height: 300,
                                  viewportFraction: 1,
                                  onPageChanged: (index, reason) =>
                                      setState(() {
                                    activeIndex = index;
                                  }),
                                ),
                                itemBuilder: (context, index, realIndex) {
                                  final Images urlImage =
                                      widget.item.images[index];
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
                                  dotColor:
                                      const Color.fromRGBO(249, 249, 249, 1),
                                  activeDotColor:
                                      Theme.of(context).primaryColor),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 28, right: 28, top: 30, bottom: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UserView(user: widget.item.author!),
                            const SizedBox(
                              height: 35,
                            ),
                            Container(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  priceFormat.format(widget.item.price),
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const FaIcon(FontAwesomeIcons.tenge),
                              ],
                            )),
                            Text(widget.item.title.toString(),
                                style: const TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold)),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(widget.item.location_text.toString(),
                                style: const TextStyle(fontSize: 16)),
                            const SizedBox(
                              height: 35,
                            ),
                            buildDetails(),
                            const SizedBox(
                              height: 35,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
          Positioned(
            top: 28,
            left: 28,
            child: Center(
                child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            )),
          ),
        ],
      ),
    );
  }
}

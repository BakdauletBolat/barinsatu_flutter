import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/authentication/models/user.dart';
import 'package:barinsatu/authentication/repositories/auth_repo.dart';
import 'package:barinsatu/pages/Calculator.dart';
import 'package:barinsatu/pages/HomePage.dart';
import 'package:barinsatu/pages/auth/ProfileView.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    Widget buildImageProfile() {
      if (user.avatar != null) {
        return Image.network(
          user.avatar.toString(),
          height: 62,
          width: 62,
          fit: BoxFit.cover,
        );
      }
      return Image.asset(
        'assets/no-image.jpeg',
        height: 62,
        width: 62,
        fit: BoxFit.cover,
      );
    }

    return GestureDetector(
      onTap: () {
        var route =
            CupertinoPageRoute(builder: (context) => ProfileView(user: user));
        Navigator.push(context, route);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(62),
                  child: buildImageProfile()),
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
            children: [
              IconButton(
                onPressed: () {
                  print('tap');
                  launch("tel://${user.phone}");
                },
                icon: Icon(
                  Icons.call,
                  color: Theme.of(context).primaryColor,
                  size: 30,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class RectangleWithIcon extends StatelessWidget {
  const RectangleWithIcon(
      {Key? key,
      this.type,
      required this.icon,
      required this.placeholder,
      required this.title})
      : super(key: key);

  final IconData icon;
  final int? type;
  final String placeholder;
  final dynamic title;

  @override
  Widget build(BuildContext context) {
    double? fontSize = 20;

    if (type == 0) {
      fontSize = 12;
    }
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
                  style: TextStyle(
                      fontSize: fontSize, fontWeight: FontWeight.bold))
            ],
          )
        ],
      ),
    );
  }
}

class DetailPage extends StatefulWidget {
  DetailPage({Key? key, required this.item, this.isComplete}) : super(key: key);

  final Ad item;
  bool? isComplete = false;
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
              title: widget.item.details!.total_area_string),
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
              title: widget.item.details!.total_area_string),
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
              title: widget.item.details!.total_area_string),
          RectangleWithIcon(
              icon: Icons.other_houses,
              placeholder: 'Делимость',
              title: widget.item.details!.is_divisibility!
                  ? 'Делимый'
                  : 'Не делимый'),
          RectangleWithIcon(
              icon: Icons.other_houses,
              placeholder: 'В залоге',
              title: widget.item.details!.is_pledge! ? 'Да' : 'нет'),
          RectangleWithIcon(
              icon: Icons.other_houses,
              placeholder: 'Коммуникаций',
              type: 0,
              title: widget.item.details!.communications!
                  .map((item) => item.name)
                  .toString()),
        ],
      );
    }

    return Container(
      child: Text(widget.item.ad_detail_type!.title.toString()),
    );
  }

  Widget buildImage(Images urlImage, int index) => ExtendedImage.network(
        urlImage.image.isNotEmpty
            ? urlImage.image
            : 'http://via.placeholder.com/350x150',
        width: MediaQuery.of(context).size.width,
        height: 100,
        mode: ExtendedImageMode.gesture,
        initGestureConfigHandler: (state) {
          return GestureConfig(
            minScale: 0.9,
            animationMinScale: 0.7,
            maxScale: 3.0,
            animationMaxScale: 3.5,
            speed: 1.0,
            inertialSpeed: 100.0,
            initialScale: 1.0,
            inPageView: false,
            initialAlignment: InitialAlignment.center,
          );
        },
        fit: BoxFit.cover,
        cache: true,
      );

  Widget buildNotifications() {
    return GridView.count(
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      padding: const EdgeInsets.only(bottom: 10),
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        GestureDetector(
          onTap: () async {
            AuthRepo authRepo = AuthRepo();
            try {
              await authRepo.createNotifications(2);
              const snackBar = SnackBar(
                content: Text('Успешно отправлено'),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } catch (e) {
              const snackBar = SnackBar(
                content: Text('Что то пошло не так'),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              print('error');
            }
          },
          child: const RectangleWithIcon(
              icon: Icons.people,
              placeholder: 'Получить помощь',
              title: 'Риэлтор'),
        ),
        GestureDetector(
          onTap: () async {
            AuthRepo authRepo = AuthRepo();
            try {
              await authRepo.createNotifications(3);
              const snackBar = SnackBar(
                content: Text('Успешно отправлено'),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } catch (e) {
              const snackBar = SnackBar(
                content: Text('Что то пошло не так'),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              print('error');
            }
          },
          child: const RectangleWithIcon(
              icon: Icons.engineering,
              placeholder: 'Получить помощь',
              title: 'Застройщик'),
        ),
        GestureDetector(
          onTap: () async {
            AuthRepo authRepo = AuthRepo();
            try {
              await authRepo.createNotifications(4);
              const snackBar = SnackBar(
                content: Text('Успешно отправлено'),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } catch (e) {
              const snackBar = SnackBar(
                content: Text('Что то пошло не так'),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              print('error');
            }
          },
          child: const RectangleWithIcon(
              icon: Icons.hail,
              placeholder: 'Получить помощь',
              title: 'Оценщик'),
        ),
        GestureDetector(
          onTap: () async {
            AuthRepo authRepo = AuthRepo();
            try {
              await authRepo.createNotifications(5);
              const snackBar = SnackBar(
                content: Text('Успешно отправлено'),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } catch (e) {
              const snackBar = SnackBar(
                content: Text('Что то пошло не так'),
              );

              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              print('error');
            }
          },
          child: const RectangleWithIcon(
              icon: Icons.group,
              placeholder: 'Получить помощь',
              title: 'Нотариус'),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget isCompleteButton() {
      if (widget.isComplete == true) {
        var newRoute =
            CupertinoPageRoute(builder: (context) => const HomePage());
        return SizedBox(
          width: 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BackButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context, newRoute, (route) => false);
              },
            ),
          ),
        );
      }

      return const BackButton();
    }

    Marker? location;
    late GoogleMapController _controller;

    CameraPosition _kGooglePlex = const CameraPosition(
      target: LatLng(33, 67),
      zoom: 14.4746,
    );

    if (widget.item.lat != null) {
      location = Marker(
        markerId: const MarkerId('location'),
        infoWindow: const InfoWindow(title: 'location'),
        icon: BitmapDescriptor.defaultMarker,
        position: LatLng(widget.item.lat!, widget.item.lng!),
      );

      _kGooglePlex = CameraPosition(
        target: LatLng(widget.item.lat!, widget.item.lng!),
        zoom: 14.4746,
      );
    }

    Widget buildGoogleMap() {
      return ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: GoogleMap(
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller = controller;
          },
          markers: {
            if (location != null) location,
          },
          scrollGesturesEnabled: false,
          rotateGesturesEnabled: false,
          myLocationButtonEnabled: false,
          mapType: MapType.normal,
        ),
      );
    }

    Color isComplete() {
      if (widget.isComplete != null) {
        if (widget.isComplete! == true) {
          return Theme.of(context).primaryColor;
        } else {
          return Colors.transparent;
        }
      }
      return Colors.transparent;
    }

    Widget showModal(List<Images> images, int index) {
      return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          decoration: const BoxDecoration(color: Colors.black),
          child: Center(
              child: PageView.builder(
                  itemCount: images.length,
                  controller: PageController(initialPage: index),
                  itemBuilder: (context, index) {
                    Images image = images[index];
                    return ExtendedImage.network(
                      image.image.isNotEmpty
                          ? image.image
                          : 'http://via.placeholder.com/350x150',
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      mode: ExtendedImageMode.gesture,
                      initGestureConfigHandler: (state) {
                        return GestureConfig(
                          minScale: 0.9,
                          animationMinScale: 0.7,
                          maxScale: 3.0,
                          animationMaxScale: 3.5,
                          speed: 1.0,
                          inertialSpeed: 100.0,
                          initialScale: 1.0,
                          inPageView: false,
                          initialAlignment: InitialAlignment.center,
                        );
                      },
                      fit: BoxFit.contain,
                      cache: true,
                    );
                  })),
        ),
      );
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // leadingWidth: 100,
        elevation: 0,

        leading: isCompleteButton(),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
            decoration: const BoxDecoration(color: CupertinoColors.white),
            child: Column(
              children: [
                if (widget.item.images.isNotEmpty)
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
                              onPageChanged: (index, reason) => setState(() {
                                activeIndex = index;
                              }),
                            ),
                            itemBuilder: (context, index, realIndex) {
                              final Images urlImage = widget.item.images[index];
                              return GestureDetector(
                                  onTap: () {
                                    var route = CupertinoPageRoute(
                                        builder: (context) => showModal(
                                            widget.item.images, index));
                                    Navigator.push(context, route);
                                  },
                                  child: buildImage(urlImage, index));
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
                      )
                    ],
                  )
                else
                  const SizedBox(
                    height: 45,
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
                                fontSize: 30, fontWeight: FontWeight.w900),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const FaIcon(FontAwesomeIcons.tenge),
                        ],
                      )),
                      Text(widget.item.title.toString(),
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(widget.item.location_text.toString(),
                          style: const TextStyle(fontSize: 14)),
                      const SizedBox(
                        height: 35,
                      ),
                      buildDetails(),
                      const SizedBox(
                        height: 35,
                      ),
                      const Text(
                        'Описание',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(widget.item.description),
                      const SizedBox(
                        height: 35,
                      ),
                      SizedBox(height: 300, child: buildGoogleMap()),
                      const SizedBox(
                        height: 35,
                      ),
                      buildNotifications(),
                      const SizedBox(
                        height: 35,
                      ),
                      CalculatorObject(
                        price: double.parse(widget.item.price.toString()),
                      )
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}

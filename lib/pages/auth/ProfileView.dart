import 'dart:developer';

import 'package:barinsatu/ads/bloc/ad_bloc.dart';
import 'package:barinsatu/ads/bloc/user_ad_bloc.dart';
import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/ads/widgets/AdCard.dart';
import 'package:barinsatu/authentication/bloc/auth_bloc.dart';
import 'package:barinsatu/authentication/models/user.dart';
import 'package:barinsatu/authentication/repositories/auth_repo.dart';
import 'package:barinsatu/pages/HomePage.dart';
import 'package:barinsatu/pages/ad/DetailPage.dart';
import 'package:barinsatu/utils/DateFormatter.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/src/provider.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final GlobalKey _widgetKey = GlobalKey();

  double rating = 3;
  TextEditingController ratingTextController = TextEditingController();

  Widget buildImage() {
    if (widget.user.avatar != null) {
      return ExtendedImage.network(
        widget.user.avatar!,
        width: 150,
        height: 150,
        fit: BoxFit.cover,
        cache: true,
      );
    } else {
      return SizedBox(
        width: 150,
        height: 150,
        child: Image.asset(
          'assets/no-image.jpeg',
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ),
      );
    }
  }

  Widget buildUserType() {
    if (widget.user.user_type != null) {
      return Text(widget.user.user_type!.name!,
          style: const TextStyle(fontSize: 12));
    } else {
      return const Text('Нет данных', style: TextStyle(fontSize: 12));
    }
  }

  Widget buildTop() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(150),
            child: buildImage(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              widget.user.email,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: buildUserType(),
          )
        ],
      ),
    );
  }

  Widget buildAbout() {
    late Widget aboutText;

    if (widget.user.about != null) {
      aboutText = Text(widget.user.about!);
    } else {
      aboutText = const Text('Сведений нет');
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'О пользователе',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          aboutText
        ],
      ),
    );
  }

  Widget buildActionButtonOptions() {
    final primaryColor = Theme.of(context).primaryColor;
    AuthState state = context.watch<AuthBloc>().state;
    Widget icon = Container();
    state.maybeWhen(loaded: (userLoaded, msg) {
      if (userLoaded.user.id == widget.user.id) {
        icon = IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: primaryColor,
              size: 24,
            ));
      } else {
        icon = Container();
      }
    }, orElse: () {
      icon = Container();
    });

    return icon;
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Выход из системы'),
          content: SingleChildScrollView(
            child: ListBody(
              children: const <Widget>[
                Text('Вы точно хотите выйти ?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Да'),
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.logoutUser());
                var route =
                    CupertinoPageRoute(builder: (context) => const HomePage());
                Navigator.push(context, route);
              },
            ),
            TextButton(
              child: const Text('Нет'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showRateDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) => AlertDialog(
            title: const Text('Ваша оценка'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                      'Насколько вы хотите оценить ${widget.user.email.toString()} ?'),
                  const SizedBox(
                    height: 10,
                  ),
                  RatingBar.builder(
                    initialRating: rating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (value) {
                      setState(() {
                        rating = value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('${rating.toString()} из 5'),
                  TextField(
                    controller: ratingTextController,
                    decoration: const InputDecoration(labelText: 'Отзыв'),
                  )
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Оценить'),
                onPressed: () async {
                  AuthRepo authRepo = AuthRepo();
                  String text = ratingTextController.text;
                  print(rating);
                  if (text.isNotEmpty && text != '') {
                    SnackBar snackBar;
                    if (rating.runtimeType == double) {
                      print('yes');
                    }
                    Map<String, dynamic> body = {
                      'ball': rating,
                      'user_id': widget.user.id,
                      'text': text.toString()
                    };

                    print(body);

                    Rating ratingModel = await authRepo.createRate(body);
                    try {
                      snackBar = const SnackBar(content: Text('Успешно'));
                    } catch (e) {
                      snackBar = const SnackBar(content: Text('Что то так'));
                    }

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);

                    Navigator.pop(context);
                  } else {
                    const snackBar = SnackBar(content: Text('Напишите текст'));

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
              ),
              TextButton(
                child: const Text('Нет'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildActionButtonExit() {
    final primaryColor = Theme.of(context).primaryColor;
    AuthState state = context.watch<AuthBloc>().state;
    Widget icon = Container();
    state.maybeWhen(loaded: (userLoaded, msg) {
      if (userLoaded.user.id == widget.user.id) {
        icon = IconButton(
            onPressed: () {
              _showMyDialog();
            },
            icon: Icon(
              Icons.logout,
              color: primaryColor,
              size: 24,
            ));
      } else {
        icon = Container();
      }
    }, orElse: () {
      icon = Container();
    });

    return icon;
  }

  Widget buildRateButton() {
    final primaryColor = Theme.of(context).primaryColor;
    AuthState state = context.watch<AuthBloc>().state;
    Widget icon = Container();
    state.maybeWhen(loaded: (userLoaded, msg) {
      if (userLoaded.user.id == widget.user.id) {
        icon = Container();
      } else {
        icon = FloatingActionButton.extended(
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () {},
            label: TextButton(
                onPressed: _showRateDialog,
                child: Row(
                  children: const [
                    Text(
                      'Оставить отвыз',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.rate_review,
                      color: Colors.white,
                      size: 24,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )));
      }
    }, orElse: () {
      icon = Container();
    });

    return icon;
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          floatingActionButton: buildRateButton(),
          appBar: AppBar(
            elevation: 0,
            title: const Text('Кабинет'),
            foregroundColor: primaryColor,
            backgroundColor: Colors.white,
            actions: [
              buildActionButtonOptions(),
              buildActionButtonExit(),
            ],
          ),
          body: Container(
              decoration: const BoxDecoration(color: Colors.white),
              width: MediaQuery.of(context).size.width,
              child: NestedScrollView(
                physics: const NeverScrollableScrollPhysics(),
                headerSliverBuilder: (context, isScolled) {
                  return [
                    SliverAppBar(
                      backgroundColor: Colors.white,
                      expandedHeight: 250,
                      collapsedHeight: 250,
                      flexibleSpace: Column(
                        key: _widgetKey,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 28),
                            child: buildTop(),
                          ),
                        ],
                      ),
                    )
                  ];
                },
                body: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: TabBar(
                        labelPadding: const EdgeInsets.all(15),
                        indicatorColor: primaryColor,
                        tabs: const [
                          Text(
                            'Посты',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            'Рейтинги',
                            style: TextStyle(color: Colors.black),
                          ),
                          Text(
                            'О себе',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Text('Helo'),
                          AdMiniView(
                            user: widget.user,
                          ),
                          RatingsView(userId: widget.user.id),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Center(child: buildAbout()),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}

class RatingsView extends StatefulWidget {
  const RatingsView({Key? key, required this.userId}) : super(key: key);
  final int userId;
  @override
  _RatingsViewState createState() => _RatingsViewState();
}

class _RatingsViewState extends State<RatingsView> {
  List<Rating> ratings = [];
  DateFormatter dateFormatter = DateFormatter();

  getRatings() async {
    AuthRepo authRepo = AuthRepo();
    List<Rating> ratingsRow = await authRepo.getRatings(widget.userId);
    if (mounted) {
      setState(() {
        ratings = ratingsRow;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    getRatings();
    super.initState();
  }

  Widget buildRatings(Rating rating) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RatingBarIndicator(
            rating: rating.ball ?? 0,
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 15.0,
            direction: Axis.horizontal,
          ),
          const SizedBox(height: 5),
          Text(
            rating.text ?? 'Сведений нет',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  rating.author.avatar != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.network(
                            rating.author.avatar!,
                            fit: BoxFit.cover,
                            height: 25,
                            width: 25,
                          ),
                        )
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset(
                            'assets/no-image.jpeg',
                            fit: BoxFit.cover,
                            height: 25,
                            width: 25,
                          ),
                        ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    rating.author.email,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text(
                dateFormatter
                    .getVerboseDateTimeRepresentation(rating.created_at),
                style: const TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.all(20),
      child: ListView.builder(
          itemCount: ratings.length,
          itemBuilder: (context, index) => buildRatings(ratings[index])),
    );
  }
}

class AdMiniView extends StatefulWidget {
  const AdMiniView({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  _AdMiniViewState createState() => _AdMiniViewState();
}

class _AdMiniViewState extends State<AdMiniView> {
  int offset = 10;
  int totalPages = 5;

  AdRepo adRepo = AdRepo();

  @override
  void initState() {
    context
        .read<UserAdBloc>()
        .add(AdUserEvent.userAdsFetch(offset: 0, userId: widget.user.id));
    super.initState();
  }

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  ScrollController scrollController = ScrollController();

  void _onRefresh() async {
    context
        .read<UserAdBloc>()
        .add(AdUserEvent.userAdsFetch(offset: 0, userId: widget.user.id));
    offset = 10;
    setState(() {});
    _refreshController.refreshCompleted();
    _refreshController.resetNoData();
  }

  void _onLoading() async {
    log('loading');
    if (totalPages >= offset) {
      AdResponse ads =
          await adRepo.getAds(offset, userId: widget.user.id, limit: 10);
      context
          .read<UserAdBloc>()
          .add(AdUserEvent.userAdsUpdate(adsUpdate: ads.results));
      offset += 10;
      setState(() {});
      _refreshController.loadComplete();
    } else {
      _refreshController.loadNoData();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<UserAdBloc>().state;

    return SmartRefresher(
      controller: _refreshController,
      enablePullUp: true,
      physics: const NeverScrollableScrollPhysics(),
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
      child: Builder(builder: (context) {
        return state.maybeWhen(
          loading: () {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          },
          userAdsLoaded: (adLoaded) {
            totalPages = adLoaded.count;
            return GridView.builder(
              padding: const EdgeInsets.all(0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 3.0,
                mainAxisSpacing: 3.0,
              ),
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                Ad item = adLoaded.results[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => DetailPage(item: item)),
                    );
                  },
                  child: MiniAdCard(ad: item),
                );
              },
              itemCount: adLoaded.results.length,
            );
          },
          error: () => Center(
            child: Expanded(
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child:
                          const Text('Ошибка в обновлений перезагрузите посты'))
                ],
              ),
            ),
          ),
          orElse: () => Center(
            child: Expanded(
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: const Text('Критическая ошибка'))
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class MiniAdCard extends StatelessWidget {
  const MiniAdCard({Key? key, required this.ad}) : super(key: key);

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

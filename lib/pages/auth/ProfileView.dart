import 'dart:developer';
import 'package:barinsatu/ads/bloc/user_ad_bloc.dart';
import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/authentication/bloc/auth_bloc.dart';
import 'package:barinsatu/authentication/models/user.dart';
import 'package:barinsatu/authentication/repositories/auth_repo.dart';
import 'package:barinsatu/pages/HomePage.dart';
import 'package:barinsatu/pages/ad/DetailPage.dart';
import 'package:barinsatu/story/models/story.dart';
import 'package:barinsatu/story/repositories/story_repo.dart';
import 'package:barinsatu/story/widgets/Video.dart';
import 'package:barinsatu/story/widgets/VideoDetail.dart';
import 'package:barinsatu/story/widgets/VideoOneSingle.dart';
import 'package:barinsatu/utils/DateFormatter.dart';
import 'package:dio/dio.dart' as Dio;
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:image_picker/image_picker.dart';
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

  String? userImageUrl;

  changeProfilePicture() async {
    var _picker = ImagePicker();

    XFile? file = await _picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 80,
        maxHeight: 720,
        maxWidth: 1280);

    if (file == null) {
      return;
    }

    Dio.FormData formData = Dio.FormData.fromMap(
        {'avatar': await Dio.MultipartFile.fromFile(file.path)});

    try {
      AuthRepo authRepo = AuthRepo();
      User user = await authRepo.changeUserProfile(formData, widget.user.id);

      setState(() {
        userImageUrl = user.avatar;
      });

      context.read<AuthBloc>().add(const AuthEvent.getUser());

      const SnackBar snackBar =
          SnackBar(content: Text('Фотография успешно обновлена'));

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } catch (e) {
      print(e);
      const SnackBar snackBar =
          SnackBar(content: Text('Что то пошло не так, попробуйте заново!'));

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Widget buildEditImage() {
    Widget icon = Container();
    final primaryColor = Theme.of(context).primaryColor;
    AuthState state = context.watch<AuthBloc>().state;
    state.maybeWhen(loaded: (userLoaded, msg) {
      if (userLoaded.user.id == widget.user.id) {
        icon = Positioned(
          bottom: 0,
          right: 0,
          child: DecoratedBox(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(150)),
            child: IconButton(
                onPressed: changeProfilePicture,
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 24,
                )),
          ),
        );
      } else {
        icon = Positioned(
          top: 0,
          left: 0,
          child: Container(),
        );
      }
    }, orElse: () {
      icon = Positioned(
        top: 0,
        left: 0,
        child: Container(),
      );
    });

    return icon;
  }

  Widget buildImage() {
    if (userImageUrl != null) {
      return Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(150),
            child: ExtendedImage.network(
              userImageUrl!,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
              cache: true,
            ),
          ),
          buildEditImage()
        ],
      );
    } else {
      return Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(150),
            child: SizedBox(
              width: 150,
              height: 150,
              child: Image.asset(
                'assets/no-image.jpeg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ),
          buildEditImage()
        ],
      );
    }
  }

  Widget buildUserType() {
    if (widget.user.user_type != null) {
      return Text(widget.user.user_type!.name!,
          style: const TextStyle(fontSize: 14));
    } else {
      return const Text('Нет данных', style: TextStyle(fontSize: 14));
    }
  }

  double? ratingtoValue;

  getRatings() async {
    AuthRepo authRepo = AuthRepo();
    List<Rating> ratingsRow = await authRepo.getRatings(widget.user.id);
    num ball = 0;
    for (Rating rating in ratingsRow) {
      if (rating.ball != null) {
        ball += rating.ball!;
      }
    }

    setState(() {
      ratingtoValue = ball / ratingsRow.length;
    });
  }

  Widget buildPhone() {
    if (widget.user.phone != null) {
      return Text(widget.user.phone!);
    }

    return Container();
  }

  Widget buildTop() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildImage(),
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
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: buildPhone(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Column(children: [
              Text('${widget.user.ratings_count} отзывов'),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('(${ratingtoValue}) '),
                  RatingBarIndicator(
                    rating: ratingtoValue != null && !ratingtoValue!.isNaN
                        ? ratingtoValue!
                        : 0,
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 15.0,
                    direction: Axis.horizontal,
                  ),
                ],
              )
            ]),
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
  void initState() {
    getRatings();
    if (widget.user.avatar != null) {
      setState(() {
        userImageUrl = widget.user.avatar!;
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return DefaultTabController(
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
        body: SafeArea(
          child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              width: MediaQuery.of(context).size.width,
              child: NestedScrollView(
                physics: const NeverScrollableScrollPhysics(),
                headerSliverBuilder: (context, isScolled) {
                  return [
                    SliverAppBar(
                      backgroundColor: Colors.white,
                      expandedHeight: 330,
                      collapsedHeight: 330,
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
                          Text('Историй',
                              style: TextStyle(color: Colors.black)),
                          Text(
                            'Рейтинги',
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
                          StoryMiniView(authorId: widget.user.id),
                          RatingsView(
                            userId: widget.user.id,
                            aboutWidget: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Center(child: buildAbout()),
                            ),
                          ),
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
  const RatingsView({Key? key, required this.userId, required this.aboutWidget})
      : super(key: key);
  final int userId;
  final Widget aboutWidget;
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
                          child: ExtendedImage.network(
                            rating.author.avatar!,
                            fit: BoxFit.cover,
                            height: 25,
                            width: 25,
                            cache: true,
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
    return Column(children: [
      widget.aboutWidget,
      Expanded(
        child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.all(20),
            child: ListView.builder(
                itemCount: ratings.length,
                itemBuilder: (context, index) => buildRatings(ratings[index]))),
      ),
    ]);
  }
}

class StoryMiniView extends StatefulWidget {
  const StoryMiniView({Key? key, required this.authorId}) : super(key: key);

  final int authorId;

  @override
  State<StoryMiniView> createState() => _StoryMiniViewState();
}

class _StoryMiniViewState extends State<StoryMiniView> {
  List<Story> stories = [];

  getStories() async {
    StoryRepo storyRepo = StoryRepo();
    List<Story> raw = await storyRepo.getStories(authorId: widget.authorId);
    setState(() {
      stories = raw;
    });
  }

  @override
  void initState() {
    getStories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
        Story item = stories[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                  builder: (context) => VideoOneSingle(
                        story: item,
                      )),
            );
          },
          child: MiniAdStory(story: item),
        );
      },
      itemCount: stories.length,
    );
  }
}

class MiniAdStory extends StatelessWidget {
  const MiniAdStory({Key? key, required this.story}) : super(key: key);

  final Story story;

  Widget buildImage() {
    if (story.thumb == null) {
      return Image.asset('assets/no-image.jpeg');
    }

    return ExtendedImage.network(
      story.thumb!,
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

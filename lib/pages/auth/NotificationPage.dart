import 'dart:developer';

import 'package:barinsatu/authentication/repositories/auth_repo.dart';
import 'package:barinsatu/pages/auth/ProfileView.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:barinsatu/authentication/models/user.dart' as UserModel;
import 'package:url_launcher/url_launcher.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  AuthRepo authRepo = AuthRepo();

  List<UserModel.Notification> notications = [];
  bool isLoading = false;

  getNotitcations() async {
    setState(() {
      isLoading = true;
    });
    try {
      List<UserModel.Notification> noticationsRaw =
          await authRepo.getNotifications();
      print(noticationsRaw);
      setState(() {
        notications = noticationsRaw;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print(e);
    }
  }

  readAllNotifications() async {
    try {
      await authRepo.readAllNotifications();
    } catch (e) {
      print(e);
      log('error');
    }
  }

  @override
  void initState() {
    readAllNotifications();
    getNotitcations();

    super.initState();
  }

  Widget buildList() {
    if (isLoading) {
      return Center(
        child: Column(
          children: const [
            Text('Идет загрузка данных'),
            CupertinoActivityIndicator()
          ],
        ),
      );
    }
    if (notications.isEmpty) {
      return const Center(
        child: Text('Нет данных'),
      );
    }
    return ListView.builder(
      itemBuilder: (context, index) => buildNotifcationItem(
        notications[index],
      ),
      itemCount: notications.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          title: const Text('Уведомление'),
        ),
        body: Container(child: buildList()));
  }

  Widget buildImage(UserModel.User user) {
    if (user.avatar != null) {
      return ExtendedImage.network(
        user.avatar!,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
        cache: true,
      );
    } else {
      return SizedBox(
        width: 50,
        height: 50,
        child: Image.asset(
          'assets/no-image.jpeg',
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      );
    }
  }

  Widget buildNotifcationItem(UserModel.Notification notification) {
    return GestureDetector(
      onTap: () {
        var route = CupertinoPageRoute(
            builder: (context) => ProfileView(user: notification.author));
        Navigator.push(context, route);
      },
      child: Container(
          padding: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: buildImage(notification.author)),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 150,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 12),
                        child: RichText(
                          text: TextSpan(
                            text: 'Пользователь ',
                            style: Theme.of(context).textTheme.bodyText1,
                            children: <TextSpan>[
                              TextSpan(
                                  text: notification.author.email,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              const TextSpan(
                                  text:
                                      ' хочет чтобы вы помогли с выбором дома!'),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all<double>(0),
                      enableFeedback: true,
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(0))),
                  onPressed: () {
                    launch("tel://${notification.author.phone}");
                  },
                  child: const Icon(
                    Icons.phone,
                  ))
            ],
          )),
    );
  }
}

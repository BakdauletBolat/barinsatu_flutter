import 'package:barinsatu/authentication/models/user.dart';
import 'package:barinsatu/authentication/repositories/auth_repo.dart';
import 'package:barinsatu/pages/auth/ProfileView.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key, required this.userType}) : super(key: key);

  final int userType;

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  List<User> users = [];

  bool isLoading = false;

  getUsers() async {
    setState(() {
      isLoading = true;
    });
    AuthRepo authRepo = AuthRepo();
    try {
      List<User> usersRaw = await authRepo.getUsersByType(widget.userType);
      setState(() {
        users = usersRaw;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print(e);
    }
  }

  @override
  void initState() {
    getUsers();
    super.initState();
  }

  buildList() {
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
    if (users.isEmpty) {
      return const Center(
        child: Text('Нет данных'),
      );
    }
    return ListView.builder(
      itemBuilder: (context, index) => UserItem(
        user: users[index],
      ),
      itemCount: users.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Пользователи'),
        ),
        body: Container(child: buildList()));
  }
}

class UserItem extends StatelessWidget {
  const UserItem({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    Widget buildImage() {
      if (user.avatar != null) {
        return ExtendedImage.network(
          user.avatar!,
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
        var route =
            CupertinoPageRoute(builder: (context) => ProfileView(user: user));
        Navigator.push(context, route);
      },
      child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.white,
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8), child: buildImage()),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                      user.email,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                      user.name.toString() + " " + user.surname.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                      "(${user.ratings_count.toString()}) Отзывы",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

import 'package:barinsatu/ads/widgets/CreateStepAd.dart';
import 'package:barinsatu/ads/widgets/CustomTextField.dart';
import 'package:barinsatu/ads/widgets/Picker.dart';
import 'package:barinsatu/authentication/bloc/auth_bloc.dart';
import 'package:barinsatu/authentication/models/user.dart';
import 'package:barinsatu/authentication/repositories/auth_repo.dart';
import 'package:barinsatu/pages/HomePage.dart';
import 'package:barinsatu/pages/auth/ProfileView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/src/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class FormData {
  String? email = '';
  String? password = '';
  String? name = '';
  String? surname = '';
  String? about = '';
  int? user_type_id = 1;
  String? phone = '';

  toMap() {
    return {
      'email': email,
      'password': password,
      'name': name,
      'surname': surname,
      'about': about,
      'phone': phone,
      'user_type_id': user_type_id
    };
  }
}

class _RegisterPageState extends State<RegisterPage> {
  FormData formData = FormData();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var maskFormatter = MaskTextInputFormatter(
      mask: '+| (###) ###-##-##',
      filter: {"#": RegExp(r'[0-9]'), "|": RegExp(r'[7]')},
      type: MaskAutoCompletionType.lazy);
  List<UserType> _items = [];

  int selectedType = 0;

  setUserType(int index) {
    formData.user_type_id = _items[index].id;
    setState(() {
      selectedType = index;
    });
  }

  bool isLoading = false;

  getNetWorkData() async {
    AuthRepo authRepo = AuthRepo();
    List<UserType> _itemsRow = await authRepo.getUserTypes();

    setState(() {
      _items = _itemsRow;
    });
  }

  void navigateReplace(User user) {
    var newRoute = CupertinoPageRoute(builder: (context) => const HomePage());
    Navigator.pushAndRemoveUntil(context, newRoute, (route) => false);
  }

  @override
  void initState() {
    getNetWorkData();
    super.initState();
  }

  void submitForm() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });
      _formKey.currentState!.save();
      AuthRepo authRepo = AuthRepo();

      var data = formData.toMap();

      try {
        UserResponse userR = await authRepo.register(data);
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('userToken', userR.access.toString());
        context.read<AuthBloc>().add(const AuthEvent.getUser());
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            elevation: 0,
            behavior: SnackBarBehavior.floating,
            content: Text(
                'Успешная регистрация ✌ удачи в дальнейшей продажи домов')));

        Future.delayed(const Duration(seconds: 2));
        setState(() {
          isLoading = false;
        });
        navigateReplace(userR.user);
      } catch (e) {
        setState(() {
          isLoading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            elevation: 0,
            behavior: SnackBarBehavior.floating,
            content: Text(e.toString())));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0,
          title: const Text('Регистрация'),
          foregroundColor: Theme.of(context).primaryColor,
          backgroundColor: Colors.white),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          child: SingleChildScrollView(
              child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(28),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Номер телефона обязательно';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      formData.phone = maskFormatter.getMaskedText();
                    },
                    decoration: const InputDecoration(
                        labelText: 'Номер телефона',
                        hintText: '+ 7 (777) 994-77-64'),
                    inputFormatters: [maskFormatter],
                  ),
                  CustomTextField(
                    placeHolder: 'Имя',
                    onEditingComplete: () {
                      _formKey.currentState!.validate();
                    },
                    onSaved: (value) {
                      formData.name = value;
                    },
                    validation: false,
                  ),
                  CustomTextField(
                    placeHolder: 'Фамилия',
                    onEditingComplete: () {
                      _formKey.currentState!.validate();
                    },
                    onSaved: (value) {
                      formData.surname = value;
                    },
                    validation: false,
                  ),
                  CustomTextField(
                    placeHolder: 'Почта',
                    onEditingComplete: () {
                      _formKey.currentState!.validate();
                    },
                    onSaved: (value) {
                      formData.email = value;
                    },
                    validation: true,
                  ),
                  CustomTextField(
                    placeHolder: 'Пароль',
                    onEditingComplete: () {
                      _formKey.currentState!.validate();
                    },
                    onSaved: (value) {
                      formData.password = value;
                    },
                    validation: true,
                  ),
                  CustomTextField(
                    placeHolder: 'О себе',
                    onEditingComplete: () {
                      _formKey.currentState!.validate();
                    },
                    onSaved: (value) {
                      formData.about = value;
                    },
                    validation: false,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Picker(
                        title: 'Тип пользователя',
                        selectedValue: selectedType,
                        onSelectedItemChanged: setUserType,
                        items: _items),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Expanded(
                            child: ElevatedButton(
                                onPressed: submitForm,
                                style: ButtonStyle(
                                    backgroundColor: isLoading
                                        ? MaterialStateProperty.all(Colors.grey)
                                        : MaterialStateProperty.all(
                                            Theme.of(context).primaryColor)),
                                child: isLoading
                                    ? const Text('Ожидание')
                                    : const Text('Регистрация')))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}

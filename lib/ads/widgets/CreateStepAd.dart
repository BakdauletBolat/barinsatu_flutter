// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/models/myData.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/ads/widgets/Steps/Step3.dart';
import 'package:barinsatu/ads/widgets/Steps/Step4.dart';
import 'package:barinsatu/ads/widgets/steps/Step1.dart';
import 'package:barinsatu/pages/DoneScreen.dart';
import 'package:barinsatu/pages/HomePage.dart';
import 'package:barinsatu/pages/ad/DetailPage.dart';
import 'package:barinsatu/pages/auth/ProfileView.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/file.dart';

import 'Steps/Step2.dart';

class CreateStepAd extends StatefulWidget {
  const CreateStepAd({Key? key, required this.formKeys}) : super(key: key);

  final List<GlobalKey<FormState>> formKeys;

  @override
  _CreateStepAdState createState() => _CreateStepAdState();
}

class _CreateStepAdState extends State<CreateStepAd> {
  int _index = 0;
  int _slidingType = 2;
  int _slidingObject = 0;

  List<AdDetailType> adDetailTypes = [];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void getAdDetailTypes() async {
    AdRepo authRepo = AdRepo();
    final adTypes = await authRepo.getAdTypeDetail(5);

    if (mounted) {
      setState(() {
        adDetailTypes = adTypes;
      });
    }
  }

  void setAdDetailValue(int value) {
    data.ad_detail_type_id = adDetailTypes[value].id;
    setState(() {
      _slidingObject = value;
    });
  }

  @override
  void initState() {
    getAdDetailTypes();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  static MyData data = MyData();
  int selectedValue = 0;

  var dio = Dio();

  bool isLoading = false;

  void submitForm() async {
    if (widget.formKeys[3].currentState != null) {
      if (widget.formKeys[3].currentState!.validate()) {
        setState(() {
          isLoading = true;
        });

        widget.formKeys[3].currentState!.save();
        var mapped = data.toMap();
        AdRepo adRepo = AdRepo();

        for (var element in data.images) {
          mapped['images'].add(await MultipartFile.fromFile(element.path));
        }

        print(mapped);

        var formData = FormData.fromMap({...mapped});

        try {
          Ad ad = await adRepo.createAd(formData);
          data.clear();
          const snackBar = SnackBar(
            content: Text('Поздравляем с успешной загрузкой'),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Future.delayed(const Duration(seconds: 3));
          Navigator.pushAndRemoveUntil(
              context,
              CupertinoPageRoute(
                  builder: (context) => DoneScreen(
                        ad: ad,
                        // isComplete: true,
                      )),
              (route) => false);
          setState(() {
            isLoading = false;
          });
        } on DioError catch (e) {
          setState(() {
            isLoading = false;
          });
          if (e.response != null) {
            print(e.response?.data);
            print(e.response?.headers);
            print(e.response?.requestOptions);
          } else {
            // Something happened in setting up or sending the request that triggered an Error
            print(e.requestOptions);
            print(e.message);
          }
        }
      } else {
        setState(() {
          isLoading = false;
        });
        print('eror');
      }
    }
  }

  Widget buildSaveButton() {
    if (isLoading) {
      return ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.grey)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Ожидание',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 5,
                ),
                CupertinoActivityIndicator()
              ],
            ),
          ));
    }
    return Expanded(
        child: ElevatedButton(
      onPressed: submitForm,
      child: const Text('Опубликовать'),
    ));
  }

  VoidCallback? _onStepContinue;
  VoidCallback? _onStepCancel;

  Widget _createEventControlBuilder(context, btns) {
    _onStepContinue = btns.onStepContinue;
    _onStepCancel = btns.onStepCancel;
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    bool? isLastStep = _index == getSteps().length - 1;

    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Container(
          margin: const EdgeInsets.only(left: 28),
          width: MediaQuery.of(context).size.width,
          child: const Text(
            'Создание',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        Expanded(
          child: Stack(
            children: [
              Form(
                key: _formKey,
                child: Stepper(
                    elevation: 0,
                    type: StepperType.horizontal,
                    controlsBuilder: _createEventControlBuilder,
                    currentStep: _index,
                    onStepCancel: () {
                      if (_index > 0) {
                        setState(() {
                          _index -= 1;
                        });
                      }
                    },
                    onStepContinue: () {
                      if (widget.formKeys[_index].currentState!.validate()) {
                        if (!isLastStep) {
                          widget.formKeys[_index].currentState!.save();
                          setState(() {
                            _index += 1;
                          });
                        }
                      }
                    },
                    // onStepTapped: (int index) {
                    //   setState(() {
                    //     _index = index;
                    //   });
                    // },
                    steps: getSteps()),
              ),
              Positioned(
                bottom: 0,
                height: 80,
                width: MediaQuery.of(context).size.width,
                left: 0,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.white,
                  child: Row(
                    children: [
                      if (_index != 0)
                        Expanded(
                            child: TextButton(
                          onPressed: _onStepCancel,
                          child: const Text('НАЗАД'),
                        )),
                      if (isLastStep) buildSaveButton(),
                      if (!isLastStep)
                        Expanded(
                            child: ElevatedButton(
                          onPressed: _onStepContinue,
                          child: const Text('ДАЛЬШЕ'),
                        )),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  List<Step> getSteps() => [
        Step(
            isActive: _index >= 0,
            state: _index >= 1 ? StepState.complete : StepState.indexed,
            title: const Text(''),
            content: Step1(
              data: data,
              formKey: widget.formKeys[0],
              slidingType: _slidingType,
              slidingObject: _slidingObject,
              itemsObject: adDetailTypes,
              onValueChangedObject: (newValue) {
                setAdDetailValue(newValue!);
              },
              onValueChangedType: (newValue) => {
                data.ad_type_id = newValue,
                setState(() {
                  _slidingType = newValue as int;
                })
              },
            )),
        Step(
            isActive: _index >= 1,
            state: _index >= 2 ? StepState.complete : StepState.indexed,
            title: const Text(''),
            content: Step2(
              formKey: widget.formKeys[1],
              data: data,
            )),
        Step(
            isActive: _index >= 2,
            state: _index >= 3 ? StepState.complete : StepState.indexed,
            title: const Text(''),
            content: Step3(
              adType: _slidingObject,
              data: data,
              formKey: widget.formKeys[2],
            )),
        Step(
            isActive: _index >= 3,
            state: _index >= 4 ? StepState.complete : StepState.indexed,
            title: const Text(''),
            content: Step4(
              formKey: widget.formKeys[3],
              data: data,
            ))
      ];
}

// ignore_for_file: non_constant_identifier_names

import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/models/myData.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/ads/widgets/Steps/Step3.dart';
import 'package:barinsatu/ads/widgets/Steps/Step4.dart';
import 'package:barinsatu/ads/widgets/steps/Step1.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'Steps/Step2.dart';

List<GlobalKey<FormState>> formKeys = [
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>(),
  GlobalKey<FormState>()
];

class CreateStepAd extends StatefulWidget {
  const CreateStepAd({Key? key}) : super(key: key);

  @override
  _CreateStepAdState createState() => _CreateStepAdState();
}

class _CreateStepAdState extends State<CreateStepAd> {
  int _index = 0;
  int _slidingType = 1;
  int _slidingObject = 0;

  List<AdDetailType> adDetailTypes = [];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void getAdDetailTypes() async {
    AdRepo authRepo = AdRepo();
    final adTypes = await authRepo.getAdTypeDetail(5);

    if (this.mounted) {
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

  void submitForm() async {
    if (formKeys[3].currentState != null) {
      if (formKeys[3].currentState!.validate()) {
        formKeys[3].currentState!.save();
        var mapped = data.toMap();
        print(data.total_area);
        mapped.addAll(
          {
            'author_id': 1,
            'images': [
              await MultipartFile.fromFile(data.imagesPath),
            ]
          },
        );

        var formData = FormData.fromMap(mapped);
        print(mapped);
        // var response =
        //     await dio.post('http://172.20.10.3:8000/api/ad/', data: formData);

        // print(response.statusCode);
      } else {
        print('eror');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    bool? isLastStep = _index == getSteps().length - 1;

    return Column(
      children: [
        const SizedBox(
          height: 20,
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
          child: Form(
            key: _formKey,
            child: Stepper(
                elevation: 0,
                type: StepperType.horizontal,
                controlsBuilder: (context, btns) {
                  return Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: Row(
                      children: [
                        if (_index != 0)
                          Expanded(
                              child: TextButton(
                            onPressed: btns.onStepCancel,
                            child: const Text('НАЗАД'),
                          )),
                        const SizedBox(
                          width: 12,
                        ),
                        if (isLastStep)
                          Expanded(
                              child: ElevatedButton(
                            onPressed: submitForm,
                            child: const Text('Сохранить'),
                          )),
                        if (!isLastStep)
                          Expanded(
                              child: ElevatedButton(
                            onPressed: btns.onStepContinue,
                            child: const Text('ДАЛЬШЕ'),
                          )),
                      ],
                    ),
                  );
                },
                currentStep: _index,
                onStepCancel: () {
                  if (_index > 0) {
                    setState(() {
                      _index -= 1;
                    });
                  }
                },
                onStepContinue: () {
                  if (formKeys[_index].currentState!.validate()) {
                    if (!isLastStep) {
                      formKeys[_index].currentState!.save();
                      setState(() {
                        _index += 1;
                      });
                    }
                  }
                },
                onStepTapped: (int index) {
                  setState(() {
                    _index = index;
                  });
                },
                steps: getSteps()),
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
              formKey: formKeys[0],
              slidingType: _slidingType,
              slidingObject: _slidingObject,
              itemsObject: adDetailTypes,
              onValueChangedObject: (newValue) => {
                data.ad_detail_type_id = newValue,
                setState(() {
                  _slidingObject = newValue as int;
                })
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
              formKey: formKeys[1],
              data: data,
            )),
        Step(
            isActive: _index >= 2,
            state: _index >= 3 ? StepState.complete : StepState.indexed,
            title: const Text(''),
            content: Step3(
              adType: _slidingObject,
              data: data,
              formKey: formKeys[2],
            )),
        Step(
            isActive: _index >= 3,
            state: _index >= 4 ? StepState.complete : StepState.indexed,
            title: const Text(''),
            content: Step4(
              formKey: formKeys[3],
              data: data,
            ))
      ];
}

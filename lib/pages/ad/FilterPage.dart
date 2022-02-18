// ignore_for_file: non_constant_identifier_names

import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/ads/widgets/CustomTextField.dart';
import 'package:barinsatu/ads/widgets/Picker.dart';
import 'package:barinsatu/pages/ad/FilteredPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class FilterData {
  int? adType = 2;
  int? limit = 5;
  int? adDetailType = 1;
  int? buildingTypeHome = 1;
  int? repairTypeHome = 1;
  String? totalAreaHome;
  String? floorHome;
  String? numbersRoomHome;
  String? price_ot;
  String? price_do;

  int? buildingTypeAperment = 1;
  int? repairTypeAperment = 1;
  String? totalAreaAperment;
  String? floorAperment;
  String? numbersRoomAperment;

  bool? areadetail__is_divisibility = false;
  bool? areadetail__is_pledge = false;

  toMap() {
    return {
      'adType': adType,
      'price_ot': price_ot,
      'adDetailType': adDetailType,
      'limit': limit,
      'areadetail__is_divisibility': areadetail__is_divisibility,
      'areadetail__is_pledge': areadetail__is_pledge,
      'buildingTypeHome': buildingTypeHome,
      'repairTypeHome': repairTypeHome,
      'totalAreaHome': totalAreaHome,
      'floorHome': floorHome,
      'numbersRoomHome': numbersRoomHome,
      'buildingTypeAperment': buildingTypeAperment,
      'repairTypeAperment': repairTypeAperment,
      'totalAreaAperment': totalAreaAperment,
      'floorAperment': floorAperment,
      'numbersRoomAperment': numbersRoomAperment,
    };
  }
}

class _FilterPageState extends State<FilterPage> {
  FilterData data = FilterData();

  List<AdDetailType> adDetailTypes = [];
  List<BuildingType> buildingTypes = [];
  List<RepairType> repairTypes = [];

  int adDetailTypePicker = 0;
  int adTypePicker = 1;
  int buildingValue = 0;
  int repairValue = 0;

  void getNetWorkData() async {
    AdRepo authRepo = AdRepo();

    final buildingTypesRaw = await authRepo.getBuildingTypes();
    final repairTypesRaw = await authRepo.getRepairTypes();
    final adTypes = await authRepo.getAdTypeDetail(5);

    if (mounted) {
      setState(() {
        buildingTypes = buildingTypesRaw;
        repairTypes = repairTypesRaw;
        adDetailTypes = adTypes;
      });
    }
  }

  void setAdDetailValue(int value) {
    data.adDetailType = adDetailTypes[value].id;
    setState(() {
      adDetailTypePicker = value;
    });
  }

  void setRepairValue(int value) {
    if (data.adDetailType == 1) {
      data.repairTypeHome = repairTypes[value].id;
    } else if ((data.adDetailType == 3)) {
      data.repairTypeAperment = repairTypes[value].id;
    }

    setState(() {
      repairValue = value;
    });
  }

  void setBuildingValue(int value) {
    if (data.adDetailType == 1) {
      data.buildingTypeHome = buildingTypes[value].id;
    } else if ((data.adDetailType == 3)) {
      data.buildingTypeAperment = buildingTypes[value].id;
    }

    setState(() {
      buildingValue = value;
    });
  }

  @override
  void initState() {
    getNetWorkData();
    super.initState();
  }

  void submit() async {
    if (formKeyHome.currentState != null) {
      formKeyHome.currentState!.save();
    }
    if (formKeyAparment.currentState != null) {
      formKeyAparment.currentState!.save();
    }

    if (formKeyArea.currentState != null) {
      formKeyArea.currentState!.save();
    }

    if (formAll.currentState != null) {
      formAll.currentState!.save();
    }
    navigateToPage();
  }

  void navigateToPage() {
    var route = CupertinoPageRoute(
        builder: (context) => FilteredPage(
              data: data,
            ));

    Navigator.push(context, route);
  }

  GlobalKey<FormState> formAll = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Фильтр'),
        foregroundColor: Theme.of(context).primaryColor,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: CupertinoSlidingSegmentedControl(
                          onValueChanged: (value) {
                            data.adType = value as int;
                            setState(() {
                              adTypePicker = value;
                            });
                          },
                          groupValue: adTypePicker,
                          children: const {
                            1: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text('Аренда')),
                            2: Padding(
                              child: Text('Продажа'),
                              padding: EdgeInsets.all(10),
                            )
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: Form(
                      key: formAll,
                      child: Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                                placeHolder: 'Цена от ',
                                onEditingComplete: () =>
                                    formAll.currentState!.save(),
                                onSaved: (value) {
                                  if (value != '') {
                                    data.price_ot = value.toString();
                                  }
                                },
                                validation: false),
                          ),
                          Expanded(
                            child: CustomTextField(
                                placeHolder: 'До ',
                                onEditingComplete: () =>
                                    formAll.currentState!.save(),
                                onSaved: (value) {
                                  if (value != '') {
                                    data.price_do = value.toString();
                                  }
                                },
                                validation: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Picker(
                      onSelectedItemChanged: setAdDetailValue,
                      items: adDetailTypes,
                      title: 'Тип обьявлений',
                      selectedValue: adDetailTypePicker),
                  if (adDetailTypePicker == 0)
                    buildHomeFilter()
                  else if (adDetailTypePicker == 1)
                    buildAreaFilter()
                  else if (adDetailTypePicker == 2)
                    buildApartmentFilter(),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: ElevatedButton(
                              onPressed: submit,
                              child: const Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  'Готово',
                                  style: TextStyle(fontSize: 14),
                                ),
                              )),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  GlobalKey<FormState> formKeyArea = GlobalKey<FormState>();

  bool is_pledge = false;
  bool is_divisibility = false;

  Widget buildAreaFilter() {
    return Form(
      key: formKeyArea,
      child: Column(
        children: [
          CustomTextField(
              placeHolder: 'Общая площадь',
              onEditingComplete: () => formKeyHome.currentState!.save(),
              onSaved: (value) {
                if (value != '') {
                  String v = '1,' + value.toString();
                  data.totalAreaHome = v;
                }
              },
              validation: false),
          Row(
            children: <Widget>[
              //SizedBox
              const Text(
                'В залоге',
                style: TextStyle(fontSize: 14.0),
              ), //Text
              const SizedBox(width: 10), //SizedBox
              /** Checkbox Widget **/
              Checkbox(
                activeColor: Theme.of(context).primaryColor,
                value: is_pledge,
                onChanged: (bool? value) {
                  data.areadetail__is_pledge = value!;
                  setState(() {
                    is_pledge = value;
                  });
                },
              ), //Checkbox
            ], //<Widget>[]
          ),
          Row(
            children: <Widget>[
              //SizedBox
              const Text(
                'Делимость участка',
                style: TextStyle(fontSize: 14.0),
              ), //Text
              const SizedBox(width: 10), //SizedBox
              /** Checkbox Widget **/
              Checkbox(
                activeColor: Theme.of(context).primaryColor,
                value: is_divisibility,
                onChanged: (bool? value) {
                  data.areadetail__is_divisibility = value!;
                  setState(() {
                    is_divisibility = value;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  GlobalKey<FormState> formKeyHome = GlobalKey<FormState>();

  Widget buildHomeFilter() {
    return Form(
      key: formKeyHome,
      child: Column(
        children: [
          CustomTextField(
              placeHolder: 'Общая площадь',
              onEditingComplete: () => formKeyHome.currentState!.save(),
              onSaved: (value) {
                if (value != '') {
                  String v = '1,' + value.toString();
                  data.totalAreaHome = v;
                }
              },
              validation: false),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CustomTextField(
                      placeHolder: 'Этаж до',
                      onEditingComplete: () => formKeyHome.currentState!.save(),
                      onSaved: (value) {
                        if (value != '') {
                          String v = '1,' + value.toString();
                          data.floorHome = v;
                        }
                      },
                      validation: false),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CustomTextField(
                      placeHolder: 'Количество комнат',
                      onEditingComplete: () => formKeyHome.currentState!.save(),
                      onSaved: (value) {
                        print(value);
                        if (value != '') {
                          String v = '1,' + value.toString();
                          data.numbersRoomHome = v;
                        }
                      },
                      validation: false),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Picker(
              selectedValue: repairValue,
              title: 'Тип ремонта',
              items: repairTypes,
              onSelectedItemChanged: setRepairValue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Picker(
              selectedValue: buildingValue,
              title: 'Тип постройки',
              items: buildingTypes,
              onSelectedItemChanged: setBuildingValue,
            ),
          )
        ],
      ),
    );
  }

  GlobalKey<FormState> formKeyAparment = GlobalKey<FormState>();
  Widget buildApartmentFilter() {
    return Form(
      key: formKeyAparment,
      child: Column(
        children: [
          CustomTextField(
              placeHolder: 'Общая площадь',
              onEditingComplete: () => formKeyAparment.currentState!.save(),
              onSaved: (value) {
                if (value != '') {
                  String v = '1,' + value.toString();
                  data.totalAreaAperment = v;
                }
              },
              validation: false),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CustomTextField(
                      placeHolder: 'Этаж до',
                      onEditingComplete: () =>
                          formKeyAparment.currentState!.save(),
                      onSaved: (value) {
                        if (value != '') {
                          String v = '1,' + value.toString();
                          data.floorAperment = v;
                        }
                      },
                      validation: false),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CustomTextField(
                      placeHolder: 'Количество комнат',
                      onEditingComplete: () =>
                          formKeyAparment.currentState!.save(),
                      onSaved: (value) {
                        print(value);
                        if (value != '') {
                          String v = '1,' + value.toString();
                          data.numbersRoomAperment = v;
                        }
                      },
                      validation: false),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Picker(
              selectedValue: repairValue,
              title: 'Тип ремонта',
              items: repairTypes,
              onSelectedItemChanged: setRepairValue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Picker(
              selectedValue: buildingValue,
              title: 'Тип постройки',
              items: buildingTypes,
              onSelectedItemChanged: setBuildingValue,
            ),
          )
        ],
      ),
    );
  }
}

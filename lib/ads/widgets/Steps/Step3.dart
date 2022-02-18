import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/ads/widgets/CreateStepAd.dart';
import 'package:barinsatu/ads/widgets/MultiSelectItem.dart';
import 'package:flutter/material.dart';
import 'package:barinsatu/ads/models/myData.dart';

import '../CustomTextField.dart';
import '../Picker.dart';

class UnitSystem {
  const UnitSystem(this.value, this.name);
  final int value;
  final String name;
}

class Step3 extends StatefulWidget {
  const Step3(
      {Key? key,
      required this.adType,
      required this.data,
      required this.formKey})
      : super(key: key);

  final int adType;
  final GlobalKey<FormState> formKey;
  final MyData data;

  @override
  _Step3State createState() => _Step3State();
}

class _Step3State extends State<Step3> {
  List<BuildingType> buildingTypes = [];
  List<RepairType> repairTypes = [];
  List<Communications> communications = [];

  int buildingValue = 0;
  int repairValue = 0;

  getDataNetwork() async {
    AdRepo authRepo = AdRepo();
    var buildingTypesRaw = await authRepo.getBuildingTypes();
    var repairTypesRaw = await authRepo.getRepairTypes();
    var communicationsRow = await authRepo.getCommunications();

    if (mounted) {
      setState(() {
        buildingTypes = buildingTypesRaw;
        repairTypes = repairTypesRaw;
        communications = communicationsRow;
      });
    }
  }

  void setRepairValue(int value) {
    widget.data.repair_type_id = repairTypes[value].id;
    setState(() {
      repairValue = value;
    });
  }

  void setBuildingValue(int value) {
    widget.data.building_type_id = buildingTypes[value].id;
    setState(() {
      buildingValue = value;
    });
  }

  bool is_pledge = false;
  bool is_divisibility = false;
  @override
  void initState() {
    super.initState();
    getDataNetwork();
  }

  Widget homeDetail() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                keyBoardType:
                    const TextInputType.numberWithOptions(decimal: false),
                placeHolder: 'Количество комнат',
                validation: true,
                onSaved: (value) {
                  widget.data.numbers_room = int.parse(value!);
                },
                onEditingComplete: () =>
                    widget.formKey.currentState!.validate(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CustomTextField(
                  keyBoardType: TextInputType.number,
                  placeHolder: 'Общая площадь м²',
                  validation: true,
                  onSaved: (value) {
                    if (value != null) {
                      widget.data.total_area = double.parse(value);
                    }
                  },
                  onEditingComplete: () =>
                      widget.formKey.currentState!.validate(),
                ),
              ),
            ),
          ],
        ),
        CustomTextField(
          keyBoardType: const TextInputType.numberWithOptions(decimal: false),
          placeHolder: 'Дата постройки',
          validation: true,
          onSaved: (value) {
            widget.data.year_construction = int.parse(value!);
          },
          onEditingComplete: () => widget.formKey.currentState!.validate(),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: CustomTextField(
                  keyBoardType:
                      const TextInputType.numberWithOptions(decimal: false),
                  placeHolder: 'Этаж',
                  validation: true,
                  onSaved: (value) {
                    widget.data.floor = int.parse(value!);
                  },
                  onEditingComplete: () =>
                      widget.formKey.currentState!.validate()),
            )
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
    );
  }

  Widget apartmentDetail() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                keyBoardType: TextInputType.number,
                placeHolder: 'Количество комнат',
                validation: true,
                onSaved: (value) {
                  widget.data.numbers_room = int.parse(value!);
                },
                onEditingComplete: () =>
                    widget.formKey.currentState!.validate(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CustomTextField(
                  keyBoardType: TextInputType.number,
                  placeHolder: 'Общая площадь м²',
                  validation: true,
                  onSaved: (value) {
                    if (value != null) {
                      widget.data.total_area = double.parse(value);
                    }
                  },
                  onEditingComplete: () =>
                      widget.formKey.currentState!.validate(),
                ),
              ),
            ),
          ],
        ),
        CustomTextField(
          keyBoardType: TextInputType.number,
          placeHolder: 'Дата постройки',
          validation: true,
          onSaved: (value) {
            widget.data.year_construction = int.parse(value!);
          },
          onEditingComplete: () => widget.formKey.currentState!.validate(),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: CustomTextField(
                  keyBoardType: TextInputType.number,
                  placeHolder: 'Этаж',
                  validation: true,
                  onSaved: (value) {
                    widget.data.floor = int.parse(value!);
                  },
                  onEditingComplete: () =>
                      widget.formKey.currentState!.validate()),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CustomTextField(
                    keyBoardType: TextInputType.number,
                    placeHolder: 'из',
                    validation: true,
                    onSaved: (value) {
                      widget.data.total_floor = int.parse(value!);
                    },
                    onEditingComplete: () =>
                        widget.formKey.currentState!.validate()),
              ),
            )
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
    );
  }

  List<UnitSystem> unit = [
    const UnitSystem(0, 'Сот'),
    const UnitSystem(1, 'Га')
  ];

  int selectedUnit = 0;

  Widget areaDetail() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: CustomTextField(
                keyBoardType: TextInputType.number,
                placeHolder: 'Общая площадь',
                validation: true,
                onSaved: (value) {
                  if (value != null) {
                    widget.data.total_area = double.parse(value);
                  }
                },
                onEditingComplete: () =>
                    widget.formKey.currentState!.validate(),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: 100,
              child: Picker(
                // title: "Единица измерения",
                selectedValue: selectedUnit,
                onSelectedItemChanged: (value) {
                  widget.data.unit_of_measure = value;
                  setState(() {
                    selectedUnit = value;
                  });
                },
                items: unit,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
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
              value: is_pledge,
              onChanged: (bool? value) {
                widget.data.is_pledge = value!;
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
              'В залоге',
              style: TextStyle(fontSize: 14.0),
            ), //Text
            const SizedBox(width: 10), //SizedBox
            /** Checkbox Widget **/
            Checkbox(
              activeColor: Theme.of(context).primaryColor,
              value: is_divisibility,
              onChanged: (bool? value) {
                widget.data.is_divisibility = value!;
                setState(() {
                  is_divisibility = value;
                });
              },
            ),
          ],
        ),
        MultiSelectWidget(
          communications: communications,
          onConfirm: (c) {
            widget.data.communications = c.map((e) => e!.id).toList();
          },
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: widget.formKey,
        child: Column(
          children: [
            if (widget.adType == 0)
              homeDetail()
            else if (widget.adType == 1)
              areaDetail()
            else
              apartmentDetail(),
          ],
        ),
      ),
    );
  }
}

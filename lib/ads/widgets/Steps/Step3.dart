import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/ads/widgets/CreateStepAd.dart';
import 'package:flutter/material.dart';
import 'package:barinsatu/ads/models/myData.dart';

import '../CustomTextField.dart';
import '../Picker.dart';

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

  int buildingValue = 1;
  int repairValue = 1;

  getDataNetwork() async {
    AdRepo authRepo = AdRepo();
    var buildingTypesRaw = await authRepo.getBuildingTypes();
    var repairTypesRaw = await authRepo.getRepairTypes();

    if (mounted) {
      setState(() {
        buildingTypes = buildingTypesRaw;
        repairTypes = repairTypesRaw;
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
    widget.data.building_type_id = repairTypes[value].id;
    setState(() {
      buildingValue = value;
    });
  }

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
                placeHolder: 'Количество комнат',
                validation: true,
                onSaved: (value) {
                  print(value);
                  widget.data.numbers_room = value;
                },
                onEditingComplete: () =>
                    widget.formKey.currentState!.validate(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CustomTextField(
                  placeHolder: 'Общая площадь',
                  validation: true,
                  onSaved: (value) {
                    widget.data.total_area = value;
                  },
                  onEditingComplete: () =>
                      widget.formKey.currentState!.validate(),
                ),
              ),
            ),
          ],
        ),
        CustomTextField(
          placeHolder: 'Дата постройки',
          validation: true,
          onSaved: (value) {
            widget.data.year_construction = value;
          },
          onEditingComplete: () => widget.formKey.currentState!.validate(),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: CustomTextField(
                  placeHolder: 'Этаж',
                  validation: true,
                  onSaved: (value) {
                    widget.data.total_floor = value;
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
                placeHolder: 'Количество комнат',
                validation: true,
                onSaved: (value) {
                  widget.data.numbers_room = value;
                },
                onEditingComplete: () =>
                    widget.formKey.currentState!.validate(),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CustomTextField(
                  placeHolder: 'Общая площадь',
                  validation: true,
                  onSaved: (value) {
                    widget.data.total_area = value;
                  },
                  onEditingComplete: () =>
                      widget.formKey.currentState!.validate(),
                ),
              ),
            ),
          ],
        ),
        CustomTextField(
          placeHolder: 'Дата постройки',
          validation: true,
          onSaved: (value) {
            widget.data.year_construction = value;
          },
          onEditingComplete: () => widget.formKey.currentState!.validate(),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: CustomTextField(
                  placeHolder: 'Этаж',
                  validation: true,
                  onSaved: (value) {
                    widget.data.floor = value;
                  },
                  onEditingComplete: () =>
                      widget.formKey.currentState!.validate()),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: CustomTextField(
                    placeHolder: 'из',
                    validation: true,
                    onSaved: (value) {
                      widget.data.total_floor = value;
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

  Widget areaDetail() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                placeHolder: 'Общая площадь',
                validation: true,
                onSaved: (value) {
                  widget.data.total_area = value;
                },
                onEditingComplete: () =>
                    widget.formKey.currentState!.validate(),
              ),
            ),
          ],
        ),
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

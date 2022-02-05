import 'package:barinsatu/ads/models/ad.dart';
import 'package:barinsatu/ads/repositories/ad_repo.dart';
import 'package:barinsatu/ads/widgets/Picker.dart';
import 'package:barinsatu/ads/models/myData.dart';
import 'package:flutter/cupertino.dart' as Cupertino;
import 'package:flutter/material.dart';

class Step1 extends StatefulWidget {
  const Step1(
      {Key? key,
      required this.data,
      required this.slidingType,
      required this.slidingObject,
      required this.onValueChangedType,
      required this.onValueChangedObject,
      required this.itemsObject,
      required this.formKey})
      : super(key: key);

  final int slidingType;
  final int slidingObject;
  final MyData data;

  final List<AdDetailType> itemsObject;
  final void Function(int?) onValueChangedType;
  final void Function(int?) onValueChangedObject;

  final GlobalKey<FormState> formKey;

  @override
  _Step1State createState() => _Step1State();
}

class RenTime {
  RenTime({required this.id, required this.name});

  final int id;
  final String name;
}

class _Step1State extends State<Step1> {
  List<RenTime> rentTimes = [
    RenTime(id: 1, name: 'Посуточно'),
    RenTime(id: 2, name: 'Несколько месяцев')
  ];

  int adDetailValue = 0;
  int rentTimeValue = 0;

  void setRentRimeValue(int value) {
    widget.data.ad_detail_type_id = rentTimes[value].id;
    widget.data.rent_time_id = rentTimes[value].id;
    setState(() {
      rentTimeValue = value;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text('Тип сделки*'),
              ),
              Row(
                children: [
                  Expanded(
                    child: Cupertino.CupertinoSlidingSegmentedControl(
                      onValueChanged: widget.onValueChangedType,
                      groupValue: widget.slidingType,
                      children: const {
                        1: Padding(
                            padding: Cupertino.EdgeInsets.all(10),
                            child: Text('Аренда')),
                        2: Padding(
                          child: Text('Продажа'),
                          padding: Cupertino.EdgeInsets.all(10),
                        )
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          if (widget.slidingType == 1)
            Container(
                margin: const EdgeInsets.only(top: 20),
                child: Picker(
                  title: 'Время аренды',
                  selectedValue: rentTimeValue,
                  onSelectedItemChanged: setRentRimeValue,
                  items: rentTimes,
                )),
          Container(
              margin: const EdgeInsets.only(top: 20),
              child: Picker(
                title: 'Тип обьекта',
                selectedValue: widget.slidingObject,
                onSelectedItemChanged: widget.onValueChangedObject,
                items: widget.itemsObject,
              ))
        ],
      ),
    );
  }
}

import 'package:barinsatu/ads/models/ad.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class Animal {
  final int id;
  final String name;

  Animal({
    required this.id,
    required this.name,
  });
}

class MultiSelectWidget extends StatefulWidget {
  const MultiSelectWidget(
      {Key? key, required this.communications, required this.onConfirm})
      : super(key: key);
  final List<Communications> communications;
  final Function(List<Communications?>) onConfirm;
  @override
  _MultiSelectItemState createState() => _MultiSelectItemState();
}

class _MultiSelectItemState extends State<MultiSelectWidget> {
  late List<MultiSelectItem<Communications?>> _items;
  @override
  void initState() {
    _items = widget.communications
        .map((animal) => MultiSelectItem<Communications?>(animal, animal.name))
        .toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiSelectDialogField(
        items: _items,
        title: const Text(
          "Коммуникаций",
          style: TextStyle(color: Colors.black),
        ),
        selectedColor: Theme.of(context).primaryColor,
        buttonIcon: Icon(
          Icons.maps_home_work,
          color: Theme.of(context).primaryColor,
        ),
        buttonText: const Text(
          "Коммуникаций",
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
        onConfirm: widget.onConfirm);
  }
}

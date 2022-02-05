import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Picker extends StatelessWidget {
  const Picker(
      {Key? key,
      required this.onSelectedItemChanged,
      required this.items,
      required this.title,
      required this.selectedValue})
      : super(key: key);

  final void Function(int)? onSelectedItemChanged;
  final int selectedValue;
  final List items;
  final String title;

  @override
  Widget build(BuildContext context) {
    showPicker() {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return CupertinoPicker(
              scrollController:
                  FixedExtentScrollController(initialItem: selectedValue),
              backgroundColor: Colors.white,
              onSelectedItemChanged: onSelectedItemChanged,
              itemExtent: 64,
              selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                background: Theme.of(context).primaryColor.withOpacity(0.2),
              ),
              children: items
                  .map(
                    (item) => Center(child: Text(item.name.toString())),
                  )
                  .toList(),
            );
          });
    }

    return GestureDetector(
      onTap: showPicker,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(title),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(238, 238, 239, 1),
                borderRadius: BorderRadius.circular(9)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (items.isNotEmpty)
                  Text(
                    items[selectedValue].name,
                    textAlign: TextAlign.center,
                  ),
                const Icon(
                  Icons.expand_more_outlined,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

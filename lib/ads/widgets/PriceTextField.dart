import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PriceTextField extends StatelessWidget {
  const PriceTextField(
      {Key? key,
      required this.placeHolder,
      this.controller,
      required this.onEditingComplete,
      required this.onSaved,
      this.maxLines,
      required this.inputFormatter,
      required this.validation})
      : super(key: key);

  final void Function(String?)? onSaved;
  final void Function()? onEditingComplete;
  final TextEditingController? controller;
  final TextInputFormatter inputFormatter;
  final int? maxLines;
  final bool validation;
  final String placeHolder;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: (TextFormField(
        validator: (value) {
          if (validation) {
            if (value == null || value.isEmpty) {
              return 'Это поля обязательно';
            }
            return null;
          }
          return null;
        },
        onSaved: onSaved,
        // maxLines: maxLines,
        inputFormatters: [inputFormatter],
        onEditingComplete: onEditingComplete,
        decoration: InputDecoration(label: Text(placeHolder)),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.placeHolder,
      this.controller,
      required this.onEditingComplete,
      required this.onSaved,
      this.maxLines,
      this.onValueChanged,
      required this.validation})
      : super(key: key);

  final void Function(String?)? onSaved;
  final void Function()? onEditingComplete;
  final TextEditingController? controller;
  final int? maxLines;
  final bool validation;
  final String placeHolder;
  final void Function(String)? onValueChanged;
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
        onChanged: onValueChanged,
        controller: controller,
        // maxLines: maxLines,
        onEditingComplete: onEditingComplete,
        decoration: InputDecoration(label: Text(placeHolder)),
      )),
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      this.keyBoardType,
      this.whiteColor,
      this.padding,
      required this.placeHolder,
      this.controller,
      required this.onEditingComplete,
      required this.onSaved,
      this.maxLines,
      this.onValueChanged,
      required this.validation})
      : super(key: key);

  final void Function(String?)? onSaved;
  final double? padding;
  final bool? whiteColor;
  final TextInputType? keyBoardType;
  final void Function()? onEditingComplete;
  final TextEditingController? controller;
  final int? maxLines;
  final bool validation;
  final String placeHolder;
  final void Function(String)? onValueChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: padding != null ? padding! : 20),
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
        keyboardType: keyBoardType ?? TextInputType.text,
        onEditingComplete: onEditingComplete,
        decoration: InputDecoration(
          fillColor: whiteColor != null ? Colors.white : Colors.white10,
          filled: true,
          label: Text(placeHolder),
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {Key? key,
      this.keyBoardType,
      this.suffixIcon,
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
  final Widget? suffixIcon;
  final void Function(String)? onValueChanged;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode myFocusNode;

  @override
  void initState() {
    myFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    myFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: widget.padding != null ? widget.padding! : 20),
      child: (TextFormField(
        focusNode: myFocusNode,
        validator: (value) {
          if (widget.validation) {
            if (value == null || value.isEmpty) {
              return 'Это поля обязательно';
            }
            return null;
          }
          return null;
        },
        onSaved: widget.onSaved,
        onChanged: widget.onValueChanged,
        onFieldSubmitted: (e) {
          myFocusNode.unfocus();
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: widget.controller,
        keyboardType: widget.keyBoardType ?? TextInputType.text,
        onEditingComplete: widget.onEditingComplete,
        decoration: InputDecoration(
            fillColor:
                widget.whiteColor != null ? Colors.white : Colors.white10,
            filled: true,
            label: Text(widget.placeHolder),
            suffixIcon: widget.suffixIcon),
      )),
    );
  }
}

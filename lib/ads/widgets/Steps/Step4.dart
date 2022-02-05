import 'dart:io';
import 'package:barinsatu/ads/widgets/CreateStepAd.dart';
import 'package:barinsatu/ads/widgets/PriceTextField.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../CustomTextField.dart';

import '../Picker.dart';
import 'package:barinsatu/ads/models/myData.dart';

class Step4 extends StatefulWidget {
  const Step4({Key? key, required this.data, required this.formKey})
      : super(key: key);

  final GlobalKey<FormState> formKey;
  final MyData data;

  @override
  _Step4State createState() => _Step4State();
}

class _Step4State extends State<Step4> {
  var maskFormatter = MaskTextInputFormatter(mask: '### ### ### ### ###');

  List<File> imagesList = [];
  @override
  void initState() {
    super.initState();
  }

  void pickImage() async {
    final ImagePicker _picker = ImagePicker();

    final List<XFile>? images = await _picker.pickMultiImage(
        maxHeight: 720, maxWidth: 1280, imageQuality: 50);
    widget.data.imagesPath = images![0].path;

    List<File> imagesRaw = [];

    images.map((image) {
      imagesRaw.add(File(image.path));
    }).toList();

    setState(() {
      imagesList = imagesRaw;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: widget.formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PriceTextField(
              placeHolder: 'Цена',
              validation: true,
              onSaved: (String? value) {
                widget.data.price = int.parse(maskFormatter.getUnmaskedText());
              },
              inputFormatter: maskFormatter,
              onEditingComplete: () => widget.formKey.currentState!.validate(),
            ),
            CustomTextField(
              placeHolder: 'Заголовок',
              validation: true,
              onSaved: (value) {
                widget.data.title = value;
              },
              onEditingComplete: () => widget.formKey.currentState!.validate(),
            ),
            CustomTextField(
              maxLines: 10,
              placeHolder: 'Описание',
              validation: true,
              onSaved: (value) {
                widget.data.description = value;
              },
              onEditingComplete: () => widget.formKey.currentState!.validate(),
            ),
            ElevatedButton(onPressed: pickImage, child: Text('Picker')),
            if (imagesList.isNotEmpty)
              Row(
                children: imagesList.map((image) {
                  return Expanded(
                      child: Image.file(
                    image,
                    width: 100,
                    height: 100,
                  ));
                }).toList(),
              )
          ],
        ),
      ),
    );
  }
}

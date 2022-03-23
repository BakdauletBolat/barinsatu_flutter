import 'dart:io';
import 'dart:typed_data';
import 'package:barinsatu/ads/widgets/PriceTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import '../CustomTextField.dart';
import 'package:barinsatu/ads/models/myData.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';

class Step4 extends StatefulWidget {
  const Step4({Key? key, required this.data, required this.formKey})
      : super(key: key);

  final GlobalKey<FormState> formKey;
  final MyData data;

  @override
  _Step4State createState() => _Step4State();
}

class _Step4State extends State<Step4> {
  var maskFormatter = MaskTextInputFormatter(mask: '### ###');
  final CurrencyTextInputFormatter _formatter =
      CurrencyTextInputFormatter(locale: 'Ru', decimalDigits: 0, symbol: 'т ');
  List<File> imagesList = [];
  List<Uint8List> imageMemory = [];
  @override
  void initState() {
    super.initState();
  }

  void pickImage() async {
    final ImagePicker _picker = ImagePicker();
    List<File> imagesRaw = [];
    List<Uint8List> webImagesRaw = [];

    final List<XFile>? images = await _picker.pickMultiImage(
        maxHeight: 1080, maxWidth: 1920, imageQuality: 80);

    if (images != null && images.isNotEmpty) {
      images.map((image) async {
        print(image);
        if (kIsWeb) {
          webImagesRaw.add(await image.readAsBytes());
          imagesRaw.add(File(image.path));
          widget.data.images = imagesRaw;
        } else {
          imagesRaw.add(File(image.path));
          widget.data.images = imagesRaw;
        }
      }).toList();
    }

    setState(() {
      imageMemory = webImagesRaw;
      imagesList = imagesRaw;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: widget.formKey,
        child: Column(
          children: [
            PriceTextField(
              keyBoardType: TextInputType.number,
              placeHolder: 'Цена',
              validation: true,
              onSaved: (String? value) {
                widget.data.price =
                    int.parse(_formatter.getUnformattedValue().toString());
              },
              inputFormatter: _formatter,
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TextButton(
                  onPressed: pickImage,
                  child: Container(
                    child: Column(
                      children: const [
                        Icon(Icons.add_a_photo),
                        Text('Выбрать фотографий')
                      ],
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.error_outline,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      'Чтобы выбрать несколько фотографий удерживайте палец при выборе выбранного фотографий',
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.collections,
                    color: Theme.of(context).primaryColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 100,
                    child: Text(
                      'Выбрано ' + imagesList.length.toString() + ' фотографий',
                      style: TextStyle(color: Colors.black.withOpacity(0.5)),
                    ),
                  )
                ],
              ),
            ),
            if (imagesList.isNotEmpty)
              GridView.builder(
                  padding: const EdgeInsets.all(0),
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: kIsWeb ? imageMemory.length : imagesList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => kIsWeb
                      ? Image.memory(
                          imageMemory[index],
                          fit: BoxFit.cover,
                        )
                      : Image.file(
                          imagesList[index],
                          fit: BoxFit.cover,
                        )),
            const SizedBox(
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}

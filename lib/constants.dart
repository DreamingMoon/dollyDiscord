import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'main.dart';

Color? kcolor = Colors.grey[850];

Color? kdollycolor = Colors.blueGrey[700];
Icon? karrow = const Icon(Icons.arrow_forward_ios_rounded);
Text ktext2 = const Text('');

class PicProfile extends StatelessWidget {
  XFile? imgXFile;
  final ImagePicker _picker = ImagePicker();

  getImageFromGallery() async {
    imgXFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      imgXFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage:
          imgXFile == null ? null : FileImage(File(imgXFile!.path)),
      child: imgXFile == null
          ? Icon(
              Icons.add_photo_alternate,
              size: MediaQuery.of(context).size.width * 0.1,
            )
          : null,
    );
  }
}

class Kcard extends StatelessWidget {
  const Kcard({
    required this.lead,
    required this.text1,
  });
  final Icon lead;
  final Text text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kcolor,
      child: ListTile(
        leading: lead,
        title: text1,
        trailing: karrow,
      ),
    );
  }
}

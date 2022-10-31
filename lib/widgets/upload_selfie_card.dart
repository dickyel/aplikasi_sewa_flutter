// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class UploadSelfieCard extends StatefulWidget {
  const UploadSelfieCard({Key? key}) : super(key: key);

  @override
  State<UploadSelfieCard> createState() => _UploadSelfieCardState();
}

class _UploadSelfieCardState extends State<UploadSelfieCard> {
  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) {
        return;
      }
      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print('Gagal Melihat camera :$e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Upload Foto Selfie',
          style: greyTextStyle,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Ukuran tidak boleh lebih dari 2 MB',
          style: greyTextStyle.copyWith(
            fontSize: 10,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          width: double.infinity,
          height: 50,
          child: RaisedButton(
            onPressed: () {},
            color: blueColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Upload',
              style: greyTextStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'foto-selfie-saya.png',
          style: greyTextStyle.copyWith(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}

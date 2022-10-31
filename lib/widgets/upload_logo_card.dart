// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class UploadLogoCard extends StatefulWidget {
  const UploadLogoCard({Key? key}) : super(key: key);

  @override
  State<UploadLogoCard> createState() => _UploadLogoCardState();
}

class _UploadLogoCardState extends State<UploadLogoCard> {
  File? image;
  @override
  // ignore: override_on_non_overriding_member
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
          'Upload Logo',
          style: greyTextStyle,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Ukuran tidak boleh lebih dari 200x200',
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
          'foto-ktp-saya.jpg',
          style: greyTextStyle.copyWith(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}

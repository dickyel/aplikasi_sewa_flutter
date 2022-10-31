// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class UploadKtpCard extends StatefulWidget {
  const UploadKtpCard({Key? key}) : super(key: key);

  @override
  State<UploadKtpCard> createState() => _UploadKtpCardState();
}

class _UploadKtpCardState extends State<UploadKtpCard> {
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
          'Upload KTP/SIM',
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
          'foto-ktp-saya.jpg',
          style: greyTextStyle.copyWith(
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}

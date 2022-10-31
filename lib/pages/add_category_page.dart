import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';

class AddCategoryPage extends StatelessWidget {
  const AddCategoryPage({Key? key}) : super(key: key);

  get textarea => null;

  @override
  Widget build(BuildContext context) {
    Widget appbar() {
      return AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: blackColor,
          ),
        ),
        backgroundColor: whiteColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Tambah Kategori',
          style: blackTextStyle.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check,
              color: blueColor2,
            ),
          ),
        ],
      );
    }

    Widget categoryInput() => Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tambah Kategori',
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Container(
                width: double.infinity,
                height: 62,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                  color: blueColor3,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                              hintText: "Kendaraan atau alat bangunan",
                              hintStyle: greyTextStyle.copyWith(
                                  color: greyColor3,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            appbar(),
            categoryInput(),
          ],
        ),
      ),
    );
  }
}

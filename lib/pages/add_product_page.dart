import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';

class AddProoductPage extends StatelessWidget {
  const AddProoductPage({Key? key}) : super(key: key);

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
          'Tambah Produk',
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

    Widget productInput() => Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama Product',
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
                              hintText: "Canon xdfff",
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

    Widget priceInput() => Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Harga Product',
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
                              hintText: "\Rp.30.000",
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

    Widget dayInput() => Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Jumlah Hari',
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
                              hintText: "1 Hari",
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

    Widget stockInput() => Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Stok Produk',
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
                              hintText: "5",
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

    Widget descriptionInput() => Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deskripsi Product',
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
                height: 82,
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
                          child: TextField(
                        controller: textarea,
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        decoration: InputDecoration.collapsed(
                            hintText: "deskripsi produk",
                            hintStyle: greyTextStyle.copyWith(
                                color: greyColor3,
                                fontSize: 14,
                                fontWeight: FontWeight.bold)),
                      )),
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
            productInput(),
            dayInput(),
            priceInput(),
            stockInput(),
            descriptionInput(),
          ],
        ),
      ),
    );
  }
}

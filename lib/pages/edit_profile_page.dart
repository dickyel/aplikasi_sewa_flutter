import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

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
          'Edit Profile',
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

    Widget nameInput() => Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Nama Lengkap',
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
                              hintText: "Muhammad Dikky Purwanto",
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

    Widget phoneInput() => Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nomor Telepon',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )),
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
                              hintText: "08577373737",
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

    Widget emailInput() => Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email',
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
                              hintText: "muhammad@gmail.com",
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

    Widget address() => Container(
        margin: const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alamat',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Container(
              height: 92,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: blueColor3,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                  child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: textarea,
                      keyboardType: TextInputType.multiline,
                      maxLines: 4,
                      decoration: InputDecoration.collapsed(
                          hintText: "Jalan Raya Banung Kota",
                          hintStyle: greyTextStyle.copyWith(
                              color: greyColor3,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                    ),
                  )
                ],
              )),
            ),
          ],
        ));

    Widget imageProfile() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.only(
          top: 20,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                margin: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/img-profile.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            appbar(),
            imageProfile(),
            nameInput(),
            phoneInput(),
            emailInput(),
            address()
          ],
        ),
      ),
    );
  }
}

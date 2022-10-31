import 'package:aplikasi_sewa/widgets/gender_card.dart';

import 'package:aplikasi_sewa/widgets/signature_product_card.dart';
import 'package:aplikasi_sewa/widgets/upload_ktp_card.dart';
import 'package:aplikasi_sewa/widgets/upload_selfie_card.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';

import 'package:flutter_svg/svg.dart';

import '../widgets/upload_logo_card.dart';

class CreateShopPage extends StatelessWidget {
  const CreateShopPage({Key? key}) : super(key: key);

  get textarea => null;

  @override
  Widget build(BuildContext context) {
    Widget header() => PreferredSize(
          child: AppBar(
            automaticallyImplyLeading: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.chevron_left,
                color: greyColor2,
              ),
            ),
            backgroundColor: whiteColor,
            elevation: 1,
            title: Text(
              'Isi Form',
              style: blackTextStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          preferredSize: const Size.fromHeight(50),
        );

    Widget headerText() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lengkapi Formulir Toko',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Isi form lengkap dibawah ini',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );

    Widget fullName() => Container(
          height: 52,
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            color: const Color(0xffFBFAFA),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Row(
            children: [
              SvgPicture.asset(
                'assets/icon/svg_users.svg',
                width: 24,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: TextFormField(
                decoration: InputDecoration.collapsed(
                    hintText: "Nama Lengkap Pemilik Toko",
                    hintStyle: greyTextStyle.copyWith(
                        color: greyColor3,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ))
            ],
          )),
        );

    Widget numberPhone() => Container(
          height: 52,
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            color: const Color(0xffFBFAFA),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Row(
            children: [
              SvgPicture.asset(
                'assets/icon/svg_users.svg',
                width: 24,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: TextFormField(
                decoration: InputDecoration.collapsed(
                    hintText: "Nomor Telepon",
                    hintStyle: greyTextStyle.copyWith(
                        color: greyColor3,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ))
            ],
          )),
        );

    Widget numberKTP() => Container(
          height: 52,
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            color: const Color(0xffFBFAFA),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Row(
            children: [
              SvgPicture.asset(
                'assets/icon/svg_users.svg',
                width: 24,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: TextFormField(
                decoration: InputDecoration.collapsed(
                    hintText: "Nomor KTP/SIM",
                    hintStyle: greyTextStyle.copyWith(
                        color: greyColor3,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ))
            ],
          )),
        );

    Widget urlMapsShop() => Container(
          height: 52,
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            color: const Color(0xffFBFAFA),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Row(
            children: [
              SvgPicture.asset(
                'assets/icon/svg_users.svg',
                width: 24,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: TextFormField(
                decoration: InputDecoration.collapsed(
                    hintText: "Url Toko Sewa Pada Google Maps",
                    hintStyle: greyTextStyle.copyWith(
                        color: greyColor3,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ))
            ],
          )),
        );

    Widget address() => Container(
          height: 72,
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: const Color(0xffFBFAFA),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
              child: Row(
            children: [
              SvgPicture.asset(
                'assets/icon/img_svg_address.svg',
                width: 24,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: TextField(
                controller: textarea,
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                decoration: InputDecoration.collapsed(
                    hintText: "Alamat",
                    hintStyle: greyTextStyle.copyWith(
                        color: greyColor3,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ))
            ],
          )),
        );

    Widget gender() => Container(
        margin: const EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
        ),
        child: const GenderCard());

    Widget uploadKTP() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: const UploadKtpCard(),
        );

    Widget uploadSelfie() => Container(
        margin: const EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
        ),
        child: const UploadSelfieCard());

    Widget uploadLogo() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: const UploadLogoCard(),
        );

    Widget signature() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Silahkan Tanda Tangan Disini',
                style: greyTextStyle,
              ),
              const SizedBox(
                height: 4,
              ),
              SignatureProductCard(),
            ],
          ),
        );

    Widget btnForm() => GestureDetector(
          onTap: () => showDialog(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              actions: [
                Center(
                  child: Image.asset(
                    'assets/images/img-onboard1.png',
                    width: 200,
                    height: 100,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Center(
                  child: Text(
                    'Sedang pemeriksaan (Mohon Tunggu 24 Jam)',
                    style: blueTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Center(
                  child: Container(
                    width: 130,
                    height: 26,
                    decoration: BoxDecoration(
                        color: blueColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Text(
                        'Kembali',
                        style: greyTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          child: ClipRRect(
            child: Container(
              height: 50,
              margin: const EdgeInsets.only(
                top: 20,
                left: 20,
                right: 20,
                bottom: 20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: orangeColor,
              ),
              child: Center(
                child: Text(
                  'Simpan',
                  style: greyTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: whiteColor2,
                  ),
                ),
              ),
            ),
          ),
        );

    // ignore: sized_box_for_whitespace
    Widget content() => Container(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                fullName(),
                numberPhone(),
                numberKTP(),
                address(),
                gender(),
                uploadKTP(),
                uploadSelfie(),
                uploadLogo(),
                signature(),
                btnForm()
              ],
            ),
          ),
        );
    return Scaffold(
      backgroundColor: whiteColor,
      // appBar: header(),

      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            header(),
            headerText(),
            fullName(),
            numberPhone(),
            numberKTP(),
            address(),
            urlMapsShop(),
            gender(),
            uploadKTP(),
            uploadSelfie(),
            signature(),
            btnForm(),
          ],
        ),
      ),
    );
  }
}

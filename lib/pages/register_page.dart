import 'package:aplikasi_sewa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterPage extends StatelessWidget {
  get textarea => null;

  @override
  Widget build(BuildContext context) {
    Widget headerImage() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: Center(
            child: SvgPicture.asset(
              'assets/icon/img_svg_login.svg',
            ),
          ),
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
              const SizedBox(
                height: 40,
              ),
              Text(
                'SIGN UP',
                style: blueTextStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  text: 'Silahkan register untuk mendaftarkan akun',
                  style: greyTextStyle.copyWith(
                    color: greyColor2,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
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
                    hintText: "Nama Lengkap",
                    hintStyle: greyTextStyle.copyWith(
                        color: greyColor3,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ))
            ],
          )),
        );

    Widget emailInput() => Container(
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
                    hintText: "Email",
                    hintStyle: greyTextStyle.copyWith(
                        color: greyColor3,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ))
            ],
          )),
        );

    Widget userName() => Container(
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
                    hintText: "Username",
                    hintStyle: greyTextStyle.copyWith(
                        color: greyColor3,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ))
            ],
          )),
        );

    Widget phone() => Container(
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
                    hintText: "Nomor telepon",
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

    Widget password() => Container(
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
                'assets/icon/svg_password.svg',
                width: 24,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: TextFormField(
                obscureText: true,
                decoration: InputDecoration.collapsed(
                    hintText: "Atur Password",
                    hintStyle: greyTextStyle.copyWith(
                        color: greyColor3,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ))
            ],
          )),
        );

    Widget btnLogin() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: Row(
            children: [
              Text.rich(TextSpan(
                  text: 'Sudah Punya Akun ? ',
                  style: greyTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ))),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Log In',
                    style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: greyColor3,
                    ),
                  ))
            ],
          ),
        );

    Widget btnSave() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
            bottom: 20,
          ),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              color: blueColor, borderRadius: BorderRadius.circular(17)),
          child: TextButton(
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                actions: [
                  Center(
                    child: Image.asset(
                      'assets/images/img-onboard1.png',
                      width: 209,
                      height: 117,
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Center(
                    child: Text(
                      'Register Telah Berhasil',
                      style: blueTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
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
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Text(
                          'Login',
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
            child: Text(
              'Simpan',
              style: greyTextStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
            ),
          ),
        );

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            headerImage(),
            headerText(),
            fullName(),
            emailInput(),
            userName(),
            phone(),
            address(),
            password(),
            btnLogin(),
            btnSave(),
          ],
        ),
      ),
    );
  }
}

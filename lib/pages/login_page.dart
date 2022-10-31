import 'package:aplikasi_sewa/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget headerImage() => Container(
          margin: const EdgeInsets.only(
            top: 20,
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
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Text.rich(TextSpan(
                text: 'Hi,',
                style: blueTextStyle,
              )),
              const SizedBox(
                height: 1,
              ),
              Text(
                'Selamat Datang',
                style: blueTextStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  text: 'Silahkan masukkan akun yang telah terdaftar',
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
    Widget userName() => Container(
          height: 52,
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
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
                    hintText: "Username / Email",
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
            left: 20,
            right: 20,
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
                    hintText: "Password",
                    hintStyle: greyTextStyle.copyWith(
                        color: greyColor3,
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ))
            ],
          )),
        );
    Widget reset() => Container(
          margin: const EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20,
          ),
          child: Row(
            children: [
              Text.rich(TextSpan(
                  text: 'Forgot password ? ',
                  style: greyTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ))),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Reset',
                    style: greyTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: greyColor3,
                    ),
                  ))
            ],
          ),
        );
    Widget btnLogin() => Container(
          width: double.infinity,
          height: 50,
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          decoration: BoxDecoration(
              color: blueColor, borderRadius: BorderRadius.circular(17)),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/main');
            },
            child: Text(
              'Log In',
              style: greyTextStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
            ),
          ),
        );

    Widget btnRegister() => Container(
        margin: const EdgeInsets.only(
          top: 20,
          right: 20,
          left: 20,
          bottom: 20,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Belum punya akun ? ',
                  style: greyTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text(
                  'Register',
                  style: greyTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: greyColor3,
                  ),
                ),
              ),
            ],
          ),
        ));
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            headerImage(),
            headerText(),
            userName(),
            password(),
            reset(),
            btnLogin(),
            btnRegister(),
          ],
        ),
      ),
    );
  }
}

import 'package:aplikasi_sewa/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget header() => Container(
          margin: const EdgeInsets.only(
            top: 30,
            left: 20,
            right: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/img-profile.png',
                        ),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              text: 'Hi, ',
                              style: blackTextStyle.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 1,
                          ),
                          Text(
                            'Muhammad Dikky Purwanto',
                            style: blackTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const LoginPage(),
                    ),
                    ModalRoute.withName('/login'),
                  );
                },
                child: SvgPicture.asset(
                  'assets/icon/svg_logout.svg',
                  width: 24,
                  height: 24,
                ),
              ),
            ],
          ),
        );

    Widget aboutAccountTitle() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tentang Akun',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );

    Widget menuAccount() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: blueColor3,
                  ),
                  margin: const EdgeInsets.only(
                    bottom: 24,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                            right: 24,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Edit Profile',
                                style: greyTextStyle.copyWith(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SvgPicture.asset(
                                'assets/icon/svg_arrow.svg',
                              )
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: blueColor3,
                ),
                margin: const EdgeInsets.only(
                  bottom: 24,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bantuan',
                              style: greyTextStyle.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SvgPicture.asset(
                              'assets/icon/svg_arrow.svg',
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        );

    Widget otherTitle() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Lainnya',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        );

    Widget menuOther() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: blueColor3,
                ),
                margin: const EdgeInsets.only(
                  bottom: 24,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Privacy & Policy',
                              style: greyTextStyle.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SvgPicture.asset(
                              'assets/icon/svg_arrow.svg',
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: blueColor3,
                ),
                margin: const EdgeInsets.only(
                  bottom: 24,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Term & Conditions',
                              style: greyTextStyle.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SvgPicture.asset(
                              'assets/icon/svg_arrow.svg',
                            )
                          ],
                        ))
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: blueColor3,
                ),
                margin: const EdgeInsets.only(
                  bottom: 24,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 24,
                          right: 24,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rate Apps',
                              style: greyTextStyle.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SvgPicture.asset(
                              'assets/icon/svg_arrow.svg',
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        );

    return Column(
      children: [
        header(),
        aboutAccountTitle(),
        menuAccount(),
        otherTitle(),
        menuOther()
      ],
    );
  }
}

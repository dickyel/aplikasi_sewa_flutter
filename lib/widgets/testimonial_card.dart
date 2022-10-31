import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';

class TestimonialCard extends StatelessWidget {
  const TestimonialCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/image 1.png',
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Toko sewa women, toko yang keren alat - alat makeupnya  juga bagus - bagus',
                  style: greyTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/icon/ic-star.png',
                width: 18,
                height: 18,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    // ignore: unnecessary_string_escapes
                    '\4.5/5.0',
                    style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

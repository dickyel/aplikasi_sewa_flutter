import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';

class PopulerShopCard extends StatelessWidget {
  const PopulerShopCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      height: 200,
      margin: const EdgeInsets.only(
        right: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: whiteColor2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/image 1.png',
                width: 152,
                height: 140,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 35,
                  width: 71,
                  decoration: BoxDecoration(
                    color: blueColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon/ic-star.png',
                        width: 15,
                        height: 15,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        ' 4.5/5',
                        style: TextStyle(
                            color: whiteColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Toko Sewa Gaded',
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Kecantikan',
            style: greyTextStyle.copyWith(
                fontSize: 12, fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}

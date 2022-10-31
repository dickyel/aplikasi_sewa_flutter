import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookmarkCard extends StatelessWidget {
  const BookmarkCard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 20,
      ),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: greyColor3, width: 2))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: greyColor3,
                )),
                child: Center(
                  child: SvgPicture.asset(
                    'assets/icon/svg_email.svg',
                    width: 24,
                  ),
                ),
              ),
              const SizedBox(
                width: 13,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Toko Sewa Gadget',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Text(
                    'Gadget',
                    style: greyTextStyle.copyWith(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  Text(
                    '05 April 2022',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: sized_box_for_whitespace

import 'package:aplikasi_sewa/widgets/bookmark_card.dart';

import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget emptyBookmark() => Expanded(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icon/svg_not_found.svg',
                  width: 164,
                ),
                const SizedBox(
                  height: 12,
                ),
                // ignore: prefer_const_constructors
                Text(
                  'Tidak ada Bookmark',
                ),
              ],
            ),
          ),
        );

    Widget header() => AppBar(
          automaticallyImplyLeading: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                width: 18,
                height: 18,
                child: Icon(
                  Icons.arrow_back,
                  color: greyColor2,
                )),
          ),
          backgroundColor: whiteColor,
          elevation: 1,
          title: Text('Penanda Toko',
              style: greyTextStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
        );

    Widget content() => Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
                const BookmarkCard(),
              ],
            ),
          ),
        );
    return Column(
      children: [
        // emptyBookmark(),

        header(),
        content(),
      ],
    );
  }
}

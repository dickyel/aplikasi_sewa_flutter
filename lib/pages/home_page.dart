import 'package:aplikasi_sewa/theme.dart';
import 'package:aplikasi_sewa/widgets/bookmark_shop_card.dart';
import 'package:aplikasi_sewa/widgets/populer_shop_card.dart';

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget header() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hallo , Alex',
                      style: blackTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '@alex07',
                      style: greyTextStyle.copyWith(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
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
            ],
          ),
        );

    Widget searchPage() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffFBFAFA),
          ),
          child: Center(
              child: Row(
            children: [
              SvgPicture.asset(
                'assets/icon/svg_search.svg',
                width: 24,
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration.collapsed(
                      hintText: "Cari produk atau kategori",
                      hintStyle: greyTextStyle.copyWith(
                          color: greyColor3,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                ),
              )
            ],
          )),
        );

    Widget categories() => Container(
          margin: const EdgeInsets.only(
            top: 20,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor2,
                  ),
                  child: Text(
                    'Berdasarkan Rating',
                    style: greyTextStyle.copyWith(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor2),
                  child: Text('Berdasarkan Komentar',
                      style: greyTextStyle.copyWith(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: whiteColor2,
                  ),
                  child: Text(
                    'Sering di tandai',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );

    Widget shopPopulerTitle() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: Text(
                  'Toko Sewa Terpopuler',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'lihat semua',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              )
            ],
          ),
        );

    Widget shopBookmarkTitle() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: Text(
                  'Toko Sewa Sering ditandai',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'lihat semua',
                style: greyTextStyle.copyWith(
                  fontSize: 14,
                ),
              )
            ],
          ),
        );

    Widget populerShop() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/detail-shop');
                  },
                  child: const PopulerShopCard(),
                ),
                const PopulerShopCard(),
                const PopulerShopCard(),
                const PopulerShopCard(),
              ],
            ),
          ),
        );

    Widget bookmarkShop() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const BookmarkShopCard(),
                const BookmarkShopCard(),
                const BookmarkShopCard(),
                const BookmarkShopCard(),
              ],
            ),
          ),
        );

    return ListView(
      children: [
        header(),
        searchPage(),
        categories(),
        shopPopulerTitle(),
        populerShop(),
        shopBookmarkTitle(),
        bookmarkShop(),
      ],
    );
  }
}

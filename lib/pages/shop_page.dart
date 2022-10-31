import 'package:aplikasi_sewa/widgets/product_shop_card.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';

import 'package:flutter_svg/flutter_svg.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget emptyShop() => Expanded(
          // ignore: sized_box_for_whitespace
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
                Text(
                  'Anda belum buat toko',
                  style: blueTextStyle.copyWith(
                    color: blueColor2,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  width: 180,
                  height: 52,
                  padding: const EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(16)),
                  child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: blueColor3,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/create-shop');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Buat Toko anda',
                            style: greyTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Icon(
                            Icons.chevron_right,
                            color: greyColor2,
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        );

    Widget header() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Toko Sewa Gadget',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/edit-shop');
                },
                child: SvgPicture.asset(
                  'assets/icon/ic-edit.svg',
                ),
              ),
            ],
          ),
        );

    Widget btnShop() => Container(
          margin: const EdgeInsets.only(
            top: 10,
            right: 20,
            left: 20,
          ),
          child: Row(children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/info-order');
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/images/img_transaksi.png',
                  width: 84,
                  height: 40,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/add-category');
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/images/img_kategori.png',
                  width: 84,
                  height: 40,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/add-product');
              },
              child: Container(
                margin: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/images/img_produk.png',
                  width: 84,
                  height: 40,
                ),
              ),
            ),
          ]),
        );

    Widget content() => Container(
          margin: const EdgeInsets.only(
            top: 10,
            right: 20,
            left: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                ProductShopCard(),
                ProductShopCard(),
                ProductShopCard(),
                ProductShopCard(),
              ],
            ),
          ),
        );

    return ListView(
      children: [
        // emptyShop(),
        header(),
        btnShop(),
        content(),
      ],
    );
  }
}

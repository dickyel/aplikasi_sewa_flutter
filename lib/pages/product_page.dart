import 'package:aplikasi_sewa/widgets/product_shop_card.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() => PreferredSize(
          child: AppBar(
            automaticallyImplyLeading: true,
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 18,
                height: 18,
                child: Icon(
                  Icons.chevron_left,
                  color: greyColor2,
                ),
              ),
            ),
            backgroundColor: whiteColor,
            elevation: 1,
            title: Text(
              'Lihat Product',
              style: blackTextStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          preferredSize: const Size.fromHeight(50),
        );

    Widget content() => Container(
          margin: const EdgeInsets.only(
            top: 20,
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
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            content(),
          ],
        ),
      ),
    );
  }
}

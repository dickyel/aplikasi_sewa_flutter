import 'package:aplikasi_sewa/widgets/order_card.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';
import 'package:flutter_svg/svg.dart';

class InfoOrderPage extends StatelessWidget {
  const InfoOrderPage({Key? key}) : super(key: key);

  get controller => null;

  @override
  Widget build(BuildContext context) {
    Widget header() => PreferredSize(
          child: AppBar(
            automaticallyImplyLeading: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.chevron_left,
                color: greyColor2,
              ),
            ),
            backgroundColor: whiteColor,
            elevation: 1,
            title: Text(
              'Orderan Masuk',
              style: blackTextStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: greyColor2,
                ),
              ),
            ],
          ),
          preferredSize: const Size.fromHeight(50),
        );

    Widget content() => Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: ListView(
              children: const [
                OrderCard(),
                OrderCard(),
                OrderCard(),
              ],
            ),
          ),
        );
    return Column(
      children: [
        header(),
        // searchPage(),

        content(),
      ],
    );
  }
}

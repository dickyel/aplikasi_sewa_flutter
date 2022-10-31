import 'package:aplikasi_sewa/widgets/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    @override
    Widget emptyTransaction() => Expanded(
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
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Tidak ada Transaksi',
                  style: blueTextStyle.copyWith(
                    color: blueColor2,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );

    Widget header() => AppBar(
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
          title: Text('Riwayat Transaksi',
              style: greyTextStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              )),
        );

    Widget content() => Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/riwayat-transaction');
                  },
                  child: const TransactionCard(),
                ),
                const TransactionCard(),
                const TransactionCard(),
                const TransactionCard(),
                const TransactionCard(),
                const TransactionCard(),
                const TransactionCard(),
                const TransactionCard(),
                const TransactionCard(),
                const TransactionCard(),
                const TransactionCard(),
                const TransactionCard(),
                const TransactionCard(),
                const TransactionCard(),
                const TransactionCard(),
                const TransactionCard(),
              ],
            ),
          ),
        );

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}

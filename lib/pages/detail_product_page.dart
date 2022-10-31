import 'package:aplikasi_sewa/widgets/product_shop_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';

class DetailProductPage extends StatefulWidget {
  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  List images = [
    'assets/images/image 11.png',
    'assets/images/image 11.png',
    'assets/images/image 11.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 16 : 4,
        height: 4,
        margin: EdgeInsets.symmetric(
          horizontal: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: currentIndex == index ? blueColor : greyColor2,
        ),
      );
    }

    Widget header() {
      int index = -1;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.chevron_left,
                    color: greyColor2,
                  ),
                ),
                SizedBox(
                  width: 11,
                ),
                Text(
                  'Detail Barang',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map(
                  (image) => Image.asset(
                    image,
                    width: 191,
                    height: 138,
                  ),
                )
                .toList(),
            options: CarouselOptions(
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Deskripsi',
                    style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Ini adalah kamera terbaru dari canon yang meupakan kelanjutan dari skskskskskskskskskskskkskskskskskkdhhkshshhdkhdkhdkhdkhdkdhkdhkhdkhdk',
                  style: greyTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tentang Barang',
                    style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )),
                SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Harga',
                      style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '30000',
                      style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kategori',
                      style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Gadget',
                      style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hari',
                      style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '1 days',
                      style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Stok',
                      style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      '1',
                      style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget btnShop() => Container(
          width: double.infinity,
          height: 50,
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          decoration: BoxDecoration(
              color: orangeColor, borderRadius: BorderRadius.circular(17)),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/detail-shop',
              );
            },
            child: Text(
              'Kembali ke -toko',
              style: greyTextStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
            ),
          ),
        );

    return Scaffold(
      backgroundColor: whiteColor,
      body: ListView(
        children: [
          header(),
          content(),
          btnShop(),
        ],
      ),
    );
  }
}

import 'package:aplikasi_sewa/widgets/testimonial_card.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';

class DetailShopPage extends StatelessWidget {
  const DetailShopPage({Key? key}) : super(key: key);

  get textarea => null;

  @override
  Widget build(BuildContext context) {
    Widget btnBooking() => Container(
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
              Navigator.pushNamed(context, '/form-rental');
            },
            child: Text(
              'Sewa Barang',
              style: greyTextStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: whiteColor,
              ),
            ),
          ),
        );

    Widget header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(50),
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
            ' Toko',
            style: blackTextStyle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.bookmark_add,
                  color: greyColor2,
                ))
          ],
        ),
      );
    }

    Widget logoImage() => Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          // ignore: sized_box_for_whitespace
          child: Container(
            width: double.infinity,
            height: 274,
            child: Center(
              child: Image.asset(
                'assets/images/image 1.png',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );

    Widget btnShop() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/images/img_chats.png',
                  width: 54,
                  height: 54,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/images/img_kontak.png',
                  width: 54,
                  height: 54,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/product');
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Image.asset(
                    'assets/images/img_barang.png',
                    width: 54,
                    height: 54,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/images/img_location.png',
                  width: 54,
                  height: 54,
                ),
              ),
            ],
          ),
        );

    Widget tags() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(right: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: categoryColor,
                  ),
                  child: Text(
                    '#Kendaraan',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(right: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: categoryColor,
                  ),
                  child: Text(
                    '#Kendaraan',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(right: 20),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: categoryColor,
                  ),
                  child: Text(
                    '#Kendaraan',
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

    Widget nameShop() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Toko Sewa Women',
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                  text: 'Kategori : Semua kategori',
                  style: greyTextStyle.copyWith(
                    color: greyColor3,
                    fontSize: 12,
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 6,
              ),
              Text(
                'Jalan Cibiru Wetan , Kecamatan Cileunyi',
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );

    Widget ratingInfo() => Container(
          margin: const EdgeInsets.only(
            top: 10,
            right: 20,
            left: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/icon/ic-star.png',
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '4.5/5.0',
                    style: blackTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              )
            ],
          ),
        );

    Widget descriptionTitle() => Container(
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Deskripsi Toko',
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )
            ],
          ),
        );

    Widget descriptionContent() => Container(
          margin: const EdgeInsets.only(
            right: 20,
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text:
                      'Toko sewa women adalah toko yang menyewakan macam - macam alat - alat kecantikan untuk perempuan dalam makeup dan sebagainya.......',
                  style: greyTextStyle.copyWith(
                    color: greyColor3,
                    fontSize: 12,
                  ),
                ),
                maxLines: 6,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        );

    Widget testimonialTitle() => Container(
          margin: const EdgeInsets.only(
            top: 10,
            right: 20,
            left: 20,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Testimonial',
                style: blackTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              TextButton(
                  onPressed: () => showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Komentar',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Silahkan menggunakan bahasa yang sopan dan santun',
                                  style: greyTextStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 140,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFBFAFA),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                      child: Row(
                                    children: [
                                      Expanded(
                                        child: TextField(
                                          controller: textarea,
                                          keyboardType: TextInputType.multiline,
                                          maxLines: 4,
                                          decoration: InputDecoration.collapsed(
                                              hintText: "Ketik Disini yah...",
                                              hintStyle: greyTextStyle.copyWith(
                                                  color: greyColor3,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ),
                                    ],
                                  )),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  'Pilih Rating',
                                  style: blackTextStyle.copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/icon/ic-star.png',
                                      width: 15,
                                      height: 15,
                                    ),
                                    Image.asset(
                                      'assets/icon/ic-star.png',
                                      width: 15,
                                      height: 15,
                                    ),
                                    Image.asset(
                                      'assets/icon/ic-star.png',
                                      width: 15,
                                      height: 15,
                                    ),
                                    Image.asset(
                                      'assets/icon/ic-star.png',
                                      width: 15,
                                      height: 15,
                                    ),
                                    Image.asset(
                                      'assets/icon/ic-star.png',
                                      width: 15,
                                      height: 15,
                                    ),
                                  ],
                                )
                              ]),
                          actions: [
                            Center(
                              child: Container(
                                margin: const EdgeInsets.only(
                                  bottom: 20,
                                ),
                                width: 130,
                                height: 26,
                                decoration: BoxDecoration(
                                    color: blueColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Kirim',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: whiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                  child: Text(
                    'Beri Komentar',
                    style: greyTextStyle.copyWith(
                        color: greyColor3,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ))
            ],
          ),
        );

    Widget testimonialContent() => Container(
          height: 200,
          margin: const EdgeInsets.only(
            top: 20,
            right: 20,
            left: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                TestimonialCard(),
                TestimonialCard(),
                TestimonialCard(),
                TestimonialCard(),
                TestimonialCard(),
                TestimonialCard(),
              ],
            ),
          ),
        );

    Widget content() => Container(
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                logoImage(),
                btnShop(),
                tags(),
                nameShop(),
                ratingInfo(),
                descriptionTitle(),
                descriptionContent(),
                testimonialTitle(),
                testimonialContent(),
                btnBooking(),
              ],
            ),
          ),
        );
    return Scaffold(
      backgroundColor: whiteColor,
      // appBar: header(),

      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            header(),
            logoImage(),
            btnShop(),
            nameShop(),
            ratingInfo(),
            descriptionTitle(),
            descriptionContent(),
            testimonialTitle(),
            testimonialContent(),
            btnBooking(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';
import 'package:flutter_svg/svg.dart';

class RiwayatPage extends StatelessWidget {
  const RiwayatPage({Key? key}) : super(key: key);

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
              'Riwayat Transaksi',
              style: blackTextStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          preferredSize: const Size.fromHeight(50),
        );

    Widget content() => Container(
          height: 800,
          margin:
              const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
          width: double.infinity,
          decoration: BoxDecoration(
              color: whiteColor,
              border: Border.all(color: greyColor3, width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Center(
                    child: Image.asset(
                  'assets/images/logo-apps.png',
                  height: 74,
                  width: 122,
                )),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '25 Februari 2022.',
                          style: greyTextStyle.copyWith(
                            color: greyColor2,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' 15.00 WIB',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    Text(
                      'Muhammad Dikky Purwanto',
                      style: greyTextStyle.copyWith(
                        color: greyColor2,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                    )
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                const Divider(),
                const SizedBox(
                  height: 6,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                'assets/icon/svg_statustransfer.svg',
                                width: 18,
                                height: 18,
                              ),
                            ]),
                        const SizedBox(
                          width: 2,
                        ),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                ' Transaksi Berhasil',
                                style: greyTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ])
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Order sewa berhasil atas nama muhammad dikky purwanto',
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  height: 46,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: blueColor,
                  ),
                  child: Center(
                    child: Text(
                      'Total Bayar Rp. 30.000',
                      style: whiteTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Metode Pembayaran',
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Datang Langsung',
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ]),
                const SizedBox(
                  height: 18,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Detail Sewa',
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nama Lengkap',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Muhammad Dikky Purwanto',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nama Toko',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Toko Sewa Gadgets',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nama Barang',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Canon FXFDFDFD',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kategori',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Gadget',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Berapa Hari',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '3 Hari',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tanggal Diambil',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '06 Maret 2022',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tanggal Dikembalikan',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '09 Maret 2022',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nomor Telepon',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '085777724898',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 68,
                          width: 98,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: greyColor2, width: 2),
                            ),
                          ),
                        ),
                        Container(
                          height: 68,
                          width: 98,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(color: greyColor2, width: 2),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Pemilik Sewa',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Nama Kamu',
                          style: blackTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Divider(),
                const SizedBox(
                  height: 6,
                ),
                Text.rich(
                  TextSpan(
                    text:
                        'Silahkan ambil alat tersebut pada alamat berikut dan serahkan bukti ordernya',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text.rich(
                  TextSpan(
                    text:
                        'Jalan Cibiru Wetan , Kecamatan Cileunyi, RT 01 RW 04, Kel. Cibiru',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        );

    return Scaffold(
        backgroundColor: whiteColor,
        body: SafeArea(
          child: ListView(children: [
            header(),
            content(),
          ]),
        ));
  }
}

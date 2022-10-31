import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';

class ProductShopCard extends StatelessWidget {
  const ProductShopCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-product');
      },
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: greyColor3,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/icon/svg_pencil (1).png',
                      width: 70,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      'CANON FXDFF',
                      style: blackTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Harga',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('Rp. 300000',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Kategori',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('Gadget',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Hari',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('1',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Stok',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      Text('1',
                          style: blackTextStyle.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

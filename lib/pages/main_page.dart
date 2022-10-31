import 'package:aplikasi_sewa/pages/bookmark_page.dart';
import 'package:aplikasi_sewa/pages/shop_page.dart';

import 'package:aplikasi_sewa/pages/home_page.dart';
import 'package:aplikasi_sewa/pages/profile_page.dart';

import 'package:aplikasi_sewa/pages/transaction_page.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_sewa/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() => ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            backgroundColor: whiteColor3,
            currentIndex: currentIndex,
            onTap: (value) {
              print(value);
              setState(
                () {
                  currentIndex = value;
                },
              );
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icon/svg_home.svg',
                  width: 24,
                  color: currentIndex == 0 ? blueColor : greyColor3,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icon/svg_history.svg',
                  width: 24,
                  color: currentIndex == 1 ? blueColor : greyColor3,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icon/svg_toko.svg',
                  width: 24,
                  color: currentIndex == 2 ? blueColor : greyColor3,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icon/svg_bookmark.svg',
                  width: 24,
                  color: currentIndex == 3 ? blueColor : greyColor3,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icon/svg_users2.svg',
                  width: 24,
                  color: currentIndex == 4 ? blueColor : greyColor3,
                ),
                label: '',
              ),
            ],
          ),
        );

    Widget main() {
      currentIndex = currentIndex;
      switch (currentIndex) {
        case 0:
          return const HomePage();
          // ignore: dead_code
          break;
        case 1:
          return const TransactionPage();
          // ignore: dead_code
          break;
        case 2:
          return const ShopPage();
          // ignore: dead_code
          break;
        case 3:
          return const BookmarkPage();
          // ignore: dead_code
          break;
        case 4:
          return const ProfilePage();
          // ignore: dead_code
          break;
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: main(),
      bottomNavigationBar: customBottomNav(),
    );
  }
}

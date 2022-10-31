import 'package:aplikasi_sewa/pages/add_category_page.dart';
import 'package:aplikasi_sewa/pages/add_product_page.dart';
import 'package:aplikasi_sewa/pages/create_shop_page.dart';
import 'package:aplikasi_sewa/pages/detail_chat_page.dart';
import 'package:aplikasi_sewa/pages/detail_product_page.dart';
import 'package:aplikasi_sewa/pages/detail_shop_page.dart';
import 'package:aplikasi_sewa/pages/edit_profile_page.dart';
import 'package:aplikasi_sewa/pages/edit_shop_page.dart';
import 'package:aplikasi_sewa/pages/form_rental_page.dart';
import 'package:aplikasi_sewa/pages/info_order_page.dart';
import 'package:aplikasi_sewa/pages/login_page.dart';
import 'package:aplikasi_sewa/pages/main_page.dart';
import 'package:aplikasi_sewa/pages/product_page.dart';
import 'package:aplikasi_sewa/pages/register_page.dart';
import 'package:aplikasi_sewa/pages/riwayat_page.dart';
import 'package:aplikasi_sewa/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => RegisterPage(),
        '/main': (context) => const MainPage(),
        '/detail-shop': (context) => const DetailShopPage(),
        '/detail-product': (context) => DetailProductPage(),
        '/form-rental': (context) => const FormRentalPage(),
        '/create-shop': (context) => const CreateShopPage(),
        '/riwayat-transaction': (context) => const RiwayatPage(),
        '/detail-chat': (context) => const DetailChatPage(),
        '/product': (context) => const ProductPage(),
        '/edit-shop': (context) => const EditShopPage(),
        '/edit-profile': (context) => const EditProfilePage(),
        '/add-category': (context) => const AddCategoryPage(),
        '/info-order': (context) => const InfoOrderPage(),
        '/add-product': (context) => const AddProoductPage(),
      },
      // home: FormRentalPage(),
    );
  }
}

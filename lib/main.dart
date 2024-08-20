import 'package:e_commerce_app/screen/invoice.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/screen/home_page.dart';
import 'package:e_commerce_app/screen/detail_page.dart';
import 'package:e_commerce_app/screen/cart_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Homescreen(),
        'Detailpage': (context) => const Detailpage(),
        'Cartpage': (context) => const Cartpage(),
        'PdfPage': (context) => const PdfPage(),
      },
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:uh_ddg_m_raditya_a_w_xi_pplg_2/screen/navbar_screen.dart';
// Import file yang berisi kelas ExampleBottomNavBar

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExampleBottomNavBar(), // Arahkan ke ExampleBottomNavBar
      debugShowCheckedModeBanner: false,
      // Mengatur warna latar belakang seluruh layar menjadi hitam
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cms_app/views/screens/medicine_list_screen.dart';

void main(List<String> args) {
  runApp(const GetMaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const MedicineListScreen(),
    );
  }
}

import 'package:cms_app/views/screens/cart_screen.dart';
import 'package:cms_app/views/screens/chart_screen.dart';
import 'package:cms_app/views/screens/history_order_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cms_app/views/screens/medicine_list_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: const Color.fromRGBO(77, 171, 150, 1),
            inputDecorationTheme: const InputDecorationTheme(
                labelStyle: TextStyle(color: Color.fromRGBO(77, 171, 150, 1)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(77, 171, 150, 1),
                    ))),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(77, 171, 150, 1))),
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              selectedItemColor: Color.fromRGBO(77, 171, 150, 1),
            )),
        home: const MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    const MedicineListScreen(),
    const CartScreen(),
    const HistoryOrderScreen(),
    const ChartScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(231, 233, 235, 1),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category_outlined,
            ),
            label: 'Thuốc',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: 'Giỏ hàng',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner_outlined),
            label: 'Đơn thuốc',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart_outlined),
            label: 'Thống kê',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

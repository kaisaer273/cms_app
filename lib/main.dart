import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:cms_app/views/screens/medicine_list_screen.dart';
import 'package:cms_app/views/screens/cart_screen.dart';
import 'package:cms_app/views/screens/chart_screen.dart';
import 'package:cms_app/views/screens/history_order_screen.dart';

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
      // ignore: prefer_const_constructors
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(77, 171, 150, 1),
        child: const Icon(Icons.medical_services_outlined),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      backgroundColor: const Color.fromRGBO(231, 233, 235, 1),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_outlined,
            ),
            label: 'Thuốc',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: 'Giỏ hàng',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: 'Đơn thuốc',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: 'Thống kê',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           //code to execute on button press
//         },
//         backgroundColor: const Color.fromRGBO(77, 171, 150, 1),
//         child: const Icon(Icons.medical_services_outlined), //icon inside button
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         color: Colors.redAccent,
//         shape: const CircularNotchedRectangle(),
//         notchMargin: 5,
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             IconButton(
//               icon: const Icon(
//                 Icons.list_alt_outlined,
//                 color: Colors.white,
//               ),
//               onPressed: () {
//                 Get.to(const MedicineListScreen());
//               },
//             ),
//             IconButton(
//               icon: const Icon(
//                 Icons.shopping_bag_outlined,
//                 color: Colors.white,
//               ),
//               onPressed: () {
//                 Get.to(const CartScreen());
//               },
//             ),
//             IconButton(
//               icon: const Icon(
//                 Icons.article_outlined,
//                 color: Colors.white,
//               ),
//               onPressed: () {
//                 Get.to(const HistoryOrderScreen());
//               },
//             ),
//             IconButton(
//               icon: const Icon(
//                 Icons.bar_chart_outlined,
//                 color: Colors.white,
//               ),
//               onPressed: () {
//                 Get.to(const ChartScreen());
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

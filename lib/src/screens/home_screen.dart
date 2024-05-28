import 'package:delivery_app/src/screens/cart_tab.dart';
import 'package:delivery_app/src/screens/home_tab.dart';
import 'package:delivery_app/src/screens/payment_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 0;
  late Widget page;

  @override
  Widget build(BuildContext context) {
    switch (selectedIndex) {
      case 0:
        page = const HomeTab();
      case 1:
        page = const CartTab();
      case 2:
        page = const PaymentTab();
      default:
        throw UnimplementedError("Unknown index $selectedIndex");
    }

    return Scaffold(
      body: page,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.window_sharp),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Person',
          )
        ],
        currentIndex: selectedIndex,
        onTap: (value) => setState(() => selectedIndex = value),
        selectedIconTheme: const IconThemeData(size: 28),
      ),
    );
  }
}

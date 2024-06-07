import 'package:flutter/material.dart';
import 'package:nano_crypto_app/src/feature/authentication/view/homepage.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 0;

  final List _screens = [
    const HomePage(),
  ];

  void _navBarIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          enableFeedback: true,
          type: BottomNavigationBarType.shifting,
          currentIndex: _currentIndex,
          elevation: 0,
          backgroundColor: Colors.black,
          onTap: (index) => _navBarIndex(index),
          selectedItemColor: Colors.green.shade900,
          unselectedItemColor: Colors.white,
          iconSize: 20,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.home_filled),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.candlestick_chart_outlined), label: "Market"),
            BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Wallet"),
            BottomNavigationBarItem(
                icon: Icon(Icons.currency_exchange), label: "P2P"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ]),
      body: _screens[_currentIndex],
    );
  }
}

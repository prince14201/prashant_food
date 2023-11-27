import 'package:flutter/material.dart';
import 'package:prashant_food/presentation/dashboard/account/account_tab.dart';
import 'package:prashant_food/presentation/dashboard/feed/feed_tab.dart';
import 'package:prashant_food/presentation/dashboard/home/home_tab.dart';
import 'package:prashant_food/presentation/dashboard/orders/orders_tab.dart';
import 'package:prashant_food/presentation/resources/color_manager.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

   List<Widget> pages = [
    const HomeTab(),
    const OrdersTab(),
    const FeedTab(),
    const AccountTab()
  ];

   List<String> titles = [
    'Home',
    'Orders',
    'Feed',
    'Account',
  ];

  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: ColorManager.lightGrey, spreadRadius: 1)
        ]),
        child: BottomNavigationBar(
          selectedItemColor: ColorManager.primary,
          unselectedItemColor: ColorManager.grey,
          currentIndex: _currentIndex,
          onTap: onTap,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: titles[0]),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), label: titles[1]),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: titles[2]),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: titles[3]),
          ],
        ),
      ),
    ));
  }
   onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
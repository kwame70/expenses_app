import 'package:expense_tracker/pages/add_expenses.dart';
import 'package:expense_tracker/pages/statistics_page.dart';
import 'package:expense_tracker/pages/welcome.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  List<Widget> pages = const [Welcome(), AddExpense(), Statistics()];

  @override
  Widget build(BuildContext context) {
    const Color whiteColor = Colors.white;
    return Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: NavigationBar(
          indicatorColor: Colors.black,
          backgroundColor: Colors.grey,
          onDestinationSelected: (value) {
            setState(() {
              currentPageIndex = value;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  color: whiteColor,
                  Icons.home,
                  size: 35,
                ),
                label: "Home"),
            NavigationDestination(
                icon: Icon(
                  color: whiteColor,
                  Icons.add_circle_outline_sharp,
                  size: 35,
                ),
                label: "Add Expenses"),
            NavigationDestination(
                icon: Icon(
                  color: whiteColor,
                  Icons.analytics_outlined,
                  size: 35,
                ),
                label: "Statistics"),
          ]),
      body: pages[currentPageIndex],
    );
  }
}

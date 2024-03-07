import 'package:expense_tracker/pages/add_expenses.dart';
import 'package:expense_tracker/pages/statistics_page.dart';
import 'package:expense_tracker/pages/welcome.dart';
import 'package:expense_tracker/widgets/activity_card.dart';
import 'package:expense_tracker/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 1;

  List<Widget> pages = const [Welcome(), AddExpense(), Statistics()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          backgroundColor: Color.fromARGB(255, 134, 218, 239),
          onDestinationSelected: (value) {
            setState(() {
              currentPageIndex = value;
            });
          },
          selectedIndex: currentPageIndex,
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.home,
                  size: 35,
                ),
                label: "Home"),
            NavigationDestination(
                icon: Icon(
                  Icons.add_circle_outline_sharp,
                  size: 35,
                ),
                label: "Add Expenses"),
            NavigationDestination(
                icon: Icon(
                  Icons.analytics_outlined,
                  size: 35,
                ),
                label: "Statistics"),
          ]),
      body: pages[currentPageIndex],
    );
  }
}

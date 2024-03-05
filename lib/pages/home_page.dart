import 'package:expense_tracker/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ListTile(
                title: const Text("Welcome!"),
                subtitle: const Text("killer Nkuto"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                ),
                leading: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/male_avatar.png"),
                  radius: 22,
                ),
              ),
              const MyCard(totalExp: "\$ 2,000  USD"),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:expense_tracker/widgets/activity_card.dart';
import 'package:expense_tracker/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Recent Activities",
              style: TextStyle(fontSize: 25),
            ),
            const ActivityCard(
                category: "Shopping",
                icon: Icons.shopping_bag_outlined,
                notes: "Nike shop",
                amount: 60)
          ],
        ),
      ),
    );
  }
}

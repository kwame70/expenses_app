import 'package:expense_tracker/constants/constants.dart';
import 'package:expense_tracker/constants/entry_list.dart';
import 'package:expense_tracker/widgets/activity_card.dart';
import 'package:expense_tracker/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    // Map of icon names to IconData
    final Map<String, IconData> iconDataMap = {
      "shopping_bag_outlined": Icons.shopping_bag_outlined,
      "home_outlined": Icons.home_outlined,
      "fastfood_outlined": Icons.fastfood_outlined,
      "card_travel_outlined": Icons.card_travel_outlined,
      "widgets_outlined": Icons.widgets_outlined,
    };

    // icon colors for each category
    Color iconColors(String iconCategory) {
      switch (iconCategory) {
        case "Shopping":
          return Colors.blueAccent;
        case "Rent":
          return Colors.greenAccent;
        case "Food":
          return Colors.amberAccent;
        case "Others":
          return Colors.orangeAccent;
        case "Travel":
          return Colors.pinkAccent;

        default:
          return Colors.white;
      }
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: const Text(
                "Welcome!",
                style: Constants.whiteColorTextStyle,
              ),
              subtitle: const Text(
                "killer Nkuto",
                style: Constants.whiteColorTextStyle,
              ),
              trailing: IconButton(
                color: Colors.white,
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                ),
              ),
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/male_avatar.png"),
                radius: 22,
              ),
            ),
            //main card
            const MyCard(totalExp: "\$ 10,000  USD"),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Recent Activities",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: entries.length,
              itemBuilder: (context, index) {
                final entryList = entries[index];
                //activity card
                return ActivityCard(
                    bgColor: Colors.white,
                    iconBgColor: iconColors(entryList["category"].toString()),
                    category: entryList["category"].toString(),
                    icon: iconDataMap[entryList["icon"].toString()]!,
                    notes: entryList["notes"].toString(),
                    amount: entryList["amount"] as double);
              },
            )),

            // const ActivityCard(
            //     category: "Shopping",
            //     icon: Icons.shopping_bag_outlined,
            //     notes: "Nike shop",
            //     amount: 60)
          ],
        ),
      ),
    );
  }
}

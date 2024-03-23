import 'package:expense_tracker/constants/constants.dart';
import 'package:flutter/material.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  IconData selectedIcon = Icons.category_rounded;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Add Expenses"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Center(
              //add expenses
              child: SizedBox(
                width: 200,
                child: TextField(
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    prefixText: "\$",
                    hintText: "0",
                    hintStyle: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    focusedBorder: Constants.blueBorder,
                    enabledBorder: Constants.blueBorder,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // category selection
            DropdownMenu(
                controller: controller,
                enabled: true,
                requestFocusOnTap: false,
                hintText: "Select category",
                onSelected: (value) {
                  setState(() {
                    // selectedIcon = value as IconData;
                  });
                },
                leadingIcon: Icon(selectedIcon),
                width: 390,
                initialSelection: "clock",
                inputDecorationTheme: const InputDecorationTheme(
                  focusedBorder: Constants.recBlueBorder,
                  enabledBorder: Constants.recBlueBorder,
                ),
                menuStyle: const MenuStyle(
                  side: MaterialStatePropertyAll(
                    BorderSide(
                      color: Color.fromRGBO(89, 213, 244, 1),
                    ),
                  ),
                ),
                dropdownMenuEntries:
                    IconDisplay.values.map<DropdownMenuEntry<IconDisplay>>((e) {
                  return DropdownMenuEntry(value: e, label: e.label);
                }).toList()

                //   const <DropdownMenuEntry<IconData>>[
                // DropdownMenuEntry(
                //     value: Icons.access_alarms_outlined, label: "clock"),
                // DropdownMenuEntry(
                //     value: Icons.accessibility_rounded,
                //     label: "accessibility"),
                // DropdownMenuEntry(value: Icons.abc, label: "alpha"),
                ),

            const SizedBox(
              height: 20,
            ),
            // additional notes
            const TextField(
              decoration: InputDecoration(
                hintText: "Additional notes",
                focusedBorder: Constants.recBlueBorder,
                enabledBorder: Constants.recBlueBorder,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //add expense button
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.save),
              label: const Text("Add expense"),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

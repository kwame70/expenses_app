import 'package:expense_tracker/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  IconData selectedIcon = Icons.category_rounded;

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(89, 213, 244, 1),
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(30),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Add Expenses"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,

          children: [
            const Center(
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
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownMenu(
                hintText: "Select category",
                onSelected: (value) {
                  setState(() {
                    selectedIcon = value as IconData;
                  });
                },
                leadingIcon: Icon(selectedIcon),
                initialSelection: "Shopping",
                width: 250,
                inputDecorationTheme: const InputDecorationTheme(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    color: Color.fromRGBO(89, 213, 244, 1),
                  )),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(89, 213, 244, 1),
                    ),
                  ),
                ),
                menuStyle: const MenuStyle(
                  shape: MaterialStatePropertyAll(CircleBorder()),
                  side: MaterialStatePropertyAll(
                    BorderSide(
                      color: Color.fromRGBO(89, 213, 244, 1),
                    ),
                  ),
                ),
                dropdownMenuEntries: const <DropdownMenuEntry<IconData>>[
                  DropdownMenuEntry(
                      value: Icons.shopping_cart_checkout, label: "Shopping"),
                  DropdownMenuEntry(
                      value: Icons.fastfood_outlined, label: "Food"),
                  DropdownMenuEntry(
                      value: Icons.card_travel_outlined, label: "Travel"),
                  DropdownMenuEntry(value: Icons.house_outlined, label: "Rent"),
                  DropdownMenuEntry(value: Icons.outbox_sharp, label: "Other"),
                ]),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromRGBO(89, 213, 244, 1),
                )),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: Color.fromRGBO(89, 213, 244, 1),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.save),
              label: const Text("Add expense"),
            ),
          ],
        ),
      ),
    );
  }
}

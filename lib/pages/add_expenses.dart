import 'package:expense_tracker/constants/constants.dart';
import 'package:flutter/material.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  IconDisplay? selectedIcon;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 50,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("Add Expenses"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
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
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    focusedBorder: Constants.blackCircBorder,
                    enabledBorder: Constants.blackCircBorder,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // category selection
            DropdownMenu<IconDisplay>(
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                controller: controller,
                // enableFilter: true,
                requestFocusOnTap: false,
                hintText: "Select category",
                onSelected: (IconDisplay? value) {
                  setState(() {
                    selectedIcon = value;
                  });
                },
                leadingIcon: Icon(
                    color: Colors.white,
                    //selecting enum's icon value
                    selectedIcon?.icon ?? Icons.shopping_cart_outlined),
                trailingIcon: const Icon(
                  Icons.arrow_drop_down_circle_outlined,
                  color: Colors.white,
                ),
                width: 390,
                initialSelection: IconDisplay.shopping,
                inputDecorationTheme: const InputDecorationTheme(
                  focusedBorder: Constants.blackBorder,
                  enabledBorder: Constants.blackBorder,
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
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
              style: Constants.whiteColorTextStyle,
              decoration: InputDecoration(
                hintText: "Additional notes",
                hintStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                focusedBorder: Constants.blackBorder,
                enabledBorder: Constants.blackBorder,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //add expense button
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.save,
                color: Colors.white,
              ),
              label: const Text(
                "Add expense",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 25,
                backgroundColor: Colors.black,
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

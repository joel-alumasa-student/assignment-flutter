import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DropdownMenuClass extends StatefulWidget {
  DropdownMenuClass({super.key});

  @override
  State<DropdownMenuClass> createState() => _DropdownMenuClassState();
}

class _DropdownMenuClassState extends State<DropdownMenuClass> {
  // For the drop down menu
  String dropdownvalue = 'Select Your Year';

// List of items in our dropdown menu
  var items = [
    'Select Your Year', // This is to show the initial option
    'Year 1',
    'Year 2',
    'Year 3',
    'Year 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: // Dropdown menu to show options for the year
          DropdownButtonFormField(
        // Initial Value
        value: dropdownvalue,

        // A decoration style that matches the text fields is used
        decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(),
        ),
        // Down Arrow Icon
        icon: const Icon(Icons.keyboard_arrow_down),

        // Array list of items to be displayed
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(
              items,
            ),
          );
        }).toList(),
        // After selecting the desired option,it will
        // change button value to selected value
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
        },
      ),
    );
  }
}

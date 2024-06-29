import 'dart:ui';

import 'package:flutter/material.dart';


class ExpenseEntry extends StatefulWidget {
  const ExpenseEntry({Key? key}) : super(key: key);

  @override
  _ExpenseEntryState createState() => _ExpenseEntryState();
}

class _ExpenseEntryState extends State<ExpenseEntry> {

  @override
  Widget build(BuildContext context) {
    
  TextEditingController nameController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  const dropdownMenuEntries = <String>['Food', 'Travel', 'Entertainment'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Your Expense'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          TextField(
            controller: nameController,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "Enter Name",
              prefixIcon: Icon(Icons.abc, color:Colors.black),
              ),
            ),
            const SizedBox(
              height: 20.0
            ),
            const Text(
              'Select Category',
              style: TextStyle(color: Colors.black),

            ),
            
              DropdownButton(
                items: dropdownMenuEntries.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                },
              ),
            
          ]
        ),
      ),
    );

  }
}
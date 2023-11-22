import 'package:flutter/material.dart';

class DropdownOption extends StatefulWidget {
  const DropdownOption({super.key});

  @override
  State<DropdownOption> createState() => _DropdownOptionState();
}

class _DropdownOptionState extends State<DropdownOption> {

var _selectLocation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: _selectLocation,
                hint: Text('Select Location',style: TextStyle(color: Colors.blue),),
                items: <String>['A', 'B', 'C', 'D'].map((String value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                     _selectLocation = value;
                  });
                }),
          ],
        ),
      ),
    );
  }
}

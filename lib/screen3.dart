import 'package:demo2/screen4.dart';
import 'package:demo2/screen5.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  String dropdownValue = 'List of Products we take';
  bool _value = false;
  int val = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green.shade50,
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'MET - A - FOUR',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 20,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: <String>[
                    'List of Products we take',
                    'Electronic Waste',
                    'Paper Waste',
                    'Metal Waste',
                    'Plastic Waste',
                    'Raw Waste',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 56,
                width: 220,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screen4()),
                    );
                  },
                  child: Text('Upload Images of Products'),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              ListTile(
                title: Text("Exchange with Plants"),
                leading: Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {});
                  },
                  activeColor: Colors.green,
                ),
              ),
              ListTile(
                title: Text("Exchange with Recycled Products"),
                leading: Radio(
                  value: 2,
                  groupValue: val,
                  onChanged: (value) {
                    setState(() {});
                  },
                  activeColor: Colors.green,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Screen5()),
                      );
                    },
                    child: Text('Proceed')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

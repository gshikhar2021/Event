import 'package:demo2/screen1.dart';
import 'package:demo2/screen3.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green.shade50,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image(
                image: AssetImage('images/3.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '"Waste isn’t waste until we waste it”',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'MET-A-FOUR is an app to help you to get rid of non-biodegradable waste products\n lying at your home',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                height: 50,
                width: 200,
                // color: Colors.yellowAccent,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screen3()),
                    );
                  },
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

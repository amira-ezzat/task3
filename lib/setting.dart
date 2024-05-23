import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_3/Settings/about.dart';
import 'package:task_3/Settings/changeNumber/change.dart';
import 'package:task_3/Settings/help.dart';

class Settings extends StatefulWidget {


  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  Color borderColor =  Colors.transparent;
  Color borderColor2 = Colors.transparent;
  Color borderColor3 = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#FAFAFA'),
        title: Text(
          'Settings',
          style:TextStyle(
            fontFamily: 'font1'
          ),
        ),
        leading: Icon(Icons.arrow_back_ios,//color: HexColor(' #3E3E3E')
     ),
      ),
      body: Container(
        color: HexColor('F5F5F5'),
        width: double.infinity,
        child: Center(
          child: Column(
            children: [
              SizedBox(height:20),
              GestureDetector(

            onTapUp: (_) {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangeNumber()),
              );
            },
            child: Container(
              width: 345,
              height: 51,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: borderColor, width: 2), // Use borderColor dynamically
              ),
              child: Row(
                children: [
                  SizedBox(width: 5),
                  Image.asset(
                    'assets/image/c.png',
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'Change Number Request',
                    style: TextStyle(fontFamily: 'font1'),
                  ),
                ],
              ),
            ),
          ),
              SizedBox(height:3),
              GestureDetector(

                onTapUp: (_) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Help()),
                  );
                },
                child: Container(
                  width: 345,
                  height: 51,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: borderColor2, width: 2), // Use borderColor dynamically
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 5),
                      Image.asset(
                        'assets/image/hh.png',
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Help&Support',
                        style: TextStyle(fontFamily: 'font1'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height:3),
              GestureDetector(

                onTapUp: (_) {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => About()),
                  );
                },
                child: Container(
                  width: 345,
                  height: 51,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: borderColor3, width: 2), // Use borderColor dynamically
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 5),
                      Image.asset(
                        'assets/image/a.png',
                        width: 30,
                        height: 30,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'About',
                        style: TextStyle(fontFamily: 'font1'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

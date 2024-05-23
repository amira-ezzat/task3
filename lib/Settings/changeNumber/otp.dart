import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'changeVerfid.dart';

class ShowDialogChangeLanguage extends StatefulWidget {
  @override
  State<ShowDialogChangeLanguage> createState() =>
      _ShowDialogChangeLanguageState();
}

class _ShowDialogChangeLanguageState extends State<ShowDialogChangeLanguage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: AlertDialog(
          backgroundColor: HexColor('#FFFFFF'),
          surfaceTintColor: Colors.white,
          title: Row(
            children: [
              Text(
                '  Enter OTP',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                icon: Image.asset(
                  'assets/image/ex.png',
                  width: 14,
                  height: 14,
                ),
              ),
            ],
          ),
          titlePadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          contentPadding: EdgeInsets.zero,
          content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                height: 30,
                width: 34,
                child: Center(child: Text('5',
                    style: TextStyle(fontSize: 15))),
                color: HexColor('#F9F9F9'),
              ),
              SizedBox(
                width:15,
              ),
              Container(
                height: 30,
                width: 34,
                child: Center(child: Text('3',
                    style: TextStyle(fontSize: 15))),
                color: HexColor('#F9F9F9'),
              ),
              SizedBox(
                width:15,
              ),
              Container(
                height: 30,
                width: 34,
                child: Center(child: Text('6',
                    style: TextStyle(fontSize: 15))),
                color: HexColor('#F9F9F9'),
              ),
              SizedBox(
                width:15,
              ),
              Container(
                height: 30,
                width: 34,
                child: Center(child: Text('2',
                    style: TextStyle(fontSize: 15))),
                color: HexColor('#F9F9F9'),
              ),
              SizedBox(
                width:15,
              ),
              Container(
                height: 30,
                width: 34,
                child: Center(
                    child: Text('0',
                      style: TextStyle(fontSize: 15),)
                ),
                color: HexColor('#F9F9F9'),
              ),
            ],
          ),
          actionsPadding: EdgeInsets.zero,
          actions: [
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChangeNumberVerfid()),
                    );
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        color: HexColor('#009D45'),
                        fontSize: 18,
                        fontFamily: 'font1'
                    ),
                  )),
            ),
          ]),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PaymentHistory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#FAFAFA'),
      appBar: AppBar(
        //backgroundColor: HexColor('#FAFAFA'),
        title: Text(
          'Payment History',
          style: TextStyle(
            fontFamily: 'font1',
          ),
        ),
        leading: IconButton(
          onPressed: () {
            // Navigator.push(
            //   context,MaterialPageRoute(builder: (context) => Settings()),
            // );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height:60,
                      ),
                      Container(
                        color: HexColor('#3E3E3E40'),
                        height: 1,
                        width: 312,
                      ),
                      SizedBox(
                        height:60,
                      ),
                      Container(
                        color: HexColor('#3E3E3E40'),
                        height: 1,
                        width: 312,
                      ),
                      SizedBox(
                        height:60,
                      ),
                      Container(
                        color: HexColor('#3E3E3E40'),
                        height: 1,
                        width: 312,
                      ),
                      SizedBox(
                        height:60,
                      ),
                      Container(
                        color: HexColor('#3E3E3E40'),
                        height: 1,
                        width: 312,
                      ),
                    ],

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: HexColor('#D9D9D9'),
        height: 70,
        child: Align(
          alignment: AlignmentDirectional.topEnd,
          child: Text('Total Price: 225',
            style: TextStyle(fontFamily: 'font1',
                fontSize: 12,
              fontWeight: FontWeight.bold,
              color: HexColor('#232323')
            ),),
        ),
      ),
    );
  }
}

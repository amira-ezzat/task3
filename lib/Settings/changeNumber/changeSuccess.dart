import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_3/Settings/changeNumber/changeVerfid.dart';
import '../../setting.dart';
import 'otp.dart';

class ChangeSucessfuly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('F5F5F5'),
      appBar: AppBar(
        backgroundColor: HexColor('#FAFAFA'),
        title: Text(
          'Change Number Request',
          style: TextStyle(
            fontFamily: 'font1',
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChangeNumberVerfid()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 330,
                    height: 49,
                    decoration: BoxDecoration(
                      color: HexColor('#FFFFFF'),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: TextFormField(
                      // controller: numberController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: HexColor('#CECECE'),
                          fontSize: 15,
                          fontFamily: 'font1',
                        ),
                        hintText: ' Enter Old number',
                        suffixIcon: SizedBox(
                          width: 20,
                          height: 20,
                          child: Center(
                            child: Image.asset(
                              'assets/image/1.png',
                              width: 18,
                              height: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 3),
                  Container(
                    width: 330,
                    height: 49,
                    decoration: BoxDecoration(
                      color: HexColor('#FFFFFF'),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: TextFormField(
                      // controller: numberController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: HexColor('#CECECE'),
                          fontSize: 15,
                          fontFamily: 'font1',
                        ),
                        hintText: ' Enter New number',
                      ),
                    ),
                  ),
                  SizedBox(height: 3),
                  Container(
                    width: 330,
                    height: 49,
                    decoration: BoxDecoration(
                      color: HexColor('#FFFFFF'),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: TextFormField(
                      // controller: numberController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                          color: HexColor('#CECECE'),
                          fontSize: 15,
                          fontFamily: 'font1',
                        ),
                        hintText: ' Confirm New number',
                        suffixIcon: Container(
                          padding: EdgeInsets.only(right: 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Verified',
                                style: TextStyle(
                                  color: HexColor('#009D45'),
                                ),
                              ),
                              SizedBox(width: 4),
                              Image.asset(
                                'assets/image/3.png',
                                width: 24,
                                height: 24,
                                color: HexColor('#009D45'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 460),
                  Container(
                    decoration: BoxDecoration(
                      color: HexColor('#009D45'),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4.0),
                      ),
                    ),
                    width: 330,
                    height: 40,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Update',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.white,
                          fontFamily: 'font1',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Container(
                color: Colors.white.withOpacity(0.7),
              ),
            Positioned(
                bottom: 40, // Adjust this value to move the text upwards
                child: Container(
                  color: Colors.white.withOpacity(0.7),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20), // Add padding for better spacing
                  child: Text(
                    'Update successfully...',
                    style: TextStyle(
                      fontFamily: 'font1',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
// Stack(
//             alignment: AlignmentDirectional.bottomCenter,
//             children: [
//               Positioned(
//                 bottom: 40, // Adjust this value to move the text upwards
//                 child: Container(
//                   color: Colors.white.withOpacity(0.7),
//                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Add padding for better spacing
//                   child: Text(
//                     'Update successfully...',
//                     style: TextStyle(
//                       fontFamily: 'font1',
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
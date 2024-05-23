import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_3/setting.dart';

class About extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  HexColor('#FAFAFA'),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Settings()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),),
        title:  Text(
          'About',
          style:TextStyle(
              fontFamily: 'font1'
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: HexColor('F5F5F5'),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Container(
                  width: 366,
                  height: 671,
                  color:HexColor('#FFFFFF'),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Align(
                          alignment:AlignmentDirectional.topStart,
                          child: Text(
                            'Terms and Conditions:',
                            style: TextStyle(
                              fontFamily: 'font1',
                              fontWeight: FontWeight.bold,
                              fontSize: 17
                            ),
                          ),
                        ),
                        Text(
                            '       Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                          style: TextStyle(
                              fontFamily: 'font1',
                    
                          ),
                        ),
                        SizedBox(height: 15,),
                        Align(
                          alignment:AlignmentDirectional.topStart,
                          child: Text(
                            'Founded On :',
                            style: TextStyle(
                                fontFamily: 'font1',
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                            ),
                          ),
                        ),
                        Text(
                         '               It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ',
                          style: TextStyle(
                            fontFamily: 'font1',
                    
                          ),
                        ),
                        SizedBox(height: 15,),
                        Align(
                          alignment:AlignmentDirectional.topStart,
                          child: Text(
                            'Open Source :',
                            style: TextStyle(
                                fontFamily: 'font1',
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                            ),
                          ),
                        ),
                        Text(
                         '               It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.' ,
                          style: TextStyle(
                            fontFamily: 'font1',
                    
                          ),
                        ),
                        SizedBox(height: 15,),
                        Align(
                          alignment:AlignmentDirectional.topStart,
                          child: Text(
                            'App Version :',
                            style: TextStyle(
                                fontFamily: 'font1',
                                fontWeight: FontWeight.bold,
                                fontSize: 17
                            ),
                          ),
                        ),
                        Text(
                          'Google  issued licensed  APK v1.01.01'
                          'Copy rights by tanni dabba pvt ltd...',
                          style: TextStyle(
                            fontFamily: 'font1',
                    
                          ),
                        ),
                      ],
                    ),
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

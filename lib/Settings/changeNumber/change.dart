import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../setting.dart';
import 'otp.dart';

class ChangeNumber extends StatelessWidget {
  // var numberController=TextEditingController();

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
              MaterialPageRoute(builder: (context) => Settings()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(21.0),
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
                    suffixIcon: GestureDetector(
                      onTap: () {
                        showDialog(
                          barrierColor: Colors.white.withOpacity(0.7),
                          context: context,
                          builder: (context) => ShowDialogChangeLanguage(),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(right: 8),
                        child: Row(
                          mainAxisSize:
                              MainAxisSize.min, // Ensure Row takes minimal space
                          children: [
                            Text(
                              'Send OTP',
                              style: TextStyle(
                                color: HexColor(
                                    '#009D45'), // Match the text color to the icon
                              ),
                            ),
                            SizedBox(
                                width:
                                    4), // Add some spacing between text and image
                            Image.asset(
                              'assets/image/arr.png',
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
              ),
              SizedBox(height: 460,),
              Container(

                decoration: BoxDecoration(

                  color: HexColor('#009D45'),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                ),
                width:330,
                height: 40,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Update',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.white,
                      fontFamily: 'font1',
                      fontWeight: FontWeight.bold
                    ),
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

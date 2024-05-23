import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_3/Settings/changeNumber/setting.dart';

class Help extends StatelessWidget {
  var messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#F5F5F5'),
      appBar: AppBar(
        backgroundColor: HexColor('#FAFAFA'),
        title: Text(
          'Help&Support',
          style: TextStyle(fontFamily: 'font1'),
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
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Container(
            color: HexColor('#F5F5F5'),
            width: double.infinity,

            child: Column(
             // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 68),
                Image(
                  image: AssetImage('assets/image/s.png'),
                ),
                Text(
                  'taniyavan',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 60),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 13.0,
                      horizontal: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: HexColor('#FFFFFF'),
                      borderRadius: BorderRadiusDirectional.only(
                        bottomStart: Radius.circular(20.0),
                        bottomEnd: Radius.circular(20.0),
                        topStart: Radius.circular(20.0),
                      ),
                    ),
                    child: Text(
                      'I need a last transaction \ndetails.',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'font1',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.0),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 13.0,
                      horizontal: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: HexColor('#FFFFFF'),
                      borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(20.0),
                        topEnd: Radius.circular(20.0),
                        bottomStart: Radius.circular(20.0),
                      ),
                    ),
                    child: Text(
                      'Welcome to tanni dabba !',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'font1',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 200),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 344,
                        height: 48,
                        color: HexColor('#FFFFFF'),
                        child: TextFormField(
                          controller: messageController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '  Type here to start with tanni !',
                            hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/image/ss.png',
                                width: 31,
                                height: 31,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
               // SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

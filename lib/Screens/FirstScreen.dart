import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/BloodPressure.dart';
import 'package:untitled/Screens/Widgets/syncbutton.dart';
import 'package:untitled/Screens/dashboard_tab.dart';

import 'Widgets/OptionsList.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Container(
                  height: size.height * 0.2,
                  child: Padding(
                    padding: EdgeInsets.all(size.width * 0.02),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/icons/Plus.png"),
                            SizedBox(
                              width: size.width * 0.01,
                            ),
                            Text(
                              "Sync Device",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(size.height * 0.01),
                          child: Row(
                            children: [
                              Text(
                                "Choose the device that "
                                "\n you would like to sync",
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xFF6D6B98)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
              Container(
                height: size.height * 0.7,
                decoration: BoxDecoration(
                    color: Color(0xffE5E5E5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 0.03,
                      ),

                      OptionsList(
                        title: "Glucose Meter",
                        iconpath: "assets/icons/Plus.png",
                      ),
                      OptionsList(
                        title: "Insulin Pin",
                        iconpath: "assets/icons/Plus.png",
                      ),
                      OptionsList(
                        title: "BP Monitor",
                        iconpath: "assets/icons/Plus.png",
                      ),
                      OptionsList(
                        title: "Weight Scale",
                        iconpath: "assets/icons/Plus.png",
                      ),
                      OptionsList(
                        title: "Wearables",
                        iconpath: "assets/icons/Plus.png",
                      ),
                      SizedBox(
                        height: size.height * 0.03,
                      ),

                      // ignore: deprecated_member_use
                      //   Container(
                      //     width: size.width *0.5,
                      //
                      //     // ignore: deprecated_member_use
                      //     child: Expanded(
                      //       // ignore: deprecated_member_use
                      //       child: FlatButton.icon(
                      //         onPressed: (){},
                      //         label:
                      //         Text("sync Devices",style: TextStyle(fontSize: 18,color: Colors.white70),),icon: Icon(Icons.height),
                      //           color: Color(0xff1A3D67
                      //           ),
                      // shape: RoundedRectangleBorder(
                      // borderRadius: BorderRadius.circular(20)
                      // )
                      //           ,
                      //
                      //
                      //
                      //       ),
                      //     ),
                      //   ),
                      syncbtton(title: "Sync Now",
                        size: size,
                        route: DashBoardTab.routname,
                      )
                    ],
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

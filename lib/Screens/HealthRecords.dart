import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/CustomCard.dart';
import 'Widgets/syncbutton.dart';

class HealthRecords extends StatelessWidget {
  @override
  Widget build(BuildContext context) {  var size = MediaQuery.of(context).size;
  return Scaffold(
    backgroundColor: Color(0xffF4F4F4),
    body: Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: size.height * 0.1,
                child: Column(
                  children: [
                    //icons row
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.01,
                          horizontal: size.width * 0.01),
                      child: Row(
                        children: [
                          Image.asset("assets/icons/add.png"),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "Health Records",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            SingleChildScrollView(
              child: Container(
                height: size.height * 0.6,
                decoration: BoxDecoration(
                    color: Color(0xffFFFFFF),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: size.height * 0.02,
                            horizontal: size.width * 0.02),
                        child: Row(
                          children: [
                            Image.asset("assets/icons/Drop.png"),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Blood Glucose",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),   //   CustomCard(),
CustomCard(height: size.height * 0.6/3,
width: size.width * 0.90,),
                      // This is a Custom Card widget created to show the health records
CustomCard(height: size.height * 0.6/3,
width: size.width * 0.90,),
CustomCard(height: size.height * 0.6/3,
width: size.width * 0.90,),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: size.height * 0.02,
                            horizontal: size.width * 0.02),
                        child: Row(
                          children: [
                            Image.asset("assets/icons/Drop.png"),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Blood Sugar",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                      CustomCard(height: size.height * 0.6/3,
width: size.width * 0.90,),
CustomCard(height: size.height * 0.6/3,
width: size.width * 0.90,),
CustomCard(height: size.height * 0.6/3,
width: size.width * 0.90,),
                      SyncButton(size: size, route: "",title: "Sync Device",),
                      // This is a Custom Card widget created to show the health records

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

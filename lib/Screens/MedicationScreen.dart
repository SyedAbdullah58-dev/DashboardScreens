import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/Widgets/OptionsList.dart';

import 'Widgets/syncbutton.dart';

class MedicationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: size.height *0.01),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(

                  height: size.height * 0.1,
                  child: Column(
                    children: [
                      //icons row
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: size.height*0.01,horizontal: size.width *0.01),
                        child: Row(
                          children: [
                            Image.asset("assets/icons/add.png"),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "Medication",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              Container(
                height: size.height * 0.6,
                decoration: BoxDecoration(
                    color: Color(0xffE5E5E5),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                     Padding(
                       padding: EdgeInsets.all(size.width *0.05),
                       child: Row(children: [ Text("Take a photo from your medcation \n container or strip ",style: TextStyle(
                           color: Color(0xff6D6B98),fontSize: 16

                       ),),],),
                     ),

                     OptionsList(title: "Upload Picture",iconpath: "assets/icons/camera.png",),
                      Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffFFFFFF),
                            hintText: "Blood Pressure Per diastolic",
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.white70, width: 2.0),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),


                      SyncButton(size: size, route: "",title: "confirm",),
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

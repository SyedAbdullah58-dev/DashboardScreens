import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/syncbutton.dart';

class SleepScreen extends StatelessWidget {

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
                              "Weight",
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
                        padding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Container(

                          decoration: BoxDecoration( borderRadius: BorderRadius.circular(10.0),    color: Color(0xffFFFFFF),),

                          child: DropdownButton(
                            hint: Text("Select time"),
                            dropdownColor: Color(0xffFFFFFF),
                            isExpanded: true,
                            focusColor: Color(0xffFFFFFF),
                            icon: Icon(Icons.arrow_drop_down,color: Color(0xff1A3D67),),items: [



                          ],

                          ),
                        ),
                      ),
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
                      SizedBox(height: size.height * 0.2,),
                      syncbtton(size: size, route: ""),
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

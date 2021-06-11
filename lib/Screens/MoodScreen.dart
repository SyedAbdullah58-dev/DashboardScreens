import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/syncbutton.dart';

class MoodScreen extends StatelessWidget {


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
                              "Mood",
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
                            hint: Text("Select Time"),
                            dropdownColor: Color(0xffFFFFFF),
                            isExpanded: true,
                            focusColor: Color(0xffFFFFFF),
                            icon: Icon(Icons.arrow_drop_down,color: Color(0xff1A3D67),),items: [



                          ],

                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: size.width *0.04,vertical: size.height * 0.01),
                        child: Row(
                          children: [
                            Text(
                              "In general, how did you"
                                  "\n feel today?",
                              style: TextStyle(fontFamily: "Raleway",
                                  fontSize: 16, color: Color(0xFF6D6B98)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: size.height*0.03,),
                      DefaultTabController(length: 4, child: Row(

                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Container(

                        height: size.height * 0.16,
                        child:

                          TabBar(
                          onTap: (num) {


                          },
                          labelColor: Colors.white70,
                          isScrollable: true,
                          indicatorColor: Colors.blue,
                          indicator: BoxDecoration(
                              color: Color(0xff1A3D67),
                              borderRadius: BorderRadius.circular(10)),
                          tabs: [



                            Tab(
                              icon: Icon(Icons.person,
                                  size: 40, color: Colors.black,),text: "Happy",
                            ),
                            Tab(
                              icon: Icon(Icons.sports_cricket_outlined,
                                  size: 40, color: Colors.black,),text: "Sad"
                            ),
                            Tab(
                              icon: Icon(Icons.medical_services_outlined,
                                  size: 40, color: Colors.black),text: "Depressed"
                            ),
                            Tab(
                              icon: Icon(Icons.face, size: 40, color: Colors.black),text: "Neutral"
                            ),

                          ],
                        ),
                      )],))
,
                      SizedBox(height: size.height * 0.1,),
                      syncbtton(size: size, route: "",title: "Confirm"),
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

import 'package:flutter/material.dart';
import 'package:untitled/Screens/BloodGlucose.dart';
import 'package:untitled/Screens/BloodPressure.dart';
import 'package:untitled/Screens/ExerciseScreen.dart';
import 'package:untitled/Screens/MoodScreen.dart';
import 'package:untitled/Screens/WeightScreen.dart';
class DashBoardTab extends StatefulWidget {static const routname= "/db";
  final size;
  const DashBoardTab({Key key, this.size}) : super(key: key);
  @override
  _DashBoardTabState createState() => _DashBoardTabState();
}

class _DashBoardTabState extends State<DashBoardTab> {

  @override
  Widget build(BuildContext context) {
    var sizescreen = MediaQuery.of(context).size;
    var currenttab;

    Color iconcolor = Colors.black;
    return DefaultTabController(
        length: 7,
        child: Scaffold(
          body: Container(
            child: Column(
              children: [
                SizedBox(
                  height: sizescreen.height * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: sizescreen.height * 0.01,
                      horizontal: sizescreen.width * 0.01),
                  child: Row(
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                          color: Color(0xff4AAF96),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: sizescreen.width,
                  height: sizescreen.height * 0.1,
                  child: TabBar(
                    onTap: (num) {

                      setState(() {
                        currenttab = num;
                        print("bawa ; $currenttab"
                            "");

                      });
                    },
                    labelColor: Colors.white70,
                    isScrollable: true,
                    indicatorColor: Colors.blue,
                    indicator: BoxDecoration(
                        color: Color(0xff1A3D67),
                        borderRadius: BorderRadius.circular(10)),
                    tabs: [


                      Tab(
                        icon: Icon(Icons.dashboard_outlined,
                            size: 25, color: iconcolor,),
                      ),
                      Tab(
                        icon: Icon(Icons.person, size: 25, color: currenttab==0 ?  Colors.white: Colors.black),
                      ),
                      Tab(
                        icon: Icon(Icons.check_box_outline_blank,
                            size: 25, color: Colors.black),
                      ),
                      Tab(
                        icon: Icon(Icons.sports_cricket_outlined,
                            size: 25, color: Colors.black),
                      ),
                      Tab(
                        icon: Icon(Icons.medical_services_outlined,
                            size: 25, color: Colors.black),
                      ),
                      Tab(
                        icon: Icon(Icons.face, size: 25, color: Colors.black),
                      ),
                      Tab(
                        icon: Icon(Icons.medical_services_outlined,
                            size: 25, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(
                  children: [
                    BloodPressure(),
                    WeightScreen(),
                    BloodGlucose(),
                    ExcerciseScreen(),
                   MoodScreen(),
                    BloodPressure(),
                    BloodPressure(),
                  ],
                ))
              ],
            ),
          ),
        ));
  }
}

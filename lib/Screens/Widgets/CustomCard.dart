import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Screens/Widgets/CardRow.dart';

class CustomCard extends StatelessWidget {
  final height;
  final width;

  const CustomCard({Key key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      width: width,
      color: Color(0xffF4F4F4),
      height: height,
      child: Card(
        elevation: 2,
        color: Color(0xffF4F4F4),
        child: Column(
          children: [
           cardRow(padding: width * 0.01,title:"Date",value: "22 May 2020" ), // A Custom widget for the Card Row
           cardRow(padding: width * 0.01,title:"Glucose",value: "7.8 mm/lo" ), // A Custom widget for the Card Row
           cardRow(padding: width * 0.01,title:"Period",value: "After lunch" ), // A Custom widget for the Card Row
           cardRow(padding: width * 0.01,title:"Time",value: "09 May  2020" ), // A Custom widget for the Card Row
          ],
        ),
      ),
    );
  }
}

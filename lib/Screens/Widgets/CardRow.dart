import 'package:flutter/cupertino.dart';

Widget cardRow({double padding,String title, String value})
{
  return      Padding(
    padding: EdgeInsets.all(padding),
    child: Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: SizedBox(),
        ),
        Text(value,
            style: TextStyle(color: Color(0xff7B8BB2), fontSize: 10))
      ],
    ),
  );

}
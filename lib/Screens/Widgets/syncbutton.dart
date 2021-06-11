import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SyncButton extends StatelessWidget {
  final Size size;
  final String route;
  final String title;

  const SyncButton({Key key, this.size, this.route,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
       // ignore: deprecated_member_use
       SizedBox(
         width: size.width * 0.6,
         // ignore: deprecated_member_use
         child: FlatButton(
           child: Row(
             children: [
               Text(
                 title,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 18.0,
                   fontFamily: "Raleway",
                 ),
               ),
               Expanded(child: Container(),),
               Icon(Icons.radio_button_off_outlined,color: Colors.white70,)

             ],
           ),
           onPressed: () {
             Navigator.of(context).pushNamed(route);
           },
           textColor: Colors.white,
           color: Color(0xff1A3D67),
           shape: OutlineInputBorder(
               borderSide: BorderSide(
                   style: BorderStyle.solid, width: 1.0, color: Colors.black),
               borderRadius: new BorderRadius.circular(20.0)),
         ),
       );
  }
}

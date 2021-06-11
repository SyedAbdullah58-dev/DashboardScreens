import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OptionsList extends StatelessWidget {
  final String title, iconpath;

  const OptionsList({Key key, this.title, this.iconpath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Card(
      margin: EdgeInsets.symmetric(
          vertical: size.height * 0.01, horizontal: size.width * 0.02),
      child: ListTile(
        trailing: Image.asset(iconpath),
        title: Text(title),
      ),
    );
  }
}

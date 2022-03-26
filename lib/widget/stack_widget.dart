import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({Key key}) : super(key: key);
  static String routeName = '/widget/stack';
  @override
  State<StackWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scaffold(
        body:Stack(
          // fit: StackFit.loose,
          // overflow: Overflow.clip,
          children: <Widget>[
            Container(
              width: 300,
              height: 300,
              color: Colors.green,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
            )
          ],
        ),
      ),
    );
  }
}

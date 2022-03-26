import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstranBoxWidget extends StatefulWidget {
  const ConstranBoxWidget({Key key}) : super(key: key);
  static String routeName = '/widget/constranbox';
  @override
  State<ConstranBoxWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<ConstranBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scaffold(
        body: Container(
          child:ConstrainedBox(
            constraints: BoxConstraints(
              // minWidth: ,
              // minHeight: ,
              // maxWidth: ,
              // maxHeight:
            ),
          )
        ),
      ),
    );
  }
}

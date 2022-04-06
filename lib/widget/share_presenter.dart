import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/Data.dart';
import '../service/service_api.dart';
import '../utils/constant.dart';
import '../utils/shared_pref.dart';

class SharePreSenter extends StatefulWidget {
  const SharePreSenter({Key key}) : super(key: key);
  static String routeName = '/widget/share';
  @override
  State<SharePreSenter> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<SharePreSenter> {
  int i;
  SharedPref pref;
  ServiceApi api;
  var data;
  @override
  void initState() {
    api=ServiceApi();
    data= api.getData();
    log('run tiếp');
    super.initState();

    // getNumber();
  }

   getNumber()async{
    i=await SharedPref.getInt(ConstantKey.keyNumber);
    setState(() {

    });
    log('number $i');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scaffold(
        body: Container(
          child: Center(
            child:i!=null? Text('$i'):Text(''),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              i++;
            });
            SharedPref.putInt(ConstantKey.keyNumber, i);
          },
          child: Icon(Icons.repeat),
        ),
      ),
    );
  }
}

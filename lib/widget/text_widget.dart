import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({Key key}) : super(key: key);
  static String routeName = '/widget/text';

  @override
  State<TextWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scaffold(
        body: Container(
            color: Colors.red,
            height: 100,
            width: double.infinity,
            child: const Text(
              '12ddddffffffffffffffffffffffffffffffffffffffffff',
              ///Nó được sử dụng để chỉ định cách Text của chúng ta được căn chỉnh theo chiều ngang.
              textAlign: TextAlign.start,
              ///Má cái thằng này giống textAlign thế:)) ít dùng thằng này quá
              textDirection: TextDirection.rtl,
              ///dùng để hiện thị text dạng ....,fade,...
              // overflow: TextOverflow.ellipsis,
              maxLines: 1,
              ///Trường hợp mà text dài quá như trên ấy,bro muốn
              ///hiển thị hết nó
              softWrap: true,
              style: TextStyle(
                fontSize: 35,
                color: Colors.purple,
                // fontWeight: FontWeight.w700,
                // fontStyle: FontStyle.italic,
                // letterSpacing: 10,
                // wordSpacing: 20,
                // backgroundColor: Colors.yellow,
                // shadows: [
                //   Shadow(color: Colors.blueAccent, offset: Offset(2,1), blurRadius:10)
                // ]
              ),
            )),
      ),
    );
  }
}

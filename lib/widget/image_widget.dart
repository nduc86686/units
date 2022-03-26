import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({Key key}) : super(key: key);
  static String routeName = '/widget/image';

  @override
  State<ImageWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scaffold(
        body: Container(
          child: Container(
            ///Có 2 thằng hay dùng
            ///1:Assets
            child: Column(
              children: [
                Text('Asset'),
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/img.png',fit: BoxFit.fill),
                ),
                Text('NetWord'),
                Container(
                  child: Image.network('https://images.unsplash.com/photo-1453728013993-6d66e9c9123a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmlld3xlbnwwfHwwfHw%3D&w=1000&q=80'),
                )
              ],
            )
          ),
        )
      ),
    );
  }
}

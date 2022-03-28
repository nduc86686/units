import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({Key key}) : super(key: key);
  static String routeName = '/widget/container';
  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
     appBar: AppBar(title: Text('Container'),),
      body: Center(
        child: Container(
          ///Thuộc tính này được sử dụng để lưu trữ widget con của Container.
          // child: ,
           /// Thuộc tính này được sử dụng để đặt màu nền
          // color: ,
          ///Thuộc tính này được sử dụng để bao quanh không gian empty xung quanh Container
          // margin: ,
          ///Thuộc tính này được sử dụng để đặt khoảng cách giữa đường viền của Container (cả bốn hướng) và widget con của nó.
          // padding: ,
            ///Thuộc tính này được sử dụng để thiết lập vị trí của con trong Container.
          // alignment: ,
          // height: 100,
          // width: 100,
          // color: Colors.green,
          // alignment: Alignment.center,
          // // transform: Matrix4.rotationZ(0.5),
          // constraints:   BoxConstraints.loose(Size(200, 200)),

          // child: Container(
          //   height: height*0.5,
          //   width:width*0.5,
          //   alignment: Alignment.bottomCenter,
          //   decoration: BoxDecoration(
          //     ///Màu contaienr
          //       color: Colors.red,
          //       ///Dùng để bo góc
          //       borderRadius: BorderRadius.all(Radius.circular(20)),
          //       boxShadow: [
          //         BoxShadow(
          //           //màu đổ bóng
          //             color: Colors.grey,
          //             blurRadius: 10,
          //             spreadRadius: 1,
          //             offset: Offset(1,2)
          //         )
          //       ],
          //   ),
          //   // margin: EdgeInsets.symmetric(vertical:900,horizontal: 400 )
          //   //   margin: EdgeInsets.only(top: 10,bottom: 20,right: 30,left: 50 ),
          //   //   padding: EdgeInsets.only(top: 10,bottom: 20,right: 30,left: 50 ),
          //
          //
          //   child: Text('Hello World', ),
          //   constraints: BoxConstraints(
          //     ///chiều cao,rộng tối đa
          //     // maxHeight: 600,
          //     // maxWidth: 600,
          //     // ///chiều cao,rộng min tối đa
          //     // minHeight: 700,
          //     // minWidth: 700,
          //   )
          // ),
          child: Container(
            width: 300,
            height: 300,
            color: Colors.yellow,
            child: FittedBox(
                fit: BoxFit.cover,
                child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/800px-Flag_of_Vietnam.svg.png')),
          ),
        ),
      ),
    );
  }
}

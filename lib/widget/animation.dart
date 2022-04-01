import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimationWidget extends StatefulWidget {
  const AnimationWidget({Key key}) : super(key: key);
  static String routeName = '/widget/aniamtion';

  @override
  State<AnimationWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<AnimationWidget>
    with TickerProviderStateMixin {
  ///dùng cho animated container
  bool isAnimation = false;

  ///dùng cho animation opacity
  double opcity = 1;

  AnimationController _animationController;

  Animation animationSize;
  Animation animationColor;

  @override
  void initState() {
    ///*note vsync về cơ bản giữ theo dõi màn hình, để Flutter không hiển thị Animation khi màn hình không được hiển thị
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    animationSize = Tween<double>(begin: 400.0, end: 500.0).animate((CurvedAnimation(parent: _animationController, curve: Curves.bounceOut)));
    animationColor = ColorTween(begin: Colors.red, end: Colors.orange).animate(_animationController);
    ///Gọi người nghe mỗi khi giá trị của hoạt ảnh thay đổi.
    _animationController.addListener(() {
      setState(() {});
    });
    ///
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        ///TODO ANIMATION_CONTAINER
        ///Giống container nhưng nó animation được:)))
        //     child: Center(
        //   child: AnimatedContainer(
        //     width: isAnimation ? 300 : 500,
        //     height: isAnimation ? 200 : 300,
        //     color: isAnimation ? Colors.green : Colors.red,
        //     curve: Curves.easeInOut,
        //     duration: const Duration(seconds: 1),
        //     child: Container(),
        //   ),
        // )),

        ///TODO ANIMATION OPACITY
        // child: Center(
        //   child: AnimatedOpacity(
        //     opacity: isAnimation?1:0,
        //     duration: Duration(seconds: 10),
        //     curve: Curves.easeInOut,
        //     child: Container(
        //       color: Colors.red,
        //       width: 200,
        //       height: 200,
        //     ),
        //   ),
        // )
        ///TODO Mouse hourve
        // child: InkWell(
        //       child: AnimatedContainer(
        //         width: isAnimation ? 300 : 500,
        //         height: isAnimation ? 200 : 300,
        //         color: isAnimation ? Colors.green : Colors.red,
        //         curve: Curves.easeInOut,
        //         duration: const Duration(seconds: 1),
        //         child: Container(),
        //     ),
        //     ///hàm lăngs nghe đây:))))))))))
        //     onHover: (isHovering) {
        //       if (isHovering) {
        //        setState(() {
        //          isHovering? isAnimation=true:isAnimation=false;
        //        });
        //       } else {
        //
        //       setState(() {
        //         isAnimation=!isAnimation;
        //       });
        //       }
        //     })),
        ///TODO Animation controller
        ///Mục đích mình có thể tự custom animation theo ý muốn của mình
        ///B1: Phải kế thừa thằng SingleTickerProviderStateMixin,nếu mà sử dụng nhiều animation controller trong một màn hình
        ///thì sử dụng [TickerProviderStateMixin]
        ///B2: Khai báo Animation Controller,sau khi khai báo xong mình sẽ setup nó trong [initState] ngay
        ///khi màn hình hiện lên
        child: Center(
          child: Container(
            color: animationColor.value,
            width: animationSize.value,
            height: animationSize.value,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                // opcity=0;
                _animationController.forward();
                // _animationController.forward();
              });
            },
            child: Icon(Icons.call),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                // opcity=0;
                // _animationController.forward();
                _animationController.reverse();
                // _animationController.forward();
              });
            },
            child: Icon(Icons.call),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _animationController.repeat();
              });
            },
            child: Icon(Icons.call),
          ),
        ],
      ),
    );
  }
}

class Choice {
  const Choice({this.name, this.icon});

  final String name;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(name: 'Wi-Fi', icon: Icons.wifi),
  const Choice(name: 'Bluetooth', icon: Icons.bluetooth),
  const Choice(name: 'Battery', icon: Icons.battery_alert),
  const Choice(name: 'Storage', icon: Icons.storage),
];
// GridView.builder(
// padding: EdgeInsets.all(16),
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// childAspectRatio: 1.6, // Tỉ lệ chiều-ngang/chiều-rộng của một item trong grid, ở đây width = 1.6 * height
// crossAxisCount: 2,     // Số item trên một hàng ngang
// crossAxisSpacing: 16,  // Khoảng cách giữa các item trong hàng ngang
// mainAxisSpacing: 16,   // Khoảng cách giữa các hàng (giữa các item trong cột dọc)
// ),
// itemCount: _colors.length, // Số lượng item
// itemBuilder: _buildColorItem, // Hàm render item
// ),

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GirdWidget extends StatefulWidget {
  const GirdWidget({Key key}) : super(key: key);
  static String routeName = '/widget/GirdWidget';

  @override
  State<GirdWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<GirdWidget> {
  final List<String> list = [
    'Helllo',
  ];

  @override
  void initState() {
    for (int i = 0; i < 50; i++) {
      String object = 'heello ${i}';
      list.add(object);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scaffold(
          body: Container(
        child: GridView.builder(
          padding: EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            /// Tỉ lệ chiều-ngang/chiều-rộng của một item trong grid, ở đây width = 1.6 * height
            /// Đây là kích thước của item,kiểu như cái ảnh 3*4 ấy
            childAspectRatio: 3/4,

            /// Số item trên một hàng ngang
            crossAxisCount: 4,

            /// Khoảng cách giữa các item trong hàng ngang
            crossAxisSpacing: 16,

            /// Khoảng cách giữa các hàng (giữa các item trong cột dọc)
            mainAxisSpacing: 16,
          ),
          itemCount: list.length, // Số lượng item
          itemBuilder: (BuildContext context, int) {
            return Container(
              color: int % 2 == 0 ? Colors.red : Colors.yellow,
              child: Center(child: Text('${list[int]}')),
            );
          }, // Hàm render item
        ),
      )),
    );
  }
}

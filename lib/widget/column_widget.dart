import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnWidget extends StatefulWidget {
  const ColumnWidget({Key key}) : super(key: key);
  static String routeName = '/widget/column';
  @override
  State<ColumnWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scaffold(
        body: Container(
          child: Column(
/*        start: Nó sẽ đặt các con từ điểm bắt đầu của trục chính.
          end: Nó sẽ đặt các con ở cuối trục chính.
          center: Nó sẽ đặt các con ở giữa trục chính.
          spaceBetween: Nó sẽ đặt không gian trống giữa các con một cách đồng đều.
          spaceAround: Nó sẽ đặt không gian trống giữa các con một cách đồng đều và một nửa không gian đó trước và sau widget con đầu tiên và cuối cùng.
          spaceEvenly: Nó sẽ đặt không gian trống giữa các con một cách đồng đều và trước và sau widget con đầu tiên và cuối cùng.*/
            //main-up,cro-right
            ///là trục chính
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

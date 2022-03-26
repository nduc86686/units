import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  const RowWidget({Key key}) : super(key: key);
  static String routeName = '/widget/row';
  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scaffold(
        body: Container(
          height: double.infinity,
          child: Row(
            children: [
              Row(

/*        start: Nó sẽ đặt các con từ điểm bắt đầu của trục chính.
              end: Nó sẽ đặt các con ở cuối trục chính.
              center: Nó sẽ đặt các con ở giữa trục chính.
              spaceBetween: Nó sẽ đặt không gian trống giữa các con một cách đồng đều.
              spaceAround: Nó sẽ đặt không gian trống giữa các con một cách đồng đều và một nửa không gian đó trước và sau widget con đầu tiên và cuối cùng.
              spaceEvenly: Nó sẽ đặt không gian trống giữa các con một cách đồng đều và trước và sau widget con đầu tiên và cuối cùng.*/
              //main-up,cro-right
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
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
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

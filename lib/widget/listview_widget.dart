import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({Key key}) : super(key: key);
  static String routeName = '/widget/ListViewWidget';

  @override
  State<ListViewWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<ListViewWidget> {
  final List<String> list=[
    'Helllo',
  ];
  FixedExtentScrollController fixedExtentScrollController ;
  @override
  void initState() {
    fixedExtentScrollController =
    new FixedExtentScrollController();
    for(int i=0;i<50;i++){
      String object='heello ${i}';
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
          child: ListView.builder(
            ///Số lượng phần tử của list
            itemCount: list.length,
            ///Hàm build widget phần tử con
            ///2 giá trị truyền vào là Buidcontext và int 
            itemBuilder: (BuildContext tcontext,index){
              return Container(
                margin: EdgeInsets.all(16),
                child: Text(
                  '${list[index]}'
                ),
              );
            },
            ///Đảo ngược list
            reverse: false,
            ///định hướng list theo chiều ngang hay dọc?Mặc định là vertical
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            ///NeverScrollablecrollPhysics không vuốt được
            ///BouncingScrollPhysics ông này vuốt kiểu IOS
            ///ClampingScrollPhysics ông này theo kiểu android
            // controller: fixedExtentScrollController,
            // physics: FixedExtentScrollPhysics(),
          ),
        )
      ),
    );
  }
}

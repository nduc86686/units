import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponseWidget extends StatefulWidget {
  const ResponseWidget({Key key}) : super(key: key);
  static String routeName = '/widget/response';

  @override
  State<ResponseWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<ResponseWidget> {
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
    ///TODO C1 MediaQuery:
    ///Xác định chiều xoay của màn hình là ngang hay dọc
    ///
    /// B1:Tạo biến check chiều xoay của điện thoại
    /// [Orientation.landscape] khi xoay ngang điện thoại
    /// Orientation.portrait; khi xoay dọc điện thoại
    // var hasDetailPage=MediaQuery.of(context).orientation==Orientation.landscape;
    //
    // ///B2 Tạo widget
    // Widget child;
    // if(hasDetailPage){
    //   child=Row(
    //     children: [
    //       Flexible(
    //         child: FractionallySizedBox(
    //           widthFactor: 0.4,
    //           child: listChat(),
    //         ),
    //       ),
    //       Expanded(child: listDetails())
    //     ],
    //   );
    // }
    // else{
    //   child=listChat();
    // }
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: Scaffold(
    //       body: Container(
    //         child: child
    //       )),
    // );

    //TODO C2 LayoutBuilder
    ///TODO C2 LayoutBuilder:
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: LayoutBuilder(
    //     ///1:widget
    //     ///2:chiều rộng màn hình
    //     builder: (builder,constrains){
    //       var hasDetail=constrains.maxWidth>600;
    //       if(hasDetail){
    //         return Row(
    //           children: [
    //             Flexible(
    //               child: FractionallySizedBox(
    //                 widthFactor: 0.4,
    //                 child: listChat(),
    //               ),
    //             ),
    //             Expanded(child: listDetails())
    //           ],
    //         );
    //       }
    //       else{
    //         return listChat();
    //       }
    //     },
    //   ),
    // );
    ///TODO C3 OrientationBuilder:
    ///
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: OrientationBuilder(
    //     builder: (builder,constraints){
    //       var hasdetails=constraints==Orientation.landscape;
    //       if(hasdetails){
    //         return Row(
    //           children: [
    //             Flexible(
    //               child: FractionallySizedBox(
    //                 widthFactor: 0.4,
    //                 child: listChat(),
    //               ),
    //             ),
    //             Expanded(child: listDetails())
    //           ],
    //         );
    //       }
    //       else{
    //         return listChat();
    //       }
    //     },
    //   ),
    // );
  }




  Widget listDetails(){
    return  Container(
        child:ListView.builder(
          itemCount: 10,
          itemBuilder: (context,int){
            return Container(
                margin: EdgeInsets.only(bottom: 10),
                child:int%2==0? Row(
                  children: [
                    CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius:BorderRadius.all(Radius.circular(10)),
                          color: Colors.yellow.withOpacity(0.2)
                      ),
                      child: Text('Nội dung chat'),
                    ),
                  ],
                ): Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Flexible(
                      child: FractionallySizedBox(
                        // constraints: BoxConstraints(maxWidth: 300),
                        widthFactor: 0.5,
                        child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.all(Radius.circular(10)),
                                color: Colors.yellow.withOpacity(0.2)
                            ),
                            child: FittedBox(child: Text('Nội dung chfffffffffffffffffffffffffffffffffffffffffddddddddddddđfffffat'))),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                  ],
                )
            );
          },
        ));
  }
  Widget listChat(){
    return  ListView.separated(
      itemBuilder: (context,int){
        return Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  child: Icon(Icons.supervised_user_circle_sharp),
                ),
                SizedBox(width: 5,),
                Text('${list[int]}'),
              ],
            )
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
      itemCount: list.length,
    );
  }
}

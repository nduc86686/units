import 'package:flutter/material.dart';
import 'package:untitled4/widget/animation.dart';
import 'package:untitled4/widget/button_widget.dart';
import 'package:untitled4/widget/column_widget.dart';
import 'package:untitled4/widget/constranbox.dart';
import 'package:untitled4/widget/container_widget.dart';
import 'package:untitled4/widget/gird_view_widget.dart';
import 'package:untitled4/widget/image_widget.dart';
import 'package:untitled4/widget/listview_widget.dart';
import 'package:untitled4/widget/response_widget.dart';
import 'package:untitled4/widget/row_widget.dart';
import 'package:untitled4/widget/stack_widget.dart';
import 'package:untitled4/widget/text_widget.dart';

///
///   Trong Flutter có dạng state chính là [Stateless] và [StateFull]
///   +Stateless hiểu nôm na là phi trạng thái
///   +Statefull là có trạng thái
///
///
/// ===========
/// Stateless là widget chỉ build duy nhất 1 lần thường là các text,icon,button,.....
/// Statefull là widget sẽ build khi [state] thay đổi,ví dụ khi nhận 1 state trạng thái từ nút bấm call api,hay đoạn chat
/// realtime,......
///
/// Trong stateless chỉ có duy nhất 1 class dùng để build widget như ví dụ dưới đây
class ExempleStateless extends StatelessWidget {
  const ExempleStateless({Key key}) : super(key: key);

  ///đây chính là hàm kế thừa dùng để buld widget
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

///Còn trong statelessfull nó sẽ có 2 class,một class sẽ quản lý state,1 class sẽ chịu trách nhiệm build lại [Widget] khi
///nhận được trạng thái mới
///Ví dụ
///
///Đây là class state
class ExempleStatefull extends StatefulWidget {
  const ExempleStatefull({Key key}) : super(key: key);

  @override
  _ExempleStatefullState createState() => _ExempleStatefullState();
}

///Còn đây sẽ là class dùng để build Widget
class _ExempleStatefullState extends State<ExempleStatefull> {
  ///Trong này sẽ có vòng đời của nó (Tớ nói những hàm hay dùng thôi,thực tế nhiều hàm nhưng không dùng hoặc ít dùng đến)
  ///
  /// Hàm đầu tiên khi ứng dụng build 1 màn hình lên sẽ là [initState]
  ///TODO À hàm này chỉ gọi 1 lần duy nhất khi buil widget nhé
  @override
  void initState() {
    print('initState');
    // TODO: implement initState
    super.initState();
  }

  ///Hàm tiếp theo sẽ call khi màn hình tắt kết thúc vòng đời của nó
  @override
  void dispose() {
    print('Dispose');
    super.dispose();
  }

  ///Ngoài 2 hàm trên còn có 2 hàm này nên đọc thêm
  ///
  ///Oke hàm này sẽ gọi sau thằng initState
  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant ExempleStatefull oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        // Within the `FirstRoute` widget
        onTap: () {},
        child: Center(
          child: Text('next'),
        ),
      ),
    );
  }
}

class Demo {
  final String name;
  final String route;
  final WidgetBuilder builder;

  const Demo({
    this.name,
    this.route,
    this.builder,
  });
}

final basicDemos = [
  Demo(
      name: 'AnchoredAdaptiveExample',
      route: ContainerWidget.routeName,
      builder: (context) => ContainerWidget()),
  Demo(
      name: 'Column',
      route: ColumnWidget.routeName,
      builder: (context) => ColumnWidget()),
  Demo(
      name: 'Row',
      route: RowWidget.routeName,
      builder: (context) => RowWidget()),
  Demo(
      name: 'Stack',
      route: StackWidget.routeName,
      builder: (context) => StackWidget()),
  Demo(
      name: 'ConstranBoxWidget',
      route: ConstranBoxWidget.routeName,
      builder: (context) => ConstranBoxWidget()),
  Demo(
      name: 'TextWidget',
      route: TextWidget.routeName,
      builder: (context) => TextWidget()),
  Demo(
      name: 'ButtonWidget',
      route: ButtonWidget.routeName,
      builder: (context) => ButtonWidget()),
  Demo(
      name: 'ImageWidget',
      route: ImageWidget.routeName,
      builder: (context) => ImageWidget()),
  Demo(
      name: 'ListViewWidget',
      route: ListViewWidget.routeName,
      builder: (context) => ListViewWidget()),
  Demo(
      name: 'GirdWidget',
      route: GirdWidget.routeName,
      builder: (context) => GirdWidget()),
  Demo(
      name: 'ResponseWidget',
      route: ResponseWidget.routeName,
      builder: (context) => ResponseWidget()),  Demo(
      name: 'AnimationWidget',
      route: AnimationWidget.routeName,
      builder: (context) => AnimationWidget()),
];
final basicDemoRoutes =
    Map.fromEntries(basicDemos.map((d) => MapEntry(d.route, d.builder)));

final allRoutes = <String, WidgetBuilder>{
  ...basicDemoRoutes,
};

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: allRoutes,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headerStyle = Theme.of(context).textTheme.headline6;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemple Samples'),
      ),
      body: ListView(
        children: [
          ListTile(title: Text('Basics', style: headerStyle)),
          ...basicDemos.map((d) => DemoTile(demo: d)),
        ],
      ),
    );
  }
}

class DemoTile extends StatelessWidget {
  final Demo demo;

  const DemoTile({this.demo, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(demo.name),
      onTap: () {
        Navigator.pushNamed(context, demo.route);
      },
    );
  }
}

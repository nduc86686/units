import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key key}) : super(key: key);
  static String routeName = '/widget/button';
  @override
  State<ButtonWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<ButtonWidget> {
  Choice _selectedOption = choices[0];
  void _select(Choice choice) {
    setState(() {
      _selectedOption = choice;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          PopupMenuButton<Choice>(
            onSelected: _select,
            itemBuilder: (BuildContext context) {
              return choices.skip(0).map((Choice choice) {
                return PopupMenuItem<Choice>(
                  value: choice,
                  child: Text(choice.name),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Scaffold(
        body: Column(
          children: [
            ///FlatButton
            Container(
              margin: EdgeInsets.all(25),
              child: FlatButton(
                child: Text('FlatButton', style: TextStyle(fontSize: 20.0),),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
            ///RaisedButton
            RaisedButton(
              child: Text("RaisedButton", style: TextStyle(fontSize: 20),),
              onPressed: (){},
              color: Colors.red,
              textColor: Colors.yellow,
              padding: EdgeInsets.all(8.0),
              splashColor: Colors.grey,
            ),
            ///IconButton
            IconButton(
              icon: Icon(Icons.volume_up),
              iconSize: 50,
              color: Colors.brown,
              tooltip: 'IconButton',
              onPressed: () {
                setState(() {

                });
              },
            ),
            ///OutLine
            Container(
              margin: EdgeInsets.all(25),
              child: OutlineButton(
                child: Text("Outline Button", style: TextStyle(fontSize: 20.0),),
                highlightedBorderColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {},
              ),
            ),
            ///Button Bar
            Container(
              child: ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  RaisedButton(
                    child: new Text('Javatpoint'),
                    color: Colors.lightGreen,
                    onPressed: () {/** */},
                  ),
                  FlatButton(
                    child: Text('Flutter'),
                    color: Colors.lightGreen,
                    onPressed: () {/** */},
                  ),
                  FlatButton(
                    child: Text('MySQL'),
                    color: Colors.lightGreen,
                    onPressed: () {/** */},
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton:FloatingActionButton.extended(
        onPressed: () {},
        icon: Icon(Icons.save),
        label: Text("Save"),
      ),
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.navigation),
        //   backgroundColor: Colors.green,
        //   foregroundColor: Colors.white,
        //   onPressed: () => {},
        // ),
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
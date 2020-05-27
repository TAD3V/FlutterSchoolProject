import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(App());

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    AppBar appBar = AppBar(
      title: Text('Supplies'),
    );
    final screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    // SizeConfig().init(context);
    return MaterialApp(
      title: 'What Supply Would You Like to Find?',
      home: Scaffold(
        appBar: appBar,
        body: Center(
          child: Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  height: (height - appBar.preferredSize.height) / 5,
                  child: FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: ()
                    {
                    },
                    child: Text("Tissues"),
                )
              ),
                SizedBox(
                    width: double.infinity,
                    height: (height - appBar.preferredSize.height) / 5,
                    child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: ()
                      {
                      },
                      child: Text("Tissues"),
                    )
                ),
                SizedBox(
                    width: double.infinity,
                    height: (height - appBar.preferredSize.height) / 5,
                    child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: ()
                      {
                      },
                      child: Text("Tissues"),
                    )
                ),
                SizedBox(
                    width: double.infinity,
                    height: (height - appBar.preferredSize.height) / 5,
                    child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: ()
                      {
                      },
                      child: Text("Tissues"),
                    )
                ),
                SizedBox(
                    width: double.infinity,
                    height: (height - appBar.preferredSize.height) / 5,
                    child: FlatButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      onPressed: ()
                      {
                      },
                      child: Text("Tissues"),
                    )
                )
              ],
          )
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../widgets/button.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String text = "Hello from Bipin!";
  TextEditingController inputText  = TextEditingController();
  Color textColor = Colors.black;
  Color backgroundColor = Colors.blue;

  void _changeTextColor() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      textColor = (textColor == Colors.black) ? Colors.red : Colors.black;


    });
  }

  void _changebackgroundColor() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.

      backgroundColor = (backgroundColor == Colors.blue) ? Colors.grey : Colors.blue;

    });
  }
  void _changeText(){
    setState(() {
      text = "Android is Awesome!";
    });
  }
  void _customizedText(){
    setState(() {

     if(inputText.text.isNotEmpty){
       text = inputText.text.trim();

     } else {
       text = "Input is empty!";
     }


    });
  }
  void _changeToDefault(){
    setState(() {
        text = "Hello from Bipin!";
        inputText  = TextEditingController();
        textColor = Colors.black;
        backgroundColor = Colors.blue;
    });
  }


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          child: InkWell(
            onDoubleTap: _changeToDefault,
            radius: 150,
        child: Column(


          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.

          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,





          children: [


            Text(
              text,
              style:  TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: textColor),

            ),
          SizedBox(
            height: 20,
            width: 200,
          ),

            TextField(
              controller: inputText,
              cursorColor: Colors.red,
              decoration: InputDecoration(
                hintText: 'Customize Your Text!!',
                hintStyle:
                TextStyle(fontWeight: FontWeight.w600, color: Colors.black38),
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
              ),
            ),
            SizedBox(
              height: 5,
              width: 200,
            ),

            Button(
              onTap: _customizedText,
              buttonName: 'Submit Your Text',
            ),
            SizedBox(
              height: 25,
              width: 200,
            ),

            Button(
              onTap: _changeTextColor,
              buttonName: 'Change Text Color',
            ),
            SizedBox(
              height: 5,
              width: 200,
            ),

            Button(
              onTap: _changebackgroundColor,
              buttonName: 'Change BG Color',
            ),
            SizedBox(
              height: 5,
              width: 200,
            ),

            Button(
              onTap: _changeText,
              buttonName: 'Change Text',
            ),


          ],
          )
        )

      )

    );
  }
}

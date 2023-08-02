import 'package:flutter/material.dart';
import 'package:utils_component/utils_component.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Exemple Utils'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'How many times, you\'ve pushed the button :',
            ),
            Text(
              '$_counter'..concat(' times'),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8.0,),
            Text(
              'If button pushed more then 3 times, the Icon below will be changed from FORBIDDEN to AUTHORISED ',
            ),

            // If button pushed more then 3 times, the Icon below
            // will be changed from FORBIDDEN to AUTHORISED
            // using BooleanBuilder
            BooleanBuilder(
              condition: () => _counter < 3,
              ifTrue: Ink(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.do_disturb_alt_outlined, size: 100,)
              ),
              ifFalse: Ink(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.done_all, size: 100,)
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: SizedBox(
          //width: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.add),
              Text('Increment')
            ],
          ),
        ),
      ),
    );
  }
}

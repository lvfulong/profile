import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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

class Matrix44Array {
  var m = new List<double>(16);
  void randomSetUp(/*Random r*/) {
    m[0 + 0 * 4] = 1.0;
    //r.nextDouble() * 100;
    m[0 + 1 * 4] = 2.0;
    //r.nextDouble() * 100;
    m[0 + 2 * 4] = 3.0;
    //r.nextDouble() * 100;
    m[0 + 3 * 4] = 4.0;
    //r.nextDouble() * 100;
    m[1 + 0 * 4] = 5.0;
    //r.nextDouble() * 100;
    m[1 + 1 * 4] = 6.0;
    //r.nextDouble() * 100;
    m[1 + 2 * 4] = 7.0;
    //r.nextDouble() * 100;
    m[1 + 3 * 4] = 8.0;
    //r.nextDouble() * 100;
    m[2 + 0 * 4] = 9.0;
    //r.nextDouble() * 100;
    m[2 + 1 * 4] = 10.0;
    //r.nextDouble() * 100;
    m[2 + 2 * 4] = 11.0;
    //r.nextDouble() * 100;
    m[2 + 3 * 4] = 12.0;
    //r.nextDouble() * 100;
    m[3 + 0 * 4] = 13.0;
    //r.nextDouble() * 100;
    m[3 + 1 * 4] = 14.0;
    //r.nextDouble() * 100;
    m[3 + 2 * 4] = 15.0;
    //r.nextDouble() * 100;
    m[3 + 3 * 4] = 16.0;
    //r.nextDouble() * 100;
  }

  static void multiplyMatrices44(
      Matrix44Array lhs, Matrix44Array rhs, Matrix44Array out) {
    out.m[0 + 0 * 4] = lhs.m[0 + 0 * 4] * rhs.m[0 + 0 * 4] +
        lhs.m[0 + 1 * 4] * rhs.m[1 + 0 * 4] +
        lhs.m[0 + 2 * 4] * rhs.m[2 + 0 * 4] +
        lhs.m[0 + 3 * 4] * rhs.m[3 + 0 * 4];
    out.m[0 + 1 * 4] = lhs.m[0 + 0 * 4] * rhs.m[0 + 1 * 4] +
        lhs.m[0 + 1 * 4] * rhs.m[1 + 1 * 4] +
        lhs.m[0 + 2 * 4] * rhs.m[2 + 1 * 4] +
        lhs.m[0 + 3 * 4] * rhs.m[3 + 1 * 4];
    out.m[0 + 2 * 4] = lhs.m[0 + 0 * 4] * rhs.m[0 + 2 * 4] +
        lhs.m[0 + 1 * 4] * rhs.m[1 + 2 * 4] +
        lhs.m[0 + 2 * 4] * rhs.m[2 + 2 * 4] +
        lhs.m[0 + 3 * 4] * rhs.m[3 + 2 * 4];
    out.m[0 + 3 * 4] = lhs.m[0 + 0 * 4] * rhs.m[0 + 3 * 4] +
        lhs.m[0 + 1 * 4] * rhs.m[1 + 3 * 4] +
        lhs.m[0 + 2 * 4] * rhs.m[2 + 3 * 4] +
        lhs.m[0 + 3 * 4] * rhs.m[3 + 3 * 4];

    out.m[1 + 0 * 4] = lhs.m[1 + 0 * 4] * rhs.m[0 + 0 * 4] +
        lhs.m[1 + 1 * 4] * rhs.m[1 + 0 * 4] +
        lhs.m[1 + 2 * 4] * rhs.m[2 + 0 * 4] +
        lhs.m[1 + 3 * 4] * rhs.m[3 + 0 * 4];
    out.m[1 + 1 * 4] = lhs.m[1 + 0 * 4] * rhs.m[0 + 1 * 4] +
        lhs.m[1 + 1 * 4] * rhs.m[1 + 1 * 4] +
        lhs.m[1 + 2 * 4] * rhs.m[2 + 1 * 4] +
        lhs.m[1 + 3 * 4] * rhs.m[3 + 1 * 4];
    out.m[1 + 2 * 4] = lhs.m[1 + 0 * 4] * rhs.m[0 + 2 * 4] +
        lhs.m[1 + 1 * 4] * rhs.m[1 + 2 * 4] +
        lhs.m[1 + 2 * 4] * rhs.m[2 + 2 * 4] +
        lhs.m[1 + 3 * 4] * rhs.m[3 + 2 * 4];
    out.m[1 + 3 * 4] = lhs.m[1 + 0 * 4] * rhs.m[0 + 3 * 4] +
        lhs.m[1 + 1 * 4] * rhs.m[1 + 3 * 4] +
        lhs.m[1 + 2 * 4] * rhs.m[2 + 3 * 4] +
        lhs.m[1 + 3 * 4] * rhs.m[3 + 3 * 4];

    out.m[2 + 0 * 4] = lhs.m[2 + 0 * 4] * rhs.m[0 + 0 * 4] +
        lhs.m[2 + 1 * 4] * rhs.m[1 + 0 * 4] +
        lhs.m[2 + 2 * 4] * rhs.m[2 + 0 * 4] +
        lhs.m[2 + 3 * 4] * rhs.m[3 + 0 * 4];
    out.m[2 + 1 * 4] = lhs.m[2 + 0 * 4] * rhs.m[0 + 1 * 4] +
        lhs.m[2 + 1 * 4] * rhs.m[1 + 1 * 4] +
        lhs.m[2 + 2 * 4] * rhs.m[2 + 1 * 4] +
        lhs.m[2 + 3 * 4] * rhs.m[3 + 1 * 4];
    out.m[2 + 2 * 4] = lhs.m[2 + 0 * 4] * rhs.m[0 + 2 * 4] +
        lhs.m[2 + 1 * 4] * rhs.m[1 + 2 * 4] +
        lhs.m[2 + 2 * 4] * rhs.m[2 + 2 * 4] +
        lhs.m[2 + 3 * 4] * rhs.m[3 + 2 * 4];
    out.m[2 + 3 * 4] = lhs.m[2 + 0 * 4] * rhs.m[0 + 3 * 4] +
        lhs.m[2 + 1 * 4] * rhs.m[1 + 3 * 4] +
        lhs.m[2 + 2 * 4] * rhs.m[2 + 3 * 4] +
        lhs.m[2 + 3 * 4] * rhs.m[3 + 3 * 4];

    out.m[3 + 0 * 4] = lhs.m[3 + 0 * 4] * rhs.m[0 + 0 * 4] +
        lhs.m[3 + 1 * 4] * rhs.m[1 + 0 * 4] +
        lhs.m[3 + 2 * 4] * rhs.m[2 + 0 * 4] +
        lhs.m[3 + 3 * 4] * rhs.m[3 + 0 * 4];
    out.m[3 + 1 * 4] = lhs.m[3 + 0 * 4] * rhs.m[0 + 1 * 4] +
        lhs.m[3 + 1 * 4] * rhs.m[1 + 1 * 4] +
        lhs.m[3 + 2 * 4] * rhs.m[2 + 1 * 4] +
        lhs.m[3 + 3 * 4] * rhs.m[3 + 1 * 4];
    out.m[3 + 2 * 4] = lhs.m[3 + 0 * 4] * rhs.m[0 + 2 * 4] +
        lhs.m[3 + 1 * 4] * rhs.m[1 + 2 * 4] +
        lhs.m[3 + 2 * 4] * rhs.m[2 + 2 * 4] +
        lhs.m[3 + 3 * 4] * rhs.m[3 + 2 * 4];
    out.m[3 + 3 * 4] = lhs.m[3 + 0 * 4] * rhs.m[0 + 3 * 4] +
        lhs.m[3 + 1 * 4] * rhs.m[1 + 3 * 4] +
        lhs.m[3 + 2 * 4] * rhs.m[2 + 3 * 4] +
        lhs.m[3 + 3 * 4] * rhs.m[3 + 3 * 4];
  }
}

class Matrix44 {
  double m00, m01, m02, m03;
  double m10, m11, m12, m13;
  double m20, m21, m22, m23;
  double m30, m31, m32, m33;
  void randomSetUp(/*Random r*/) {
    m00 = 1.0;
    //r.nextDouble() * 100;
    m01 = 2.0;
    //r.nextDouble() * 100;
    m02 = 3.0;
    //r.nextDouble() * 100;
    m03 = 4.0;
    //r.nextDouble() * 100;
    m10 = 5.0;
    //r.nextDouble() * 100;
    m11 = 6.0;
    //r.nextDouble() * 100;
    m12 = 7.0;
    //r.nextDouble() * 100;
    m13 = 8.0;
    //r.nextDouble() * 100;
    m20 = 9.0;
    //r.nextDouble() * 100;
    m21 = 10.0;
    //r.nextDouble() * 100;
    m22 = 11.0; //r.nextDouble() * 100;
    m23 = 12.0;
    //r.nextDouble() * 100;
    m30 = 13.0;
    //r.nextDouble() * 100;
    m31 = 14.0;
    //r.nextDouble() * 100;
    m32 = 15.0;
    //r.nextDouble() * 100;
    m33 = 16.0;
    //r.nextDouble() * 100;
  }

  static void multiplyMatrices44(Matrix44 lhs, Matrix44 rhs, Matrix44 out) {
    out.m00 = lhs.m00 * rhs.m00 +
        lhs.m01 * rhs.m10 +
        lhs.m02 * rhs.m20 +
        lhs.m03 * rhs.m30;
    out.m01 = lhs.m00 * rhs.m01 +
        lhs.m01 * rhs.m11 +
        lhs.m02 * rhs.m21 +
        lhs.m03 * rhs.m31;
    out.m02 = lhs.m00 * rhs.m02 +
        lhs.m01 * rhs.m12 +
        lhs.m02 * rhs.m22 +
        lhs.m03 * rhs.m32;
    out.m03 = lhs.m00 * rhs.m03 +
        lhs.m01 * rhs.m13 +
        lhs.m02 * rhs.m23 +
        lhs.m03 * rhs.m33;

    out.m10 = lhs.m10 * rhs.m00 +
        lhs.m11 * rhs.m10 +
        lhs.m12 * rhs.m20 +
        lhs.m13 * rhs.m30;
    out.m11 = lhs.m10 * rhs.m01 +
        lhs.m11 * rhs.m11 +
        lhs.m12 * rhs.m21 +
        lhs.m13 * rhs.m31;
    out.m12 = lhs.m10 * rhs.m02 +
        lhs.m11 * rhs.m12 +
        lhs.m12 * rhs.m22 +
        lhs.m13 * rhs.m32;
    out.m13 = lhs.m10 * rhs.m03 +
        lhs.m11 * rhs.m13 +
        lhs.m12 * rhs.m23 +
        lhs.m13 * rhs.m33;

    out.m20 = lhs.m20 * rhs.m00 +
        lhs.m21 * rhs.m10 +
        lhs.m22 * rhs.m20 +
        lhs.m23 * rhs.m30;
    out.m21 = lhs.m20 * rhs.m01 +
        lhs.m21 * rhs.m11 +
        lhs.m22 * rhs.m21 +
        lhs.m23 * rhs.m31;
    out.m22 = lhs.m20 * rhs.m02 +
        lhs.m21 * rhs.m12 +
        lhs.m22 * rhs.m22 +
        lhs.m23 * rhs.m32;
    out.m23 = lhs.m20 * rhs.m03 +
        lhs.m21 * rhs.m13 +
        lhs.m22 * rhs.m23 +
        lhs.m23 * rhs.m33;

    out.m30 = lhs.m30 * rhs.m00 +
        lhs.m31 * rhs.m10 +
        lhs.m32 * rhs.m20 +
        lhs.m33 * rhs.m30;
    out.m31 = lhs.m30 * rhs.m01 +
        lhs.m31 * rhs.m11 +
        lhs.m32 * rhs.m21 +
        lhs.m33 * rhs.m31;
    out.m32 = lhs.m30 * rhs.m02 +
        lhs.m31 * rhs.m12 +
        lhs.m32 * rhs.m22 +
        lhs.m33 * rhs.m32;
    out.m33 = lhs.m30 * rhs.m03 +
        lhs.m31 * rhs.m13 +
        lhs.m32 * rhs.m23 +
        lhs.m33 * rhs.m33;
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter--;
      print("test start ...");
      testMatrixArray();
      testMatrixAttribute();
      testFunction();
      testLoop();
    });
  }

  void testMatrixArray() {
    var now = DateTime.now().millisecondsSinceEpoch;
    //var r = Random();

    var lhs = Matrix44Array();
    var rhs = Matrix44Array();
    var out = Matrix44Array();

    for (var i = 0; i < 1000000; i++) {
      lhs.randomSetUp(/*r*/);
      rhs.randomSetUp(/*r*/);
      Matrix44Array.multiplyMatrices44(lhs, rhs, out);
    }
    var t = DateTime.now().millisecondsSinceEpoch - now;
    print("testMatrixArray ${t}ms");
  }

  void testMatrixAttribute() {
    var now = DateTime.now().millisecondsSinceEpoch;
    //var r = Random();

    var lhs = Matrix44();
    var rhs = Matrix44();
    var out = Matrix44();

    for (var i = 0; i < 1000000; i++) {
      lhs.randomSetUp(/*r*/);
      rhs.randomSetUp(/*r*/);
      Matrix44.multiplyMatrices44(lhs, rhs, out);
    }

    var t = DateTime.now().millisecondsSinceEpoch - now;
    print("testMatrixAttribute ${t}ms");
  }

  ffff(double i) {
    //return r.nextDouble() * 100 + r.nextDouble() * 100;
    double a = i + 1;
    double b = 2.3;
    if (a > b) {
      ++a;
    } else {
      b = b + 1;
    }
    if (a == b) {
      b = b + 1;
    }

    double c = a * b + a / b - pow(a, 2.0);
    return c;
  }

  void testFunction() {
    var now = DateTime.now().millisecondsSinceEpoch;
    for (var i = 0; i < 100000000; i++) {
      ffff(i.toDouble());
    }

    var t = DateTime.now().millisecondsSinceEpoch - now;
    print("testFunction ${t}ms");
  }

  //循环测试
  void testLoop() {
    var now = DateTime.now().millisecondsSinceEpoch;

    var element = 0;
    var iteration = 0;
    var iterations = 2;
    var innerloop = 0;
    var sum = 0;
    var arrayLength = 100000000;
    var array = new List(arrayLength);

    for (element = 0; element < arrayLength; element++) {
      array[element] = element;
    }
    for (iteration = 0; iteration < iterations; iteration++) {
      for (innerloop = 0; innerloop < 1000000000; innerloop++) {
        sum += array[(iteration + innerloop) % arrayLength];
      }
    }
    var t = DateTime.now().millisecondsSinceEpoch - now;
    print("testLoop ${t}ms");
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
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

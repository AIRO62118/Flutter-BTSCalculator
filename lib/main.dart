// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: unused_import
import 'moyenne.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter UI Basic'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // ignore: prefer_final_fields
  Icon _plus = const Icon(
    Icons.add,
    color: Colors.black,
  );

  Icon _minus = const Icon(Icons.remove, color: Colors.black);
  // ignore: prefer_final_fields
  bool _addAllBool = false;
  bool _addAnglais = false;
  bool _delAnglais = false;

  Moyenne moyenne = new Moyenne();

  _addAllOnePoint() {
    setState(() {
      if (moyenne.noteAnglais < 20) {
        moyenne.noteAnglais++;
      }
      if (moyenne.noteCEJMA < 20) {
        moyenne.noteCEJMA++;
      }
      if (moyenne.noteCultureG < 20) {
        moyenne.noteCultureG++;
      }
      if (moyenne.noteInfoE4 < 20) {
        moyenne.noteInfoE4++;
      }
      if (moyenne.noteInfoE5 < 20) {
        moyenne.noteInfoE5++;
      }
      if (moyenne.noteInfoE6 < 20) {
        moyenne.noteInfoE6++;
      }
      if (moyenne.noteMath < 20) {
        moyenne.noteMath++;
      }
    });
  }

  void reset() {
    setState(() {
      moyenne.noteAnglais = 10;
      moyenne.noteCEJMA = 10;
      moyenne.noteCultureG = 10;
      moyenne.noteMath = 10;
      moyenne.noteInfoE4 = 10;
      moyenne.noteInfoE5 = 10;
      moyenne.noteInfoE6 = 10;
    });
  }

  _addPointAnglais() {
    setState(() {
      if (moyenne.noteAnglais < 20) {
        moyenne.noteAnglais++;
      }
    });
  }

  _delPointAnglais() {
    setState(() {
      if (moyenne.noteAnglais != 0) {
        moyenne.noteAnglais--;
      }
    });
  }

  _addPointCultureG() {
    setState(() {
      if (moyenne.noteCultureG < 20) {
        moyenne.noteCultureG++;
      }
    });
  }

  _delPointCultureG() {
    setState(() {
      if (moyenne.noteCultureG != 0) {
        moyenne.noteCultureG--;
      }
    });
  }

  _addPointCEJMA() {
    setState(() {
      if (moyenne.noteCEJMA < 20) {
        moyenne.noteCEJMA++;
      }
    });
  }

  _delPointCEJMA() {
    setState(() {
      if (moyenne.noteCEJMA != 0) {
        moyenne.noteCEJMA--;
      }
    });
  }

  _addPointMath() {
    setState(() {
      if (moyenne.noteMath < 20) {
        moyenne.noteMath++;
      }
    });
  }

  _delPointMath() {
    setState(() {
      if (moyenne.noteMath != 0) {
        moyenne.noteMath--;
      }
    });
  }

  _addPointE4() {
    setState(() {
      if (moyenne.noteInfoE4 < 20) {
        moyenne.noteInfoE4++;
      }
    });
  }

  _delPointE4() {
    setState(() {
      if (moyenne.noteInfoE4 != 0) {
        moyenne.noteInfoE4--;
      }
    });
  }

  _addPointE5() {
    setState(() {
      if (moyenne.noteInfoE5 < 20) {
        moyenne.noteInfoE5++;
      }
    });
  }

  _delPointE5() {
    setState(() {
      if (moyenne.noteInfoE5 != 0) {
        moyenne.noteInfoE5--;
      }
    });
  }

  _addPointE6() {
    setState(() {
      if (moyenne.noteInfoE6 < 20) {
        moyenne.noteInfoE6++;
      }
    });
  }

  _delPointE6() {
    setState(() {
      if (moyenne.noteInfoE6 != 0) {
        moyenne.noteInfoE6--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Text(
                  'Matière:',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Text(
                  'Note:',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Text(
                  '+',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Text(
                  '-',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Text(
                  'Culture G',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Text(
                  '${moyenne.noteCultureG}',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                IconButton(onPressed: _addPointCultureG, icon: _plus),
                IconButton(onPressed: _delPointCultureG, icon: _minus),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Text(
                  'Anglais',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Text(
                  '${moyenne.noteAnglais}',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                IconButton(onPressed: _addPointAnglais, icon: _plus),
                IconButton(onPressed: _delPointAnglais, icon: _minus),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Text(
                  'CEJMA',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Text(
                  '${moyenne.noteCEJMA}',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                IconButton(onPressed: _addPointCEJMA, icon: _plus),
                IconButton(onPressed: _delPointCEJMA, icon: _minus),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Text(
                  'Math',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Text(
                  '${moyenne.noteMath}',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                IconButton(onPressed: _addPointMath, icon: _plus),
                IconButton(onPressed: _delPointMath, icon: _minus),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Text(
                  'InfoE4',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Text(
                  '${moyenne.noteInfoE4}',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                IconButton(onPressed: _addPointE4, icon: _plus),
                IconButton(onPressed: _delPointE4, icon: _minus),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Text(
                  'InfoE5',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Text(
                  '${moyenne.noteInfoE5}',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                IconButton(onPressed: _addPointE5, icon: _plus),
                IconButton(onPressed: _delPointE5, icon: _minus),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Text(
                  'InfoE6',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Text(
                  '${moyenne.noteInfoE6}',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                IconButton(onPressed: _addPointE6, icon: _plus),
                IconButton(onPressed: _delPointE6, icon: _minus),
              ],
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Text(
                  'Moyenne',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                Text(
                  '${moyenne.calculMoyenne()}',
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _addAllOnePoint,
          backgroundColor: Colors.red,
          child: _plus),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.add_location,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  Icons.forward,
                  color: Colors.white,
                ),
                onPressed: reset,
              ),
            ],
          ),
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}

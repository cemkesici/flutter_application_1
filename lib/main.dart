// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cem Kesici App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI App With Flutter'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Welcome To My App",
                  style: TextStyle(fontSize: 26),
                ),
             
              ], 
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: [
                    Text(
                      "Widget 1",
                      style: TextStyle(fontSize: 16),
                    ),

                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(250),
                        color: Colors.yellow,
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical:15),
                      child: TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                        ),
                        onPressed: () {},
                        child: Text('Open Text Button'),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [

                    Text(
                      "Widget 2",
                      style: TextStyle(fontSize: 16),
                    ),

                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(250),
                        color: Colors.yellow,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical:15),
                      child: TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      onPressed: () {
                        Text("Tapped item", style: TextStyle(fontSize: 42, color: Colors.black),);
                      },
                      child: Text('Close Text Button'),
                    ),
                    ),
                  ],
                ),
              ],
            ),
            Row(),
          ],
        ),
      ),
    );
  }
}

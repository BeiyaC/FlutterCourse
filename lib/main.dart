import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const HomeScaffold(),
    );
  }
}

class HomeScaffold extends StatelessWidget {
  const HomeScaffold({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic UI"),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.blue,
                width: MediaQuery.sizeOf(context).width/2,
                height: 100,
              ),
              Expanded(
                child: Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.cyan,
                width: MediaQuery.sizeOf(context).width/3,
                height: 100,
              ),
              Container(
                color: Colors.black,
                width: MediaQuery.sizeOf(context).width/3,
                height: 100,
              ),
              Column(
                children: [
                      Container(
                        color: Colors.yellow,
                        width: MediaQuery.sizeOf(context).width/3,
                        height: 20,
                      ),
                      Container(
                        color: Colors.black,
                        width: MediaQuery.sizeOf(context).width/3,
                        height: 20,
                      ),
                      Container(
                        color: Colors.yellow,
                        width: MediaQuery.sizeOf(context).width/3,
                        height: 20,
                      )

                  
                ],
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  color: Colors.brown,
                  width: MediaQuery.sizeOf(context).width,
                  height: 100
                ),
              )
            ],
          )

        ]
      ),
      backgroundColor: Colors.white,
    );
  }
}

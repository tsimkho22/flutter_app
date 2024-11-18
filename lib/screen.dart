import 'package:flutter/material.dart';



class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  int _count = 0;
  void IncrementNumber() {
    setState(() {
      _count++;
    });
  }

  void DecrementNumber() {
    setState(() {
      _count--;
    });
  }

  void ResetNumber() {
    setState(() {
      _count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Caffe Neverland",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            ResetNumber();
          },
          icon: Icon(
            Icons.list,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              IncrementNumber();
            },
            icon: Icon(
              Icons.add,
            ),
          ),
          IconButton(
            onPressed: () {
              DecrementNumber();
            },
            icon: Icon(
              Icons.remove,
            ),
          ),
          IconButton(
            onPressed: () {
              //DecrementNumber();
            },
            icon: Icon(
              Icons.more,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.white,
              Colors.green,
            ],
            radius: 1,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Display count number",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 30,
                ),
              ),
              Text(
                '$_count',
                style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.red.shade900),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          IncrementNumber();
        },
        child: Icon(
          Icons.add,
          color: Colors.blue.shade800,
          size: 30,
        ),
      ),
    );
  }
}

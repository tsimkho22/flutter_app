import 'package:firstapp/ManageData/drawerMenu.dart';
import 'package:flutter/material.dart';

class ManageHomePage extends StatefulWidget {
  const ManageHomePage({super.key});

  @override
  State<ManageHomePage> createState() => _ManageHomePageState();
}

class _ManageHomePageState extends State<ManageHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('ແອັບຂາຍເຄື່ອງ'),
      ),
      drawer: drawerMenu(),
    );
  }
}

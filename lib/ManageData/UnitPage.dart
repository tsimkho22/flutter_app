import 'package:flutter/material.dart';

class UnitPage extends StatefulWidget {
  const UnitPage({super.key});

  @override
  State<UnitPage> createState() => _UnitPageState();
}

class _UnitPageState extends State<UnitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Unit',
        ),
      ),
      body: Center(
        child: Text(
          "Unit",
        ),
      ),
    );
  }
}

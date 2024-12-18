import 'package:firstapp/ManageData/CategoryPage.dart';
import 'package:firstapp/ManageData/CurrencyExchangePage.dart';
import 'package:firstapp/ManageData/Customer.dart';
import 'package:firstapp/ManageData/EmployeePage.dart';
import 'package:firstapp/ManageData/ProductPage.dart';
import 'package:firstapp/ManageData/SupplierPage.dart';
import 'package:firstapp/ManageData/UnitPage.dart';
import 'package:flutter/material.dart';

class ManageMenuPage extends StatefulWidget {
  const ManageMenuPage({super.key});

  @override
  State<ManageMenuPage> createState() => _ManageMenuPageState();
}

List items = [
  'Unit',
  'Category',
  'Product',
  'Rate Exchange',
  'Employee',
  'Customer',
  'Supplier'
];
List iconColor = [Colors.amber.shade800];
List iconSize = [90];
List icon = [
  Icon(
    Icons.ac_unit,
    size: iconSize[0],
    color: iconColor[0],
  ),
  Icon(
    Icons.category,
    size: iconSize[0],
    color: iconColor[0],
  ),
  Icon(
    Icons.folder_open,
    size: iconSize[0],
    color: iconColor[0],
  ),
  Icon(
    Icons.currency_exchange,
    size: iconSize[0],
    color: iconColor[0],
  ),
  Icon(
    Icons.person,
    size: iconSize[0],
    color: iconColor[0],
  ),
  Icon(
    Icons.person_add,
    size: iconSize[0],
    color: iconColor[0],
  ),
  Icon(
    Icons.local_shipping,
    size: iconSize[0],
    color: iconColor[0],
  ),
];

List routePages = [
  UnitPage(),
  CategoryPage(),
  ProductPage(),
  CurrencyExchangePage(),
  Employee(),
  Customer(),
  SupplierPage()
];

class _ManageMenuPageState extends State<ManageMenuPage> {
  void selectPage(int idx) {
    setState(() {
      MaterialPageRoute route =
          MaterialPageRoute(builder: (_) => routePages[idx]);
      Navigator.of(context).push(route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(
          5,
        ),
        child: GridView.builder(
            itemCount: items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (c, idx) {
              return InkWell(
                onTap: () {
                  selectPage(idx);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  width: 180,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    children: [
                      icon[idx],
                      Spacer(),
                      Text(
                        items[idx],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

import 'package:firstapp/ManageData/drawerMenu.dart';
import 'package:firstapp/home/homePage.dart';
import 'package:firstapp/home/messagePage.dart';
import 'package:firstapp/home/servicePage.dart';
import 'package:firstapp/login/loginPage.dart';
import 'package:flutter/material.dart';

List page = [homePage(), LoginPage(), messagePage(), servicePage()];
List<String> itemMenu = [
  'Information',
  'Sale',
  'Order',
  'Import',
  'Search',
  'Report'
];
List icon = [
  Icon(
    Icons.storage,
    color: Colors.amber.shade700,
    size: 30,
  ),
  Icon(
    Icons.wifi,
    color: Colors.amber.shade700,
    size: 30,
  ),
  Icon(
    Icons.settings,
    color: Colors.amber.shade700,
    size: 30,
  ),
];
List iconMenu = [
  Icon(
    Icons.folder,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.shopping_bag,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.forward,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.download,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.search,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.bar_chart,
    color: Colors.white,
    size: 30,
  ),
];

List<String> item = ['Connect to database', 'Internet Connection', 'Setting'];

class ManageHomePage extends StatefulWidget {
  const ManageHomePage({super.key});

  @override
  State<ManageHomePage> createState() => _ManageHomePageState();
}

class _ManageHomePageState extends State<ManageHomePage> {
  int ind = 0;
  void ontap(int _ind) {
    setState(() {
      ind = _ind;
    });
  }

  void showMessage() {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: Text('Flutter'),
          content: Text('Test'),
          actions: [messagePage()],
        );
      },
    );
  }

  Widget TabBarItem() {
    return TabBar(isScrollable: true, tabs: [
      Tab(
        icon: iconMenu[0],
        text: itemMenu[0],
      ),
      Tab(
        icon: iconMenu[1],
        text: itemMenu[1],
      ),
      Tab(
        icon: iconMenu[2],
        text: itemMenu[2],
      ),
      Tab(
        icon: iconMenu[3],
        text: itemMenu[3],
      ),
      Tab(
        icon: iconMenu[4],
        text: itemMenu[4],
      ),
      Tab(
        icon: iconMenu[5],
        text: itemMenu[5],
      )
    ]);
  }

  Widget menuPopup() {
    return PopupMenuButton<String>(
      itemBuilder: (c) => [
        PopupMenuItem(
          child: Card(
            elevation: 10,
            shadowColor: Colors.amberAccent,
            shape: Border.all(
              color: Colors.red,
              width: 2,
            ),
            child: ListTile(
              leading: icon[0],
              title: Text(
                '${item[0]}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              subtitle: Text('Detail'),
              onTap: () {
                Navigator.of(context).pop();
                showMessage();
              },
            ),
          ),
        ),
        PopupMenuDivider(),
        PopupMenuItem(
          child: Card(
            elevation: 10,
            shadowColor: Colors.amberAccent,
            child: ListTile(
              leading: icon[1],
              title: Text(
                '${item[1]}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        PopupMenuDivider(),
        PopupMenuItem(
          child: Card(
            elevation: 10,
            shadowColor: Colors.amberAccent,
            child: ListTile(
              leading: icon[2],
              title: Text(
                '${item[2]}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget bottomBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.amber.shade700,
      selectedIconTheme: IconThemeData(
        color: Colors.blue,
        size: 30,
      ),
      selectedFontSize: 20,
      selectedLabelStyle: TextStyle(
        color: Colors.white,
      ),
      type: BottomNavigationBarType.fixed,
      currentIndex: ind,
      onTap: ontap,
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'ໜ້າຫຼັກ'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.forward,
            ),
            label: 'ເຂົ້າສູ້ລະບົບ'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            label: 'ຂໍ້ຄວາມ'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.more_vert,
            ),
            label: 'ບໍລິການ'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: itemMenu.indexed.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade700,
          title: Text('ແອັບຂາຍເຄື່ອງ'),
          actions: [
            menuPopup(),
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(60), child: TabBarItem()),
        ),
        body: page.isEmpty
            ? CircularProgressIndicator()
            : TabBarView(children: [
                Center(
                  child: Text(
                    'Test',
                  ),
                ),
                Center(
                  child: Text(
                    'Test1',
                  ),
                ),
                Center(
                  child: Text(
                    'Test2',
                  ),
                ),
                Center(
                  child: Text(
                    'Test3',
                  ),
                ),
                Center(
                  child: Text(
                    'Test4',
                  ),
                ),
                Center(
                  child: Text(
                    'Test5',
                  ),
                ),
              ]),
        drawer: drawerMenu(),
        bottomNavigationBar: bottomBar(),
      ),
    );
  }
}

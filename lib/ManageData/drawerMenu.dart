import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class drawerMenu extends StatefulWidget {
  const drawerMenu({super.key});

  @override
  State<drawerMenu> createState() => _drawerMenuState();
}

class _drawerMenuState extends State<drawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'ຮ້ານຄາເຟ່ neverland',
            ),
            accountEmail: Text(
              'neverland@gmail.com',
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset("assets/images/kuv.jpg"),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.folder,
                      color: Colors.amber.shade900,
                      size: 25,
                    ),
                    title: Text(
                      'ຈັດການຂໍ້ມູນພື້ນຖານ',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 21,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Divider(),
                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.folder,
                      color: Colors.amber.shade900,
                      size: 25,
                    ),
                    title: Text(
                      'ຂາຍ',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 21,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                Divider(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

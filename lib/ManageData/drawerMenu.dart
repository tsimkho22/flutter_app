import 'package:firstapp/ManageData/ManageHomePage.dart';
import 'package:firstapp/ManageData/ManageMenuPage.dart';
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
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/images.jpeg',
                  ),
                  fit: BoxFit.cover),
            ),
            accountName: Text(
              'ຮ້ານຄາເຟ່ neverland',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            accountEmail: Text(
              'neverland@gmail.com',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            currentAccountPicture: Container(
              width: 200,
              height: 200,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: CircleAvatar(
                child: ClipOval(
                  child: Image.asset("assets/images/kuv.jpg"),
                ),
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
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      MaterialPageRoute route =
                          MaterialPageRoute(builder: (_) => ManageHomePage());
                      Navigator.of(context).push(route);
                    },
                  ),
                ),
                Divider(),
                Card(
                  elevation: 10,
                  child: ListTile(
                    leading: Icon(
                      Icons.shopping_bag,
                      color: Colors.amber.shade900,
                      size: 25,
                    ),
                    title: Text(
                      'ຂາຍ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
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
                      Icons.arrow_forward,
                      color: Colors.amber.shade900,
                      size: 25,
                    ),
                    title: Text(
                      'ສັ່ງຊື້',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
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
                      Icons.download,
                      color: Colors.amber.shade900,
                      size: 25,
                    ),
                    title: Text(
                      'ນຳເຂົ້າ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
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
                      Icons.search,
                      color: Colors.amber.shade900,
                      size: 25,
                    ),
                    title: Text(
                      'ຄົ້ນຫາສິນຄ້າ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
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
                      Icons.report,
                      color: Colors.amber.shade900,
                      size: 25,
                    ),
                    title: Text(
                      'ລາຍງານ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

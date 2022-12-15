import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          //---------------AppBar-------------------------

          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 247, 154, 4),

            title: Text(
              "Khabar-Bilash",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            centerTitle: true,

            //-----------------------------
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),

            //-----------------------------
            elevation: 30,
            shadowColor: Colors.blue,

            //-----------------------------

            actions: [
              Icon(
                Icons.favorite,
                size: 30,
                color: Color.fromARGB(255, 114, 72, 69),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 30,
                  )),
              IconButton(
                  onPressed: () {
                    print('Hello');
                  },
                  icon: Icon(
                    Icons.more_vert,
                    size: 30,
                  ))
            ],

            //-------------------------------------
            toolbarHeight: 62.0,
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.local_offer, size: 30),
                text: 'Offer',
              ),
              Tab(
                icon: Icon(Icons.add_shopping_cart, size: 30),
                text: 'Shopping',
              ),
              Tab(
                icon: Icon(Icons.notifications_active, size: 30),
                text: 'Notification',
              )
            ]),
          ),
          // padding : EdgeInsets.(horizontal.25.00)
          //---------------Body----------------------------

          backgroundColor: Color.fromARGB(255, 243, 232, 210),
          body: Container(
            padding: EdgeInsets.all(30.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                MyMenu(
                  title: 'Home',
                  icon: Icons.home_filled,
                  color: Colors.brown,
                ),
                MyMenu(
                  title: 'Information',
                  icon: Icons.info_outline,
                  color: Colors.blue,
                ),
                MyMenu(
                  title: 'Food',
                  icon: Icons.food_bank,
                  color: Colors.orange,
                ),
                MyMenu(
                  title: 'Receipt',
                  icon: Icons.receipt,
                  color: Colors.blueGrey,
                ),
                MyMenu(
                  title: 'Qr Code',
                  icon: Icons.qr_code,
                  color: Colors.red,
                ),
                MyMenu(
                  title: 'Menu',
                  icon: Icons.restaurant_menu,
                  color: Colors.teal,
                ),
              ],
            ),
          ),

          //----------Bottom Navigation Bar-------------

          bottomNavigationBar: Material(
            color: Color.fromARGB(255, 247, 154, 4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.payments, size: 35),
                  text: 'Payment',
                ),
                Tab(
                  icon: Icon(Icons.bus_alert, size: 35),
                  text: 'Delivery',
                ),
                Tab(
                  icon: Icon(
                    Icons.map,
                    size: 35,
                  ),
                  text: 'Map',
                ),
              ],
            ),
          ),

          //-----------------------------Drawer---------------------------
          drawer: Drawer(
            backgroundColor: Color.fromARGB(255, 243, 232, 210),
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(
                    'Khabar-Bilash',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  accountEmail: Text(
                    'Food Delivery',
                    style: TextStyle(fontSize: 20),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text(
                      'K',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  //-----------Box Decoration---------------------

                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 154, 4),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Home",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.food_bank,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                Divider(color: Colors.red),
                ListTile(
                  title: Text(
                    "Food Item",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.fastfood,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                Divider(color: Colors.red),
                ListTile(
                  title: Text(
                    "Setting",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.supervised_user_circle,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
                Divider(color: Colors.red),
                ListTile(
                  title: Text(
                    "Terms & Condition",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                Divider(color: Colors.red),
                ListTile(
                  title: Text(
                    "Login",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  ),
                  leading: Icon(
                    Icons.login_rounded,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                Divider(color: Colors.red),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//-------------Stateless Widget-----------------
class MyMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor color;

  const MyMenu({required this.title, required this.icon, required this.color});

  //----------------------------------------

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      color: Color.fromARGB(255, 249, 221, 136),
      elevation: 10,
      shadowColor: Colors.blue,
      child: InkWell(
        onTap: () {},
        splashColor: Color.fromARGB(255, 158, 205, 246),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                size: 80,
                color: color,
              ),
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}

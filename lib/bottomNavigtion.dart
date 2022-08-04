import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Cart/cart.dart';
import 'Home/mainhome.dart';
import 'Home/notification.dart';
import 'Profile/profile.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int navbarIndex = 0;
  List navigator = [MainHome(), Profile(),Cart(), Notif()];
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text(user!.displayName!),
      accountEmail: Text(user.email!),
      currentAccountPicture: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(user.photoURL!),
      ),
      otherAccountsPictures: <Widget>[
        CircleAvatar(
          child: Text('A'),
          backgroundColor: Colors.yellow,
        ),
        CircleAvatar(
          child: Text('B'),
          backgroundColor: Colors.red,
        )
      ],
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: Text('To page 1'),
          // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile())),
        ),
        ListTile(
          title: Text('To page 2'),
          //onTap: () => Navigator.of(context).push(_NewPage(2)),
        ),
        ListTile(
          title: Text('other drawer item'),
          // onTap: () {},
        ),
      ],
    );
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
      //       child: Row(
      //         children: [
      //           Container(
      //             width: 200,
      //             decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(20),
      //                 border: Border.all(color: Colors.black)),
      //             child: TextField(
      //               decoration: InputDecoration(
      //                   border: InputBorder.none, hintText: 'serch here'),
      //             ),
      //           ),
      //           SizedBox(
      //             width: 50,
      //           ),
      //           Padding(
      //             padding: const EdgeInsets.only(right: 8.0),
      //             child: InkWell(
      //               onTap: () {
      //                 Navigator.push(context,
      //                     MaterialPageRoute(builder: (context) => Profile()));
      //               },
      //               child: CircleAvatar(
      //                 backgroundImage:
      //                     CachedNetworkImageProvider(user.photoURL!),
      //               ),
      //             ),
      //           )
      //         ],
      //       ),
      //     )
      //   ],
      //   elevation: 0,
      //   centerTitle: true,
      //   iconTheme: IconThemeData(color: Colors.black),
      // ),
      // drawer: Drawer(
      //   child: drawerItems,
      // ),
      body: navigator[navbarIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            height: 60,
            backgroundColor: Colors.white,
            elevation: 10,
            indicatorColor: Colors.black12,
            labelTextStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            )),
        child: NavigationBar(
          onDestinationSelected: (navbarIndex) =>
              setState(() => this.navbarIndex = navbarIndex),
          selectedIndex: navbarIndex,
          destinations: [
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Mail',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person),
                icon: Icon(Icons.person_outline),
                label: 'Profile'),

            NavigationDestination(
                selectedIcon: Icon(Icons.shopping_cart),
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart'),
            NavigationDestination(
                selectedIcon: Icon(Icons.notifications),
                icon: Icon(Icons.notifications_none),
                label: 'Notification')
          ],
        ),
      ),
      // bottomNavigationBar: NavigationBarTheme(
      //   data: NavigationBarThemeData(
      //     indicatorColor: Colors.blueGrey,
      //   ),
      //   child: BottomNavigationBar(
      //
      //     currentIndex: navbarIndex,
      //     onTap: (index) {
      //       setState(() {
      //         if (index != navbarIndex) {
      //           navbarIndex = index;
      //         }
      //       });
      //     },
      //     items: <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home_outlined,
      //           color: Colors.black,
      //         ),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.shopping_cart_outlined,
      //           color: Colors.black,
      //         ),
      //         label: 'Cart',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.perm_identity_outlined,
      //           color: Colors.black,
      //         ),
      //         label: 'Profile',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.notifications_none,
      //           color: Colors.black,
      //         ),
      //         label: 'Notification',
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

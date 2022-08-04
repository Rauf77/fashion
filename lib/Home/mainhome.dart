import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/Cart/wish.dart';
import 'package:myapp2/Kids/kids.dart';
import 'package:myapp2/Ladies/ladies.dart';
import 'package:myapp2/Men/men.dart';
import 'package:myapp2/loading.dart';

import '../Profile/profile.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
   User? user=FirebaseAuth.instance.currentUser;

  List circle = [
    {
      'image':
          'https://thumbs.dreamstime.com/b/pants-vector-icon-cartoon-isolated-white-background-logo-178171331.jpg'
    },
    {
      'image':
          'https://i.etsystatic.com/29647992/r/il/8c7226/3711415275/il_570xN.3711415275_ogsr.jpg'
    },
    {
      'image':
          'https://image.shutterstock.com/image-vector/long-sleeve-dress-shirt-isolated-260nw-1262562742.jpg'
    },
    {
      'image':
          'https://thumbs.dreamstime.com/z/white-fluffy-wedding-dress-girl-wedding-wear-women-clothing-single-icon-cartoon-style-vector-symbol-stock-web-88860170.jpg'
    },
    {
      'image':
          'https://i.pinimg.com/736x/d7/b0/81/d7b08187576de7692c17ba81353818b5.jpg'
    },
    {
      'image':
          'https://images.cdn1.stockunlimited.net/clipart/wristwatch-icon_2005031.jpg'
    },
    {
      'image':
          'https://cdn.w600.comps.canstockphoto.com/woman-handbag-hand-drawn-vector-fashion-eps-vectors_csp34790038.jpg'
    },
  ];
  List ladies = [
    {
      'image':
          'https://www.khmertimeskh.com/wp-content/uploads/2022/03/Cambodias-first-HM-wows-the-crowds-on-opening-day-2.jpg'
    },
    {
      'image':
          'https://www.outfittrends.com/wp-content/uploads/2022/03/banarasi-saree-designs.png'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF_PLmmsk7RLr3KmAQi9KIYxx0AIiUVkhzcg&usqp=CAU',
    },
  ];
  List men = [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQHrTAEL8HBHNtxRbVNGc8njeoXc7hJ0Yntp-XoUvYg3DQcMvlsrF12XI3mwbqrOvs9Hd0&usqp=CAU'
    },
    {
      'image':
          'https://www.dmarge.com/wp-content/uploads/2017/07/basics-480x290.jpg'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRykojGG_GCmVpfUCIRmcBMMPchaePjtSTWEPerjXD6FsZ96koXMpC3-Y8cEMngp5mDVXw&usqp=CAU'
    },
  ];

  bool loading=false;

  @override
  Widget build(BuildContext context) {
    final user=FirebaseAuth.instance.currentUser;
    final drawerHeader = UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        // image: DecorationImage(image: CachedNetworkImageProvider(''))
        color: Colors.black12
      ),

      accountName: Text(user!.displayName!),
      accountEmail: Text(user.email!),
      currentAccountPicture: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(user.photoURL!),
      ),
      // otherAccountsPictures: <Widget>[
      //   CircleAvatar(
      //     child: Text('A'),
      //     backgroundColor: Colors.yellow,
      //   ),
      //   CircleAvatar(
      //     child: Text('B'),
      //     backgroundColor: Colors.red,
      //   ),
      //
      // ],

    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          title: Row(
            children: [
              Icon(Icons.favorite_border,color: Colors.black,),
              SizedBox(width: 10,),
              Text('Favourite',style: TextStyle(color: Colors.black),),
            ],
          ),
           onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>WishList())),
        ),
        ListTile(
          title: Row(
            children: [
              Icon(Icons.settings,color: Colors.black,),
              SizedBox(width: 10,),
              Text('Settings',style: TextStyle(color: Colors.black),),
            ],
          ),
          //onTap: () => Navigator.of(context).push(_NewPage(2)),
        ),
        ListTile(
          title: Text('other drawer item'),
          // onTap: () {},
        ),
      ],
    );
    return loading? Loading():  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
            child: Row(
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'serch here'),
                  ),
                ),
                SizedBox(width: 50,),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                    },
                    child: CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(user.photoURL!),

                    ),
                  ),
                )
              ],
            ),
          )
        ],
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(circle.length, (index) {
                      final list = circle[index];

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                              CachedNetworkImageProvider(list['image']),
                        ),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Kids()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: CachedNetworkImageProvider(
                                'https://vue.ai/blog/wp-content/uploads/2019/05/shutterstock_639091834.jpg'),
                            fit: BoxFit.cover,
                          )),
                      height: 150,
                      width: double.infinity,
                      child: Center(
                        child: Text(
                          ''
                          'KIDS',
                          style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70,
                              letterSpacing: 10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  // showDialog(
                  //     context: context,
                  //     builder:(BuildContext context)=>AlertDialog(
                  //       title: Text('Are you sure'),
                  //       content: Text('YOU ACCEPT'),
                  //       actions: [
                  //         TextButton(onPressed: (){}, child: Text('No')),
                  //         TextButton(onPressed: (){}, child: Text('yes ')),
                  //
                  //       ],
                  //     ) );
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Ladies()));
                },
                child: Container(
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: ladies.length,
                      itemBuilder: (context, int index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Center(
                              child: Text(
                                'LADIES',
                                style: TextStyle(
                                    fontSize: 100, color: Colors.white70),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    ladies[index]['image'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                border: Border.all(color: Colors.white30)),
                            width: 340,
                          ),
                        );
                      }),
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: men.length,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Mens()));
                          },
                          child: Container(
                            child: Center(
                              child: Text(
                                'MEN',
                                style: TextStyle(
                                    fontSize: 100,
                                    letterSpacing: 50,
                                    color: Colors.white70),
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: CachedNetworkImageProvider(
                                    men[index]['image'],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                border: Border.all(color: Colors.white30)),
                            width: 340,
                          ),
                        ),
                      );
                    }),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: drawerItems,
        backgroundColor: Colors.white,
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: navbarIndex,
      //   onTap: (index) {
      //     setState(() {
      //       if (index != navbarIndex) {
      //         navbarIndex = index;
      //       }
      //     });
      //   },
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home_outlined,
      //         color: Colors.black,
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.shopping_cart_outlined,
      //         color: Colors.black,
      //       ),
      //       label: 'Cart',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.perm_identity_outlined,
      //         color: Colors.black,
      //       ),
      //       label: 'Profile',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.notifications_none,
      //         color: Colors.black,
      //       ),
      //       label: 'Notification',
      //     ),
      //   ],
      // ),

    );
  }
}

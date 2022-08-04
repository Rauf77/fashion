// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../Cart/cart.dart';
// import '../Kids/kids.dart';
// import '../Ladies/ladies.dart';
// import '../Men/men.dart';
// import '../Profile/profile.dart';
// import '../lis.dart';
// import 'mainhome.dart';
// import 'notification.dart';
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               SingleChildScrollView(
//                 physics: BouncingScrollPhysics(),
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: List.generate(circle.length, (index) {
//                     final list = circle[index];
//
//                     return Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: CircleAvatar(
//                         backgroundImage:
//                             CachedNetworkImageProvider(list['image']),
//                       ),
//                     );
//                   }),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) => Kids()));
//                   },
//                   child: Container(
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         image: const DecorationImage(
//                           image: CachedNetworkImageProvider(
//                               'https://vue.ai/blog/wp-content/uploads/2019/05/shutterstock_639091834.jpg'),
//                           fit: BoxFit.cover,
//                         )),
//                     height: 150,
//                     width: double.infinity,
//                     child: Center(
//                       child: Text(
//                         ''
//                         'KIDS',
//                         style: TextStyle(
//                             fontSize: 80,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white70,
//                             letterSpacing: 10),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: InkWell(
//               onTap: () {
//                 // showDialog(
//                 //     context: context,
//                 //     builder:(BuildContext context)=>AlertDialog(
//                 //       title: Text('Are you sure'),
//                 //       content: Text('YOU ACCEPT'),
//                 //       actions: [
//                 //         TextButton(onPressed: (){}, child: Text('No')),
//                 //         TextButton(onPressed: (){}, child: Text('yes ')),
//                 //
//                 //       ],
//                 //     ) );
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => Ladies()));
//               },
//               child: Container(
//                 height: 200,
//                 child: ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: ladies.length,
//                     itemBuilder: (context, int index) {
//                       return Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Container(
//                           child: Center(
//                             child: Text(
//                               'LADIES',
//                               style: TextStyle(
//                                   fontSize: 100, color: Colors.white70),
//                             ),
//                           ),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               image: DecorationImage(
//                                 image: CachedNetworkImageProvider(
//                                   ladies[index]['image'],
//                                 ),
//                                 fit: BoxFit.cover,
//                               ),
//                               border: Border.all(color: Colors.white30)),
//                           width: 340,
//                         ),
//                       );
//                     }),
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 200,
//               child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: men.length,
//                   itemBuilder: (context, int index) {
//                     return Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.push(context,
//                               MaterialPageRoute(builder: (context) => Mens()));
//                         },
//                         child: Container(
//                           child: Center(
//                             child: Text(
//                               'MEN',
//                               style: TextStyle(
//                                   fontSize: 100,
//                                   letterSpacing: 50,
//                                   color: Colors.white70),
//                             ),
//                           ),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               image: DecorationImage(
//                                 image: CachedNetworkImageProvider(
//                                   men[index]['image'],
//                                 ),
//                                 fit: BoxFit.cover,
//                               ),
//                               border: Border.all(color: Colors.white30)),
//                           width: 340,
//                         ),
//                       ),
//                     );
//                   }),
//               color: Colors.white,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

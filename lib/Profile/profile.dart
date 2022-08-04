import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:myapp2/Home/Provider/google_sign_in.dart';
import 'package:myapp2/Home/login.dart';
import 'package:provider/provider.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  logout()async{

    // await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
    await Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Login()), (route) => false);
  }
  // SignOut() async {
  //   await FirebaseAuth.instance.signOut();
  // }

  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PROFILE',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              letterSpacing: 7,
              color: Colors.black),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: CachedNetworkImageProvider(user!.photoURL!),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Name:' + user!.displayName!,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email:' + user!.email!,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(10),
            //   child: Align(
            //     alignment: Alignment.topLeft,
            //     child: Text(
            //       'Phone Number:' + user!.phoneNumber,
            //       style: TextStyle(
            //         fontSize: 15,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ),
            // ),
            Center(
              child: Container(
                width: 130,
                child: GestureDetector(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.logout,
                        color: Colors.red,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Log Out',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  onTap: ()  async {


                  await  GoogleSignIn().signOut();
                  FirebaseAuth.instance.signOut();

                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>Login()), (route) => false);

                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

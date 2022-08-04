import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../bottomNavigtion.dart';

class GoogleSignupButtonWidget extends StatelessWidget {
  const GoogleSignupButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    signInGoogle()async{

      GoogleSignInAccount? googleUser=await GoogleSignIn().signIn();
      GoogleSignInAuthentication? googleAuth=await googleUser?.authentication;
      AuthCredential credential=GoogleAuthProvider.credential(
        accessToken:googleAuth?.accessToken ,
        idToken: googleAuth?.idToken,
      );
      UserCredential userCredential=await FirebaseAuth.instance.signInWithCredential(credential);
      var userid=userCredential.user?.uid;
      var username=userCredential.user?.displayName;
      var userimage=userCredential.user?.photoURL;
      var useremail=userCredential.user?.email;
      FirebaseFirestore.instance.collection('user').doc(userid).set({
        'userid':userid,
        'username':username,
        'useremail':useremail,
        'userimage':userimage

      });

      print(userCredential.user?.displayName);


      if(userCredential.user!=null){
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>BottomNavigation()), (route) => false);
      }

    }


    return Container(

      child: OutlinedButton.icon(
        label: Text(
          'Sign In With Google',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.grey),
        ),
        icon: FaIcon(
          FontAwesomeIcons.google,
          color: Colors.red,
        ),

        onPressed: () async {

        await  signInGoogle();

        },
      ),
    );
  }
}

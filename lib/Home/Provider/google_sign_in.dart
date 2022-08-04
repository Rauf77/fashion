import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
final googleSignIn=GoogleSignIn();
late bool isSigningIn;

GoogleSignInAccount? _currentUser;


class GoogleSignInProvider extends ChangeNotifier{


   GoogleSignInProvider() {
    isSigningIn=false;
  }
  bool get isSignIn=>isSigningIn;
  set isSignIn(bool isSignIn){
    isSigningIn=isSignIn;
    notifyListeners();
  }

  Future login()async{
    isSignIn=true;
    final user=await googleSignIn.signIn();
    if(user==null){
      isSignIn=false;
      return;
    }else{
      final googleAuth=await user.authentication;
      final credential=GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
      isSignIn=true;
    }

  }
  void logout()async{
    // isSignIn=false;
    await googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();

  }
}
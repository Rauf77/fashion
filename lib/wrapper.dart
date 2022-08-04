import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/Home/login.dart';

import 'bottomNavigtion.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: ( context, snapshot){

            if(snapshot.connectionState==ConnectionState.active){
              if(snapshot.data==null){
                return Login();
              }else{
               return BottomNavigation();
              }
            }
            return Center(child: CircularProgressIndicator(),);
            }


    ),

    );
  }
}

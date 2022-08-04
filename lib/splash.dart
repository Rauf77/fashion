import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/wrapper.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigateHome();
  }
  _navigateHome()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Wrapper()));
  }

  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Container(
          height: 50,
          width: 50,
          // color: Colors.black,
          decoration: BoxDecoration(
             image: DecorationImage(image:AssetImage('assets/splash.gif'),
             fit: BoxFit.cover)
          ),
        ),
      ),
    );
  }
}

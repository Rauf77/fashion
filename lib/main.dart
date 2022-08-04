// @dart=2.9

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/splash.dart';
import 'package:myapp2/wrapper.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) =>
      const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Splash(),
  );
  }



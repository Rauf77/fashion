import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Nike extends StatefulWidget {
  final String image;
  const Nike({Key? key, required this.image,}) : super(key: key);

  @override
  State<Nike> createState() => _NikeState();
}

class _NikeState extends State<Nike> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Text('hi',
    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 100),),
    );
  }
}

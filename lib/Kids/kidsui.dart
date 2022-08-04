import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Kidsui extends StatefulWidget {
  var image;
  var name;
  Kidsui({Key? key,
    this.image,
    this .name}) : super(key: key);

  @override
  State<Kidsui> createState() => _KidsuiState();
}

class _KidsuiState extends State<Kidsui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: Text(widget.name,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            letterSpacing: 7,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),

    );
  }
}

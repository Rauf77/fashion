import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Saree extends StatefulWidget {
  const Saree({Key? key}) : super(key: key);

  @override
  State<Saree> createState() => _SareeState();
}

class _SareeState extends State<Saree> {
  List saree = [
    {
      'image':
          'http://cdn.shopify.com/s/files/1/0046/4506/0680/products/dark-green-silk-saree-nc15949_grande.jpg?v=1642824819'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ETHENIC WEAR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: saree.length,
          itemBuilder: (context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: CachedNetworkImageProvider(
                                    saree[index]['image']),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(child: Text('saree'))
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/Stock/stock.dart';

class Watches extends StatefulWidget {
  const Watches({Key? key}) : super(key: key);

  @override
  State<Watches> createState() => _WatchesState();
}

class _WatchesState extends State<Watches> {
  List watch = [
    {
      'image':
          'https://image.shutterstock.com/image-illustration/mens-swiss-mechanical-golden-wrist-260nw-305469296.jpg',
      'name': 'ROLEX',
      'price': '125000',
      'det':
          'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'
    },
    {
      'image':
          'https://staticimg.titan.co.in/Fastrack/Catalog/3099SL01_1.jpg?pView=pdp',
      'name': 'Fasttrack',
      'price': '5000',
      'det':
          'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'
    },
    {
      'image':
          'https://staticimg.titan.co.in/Fastrack/Catalog/3099SM02_1.jpg?pView=pdp',
      'name': 'FastTrack',
      'price': '7000',
      'det':
          'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'
    },
    {
      'image': 'https://m.media-amazon.com/images/I/61jw80WkHoL._UX569_.jpg',
      'name': 'G-SHOCK',
      'price': '9000',
      'det':
          'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'
    },
    {
      'image':
          'https://www.omegawatches.com/media/catalog/product/cache/e7984e6883c65585a016084208a7f1f23dbda14c55ba5f81dd86443eff42d1f8/o/m/omega-seamaster-aqua-terra-150m-22010412103001-list.jpg',
      'name': 'OMEGA',
      'price': '55000',
      'det':
          'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'
    },
    {
      'image':
          'https://rukminim1.flixcart.com/image/612/612/ks6ef0w0/watch/m/r/2/p5065-puma-original-imag5stfdvyhgzzx.jpeg?q=70',
      'name': 'POMA',
      'price': '125',
      'det':
          'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'
    },
    {
      'image':
          'https://cdn.fashiola.in/L92290891/puma-men-grey-dial-straps-analogue-watch-p6006.jpg',
      'name': 'PUMA',
      'price': '2500',
      'det':
          'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'
    },
    {
      'image': 'https://m.media-amazon.com/images/I/81PDZs8EK9L._UY445_.jpg',
      'name': 'ABIBAS',
      'price': '250',
      'det':
          'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'
    },
    {
      'image':
          'https://i.pinimg.com/550x/95/ea/0f/95ea0f9ba8db36ed2cbb66d698a4edff.jpg',
      'name': 'ADIDAS',
      'price': '2500',
      'det':
          'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'
    },
    {
      'image':
          'https://support.apple.com/library/content/dam/edam/applecare/images/en_US/applewatch/watchos8-series7-watch-turn-on.png',
      'name': 'Apple',
      'price': '25000',
      'det':
          'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WATCH',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 7),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
              children: List.generate(watch.length, (index) {
        final list = watch;
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Stock(
                          image: watch[index]['image'],
                          name: watch[index]['name'],
                          price: watch[index]['price'],
                          details: watch[index]['det'],
                        )));
          },
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image:
                              CachedNetworkImageProvider(watch[index]['image']),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        child: Text(
                      watch[index]['name'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        child: Text(
                      watch[index]['price'],
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ))
                  ],
                )
              ],
            ),
            height: 100,
            width: double.infinity,
          ),
        );
      }))),
    );
  }
}

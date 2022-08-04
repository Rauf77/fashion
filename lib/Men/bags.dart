import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Stock/stock.dart';

class Bags extends StatefulWidget {
  const Bags({Key? key}) : super(key: key);

  @override
  State<Bags> createState() => _BagsState();
}

class _BagsState extends State<Bags> {
  List bag=[
    {
      'image':'https://cdn18.wildcraft.com/web-images/medium/styles/AM7YA52UCVS/1649315815619/1.jpg',
      'name':'Wild craft',
      'price':'1299',
      'det':'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'
    },
    {
      'image':'https://images-na.ssl-images-amazon.com/images/I/91rbA3MpMWL._UL1500_.jpg',
      'name':'American tourister',
      'price':'1099',
    'det':'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'

    },
    {
      'image':'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/075487/01/fnd/IND/fmt/png/PUMA-Phase-Backpack',
      'name':'PUMA',
      'price':'799',
      'det':'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'

    },
    {
      'image':'https://rukminim1.flixcart.com/image/714/857/jgwkzgw0/backpack/k/t/2/nk-elmntl-bkpk-ba5381-522-backpack-nike-original-imaf5farwmsxghjf.jpeg?q=50',
      'name':'Nike',
      'price':'1799',
      'det':'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'

    },
    {
      'image':'https://assets.ajio.com/medias/sys_master/root/20220305/wua4/622267d8aeb26921afc86919/-288Wx360H-469115842-black-MODEL.jpg',
      'name':'Nike',
      'price':'1899',
      'det':'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'

    },
    {
      'image':'https://assets.adidas.com/images/w_383,h_383,f_auto,q_auto,fl_lossy,c_fill,g_auto/935f13d2116e4bfc82a0ab8d00f5e3bb_9366/daily-ii-backpack.jpg',
      'name':'adidas',
      'price':'1699',
      'det':'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'

    },
    {
      'image':'https://www.tradeinn.com/f/13812/138124116/new-balance-opp-core-backpack.jpg',
      'name':'New Balance',
      'price':'1299',
      'det':'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'

    },
    {
      'image':'https://assets.adidas.com/images/w_383,h_383,f_auto,q_auto,fl_lossy,c_fill,g_auto/62ca7a9f2a4e413b9650abc200a64a7d_9366/3-stripes-response-backpack.jpg',
      'name':'adidas',
      'price':'2099',
      'det':'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'

    },
    {
      'image':'https://m.media-amazon.com/images/I/71kkL4ChLML._SY450_.jpg',
      'name':'Wild craft',
      'price':'899',
      'det':'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'

    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('BAG',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 7
          ),),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: List.generate(bag.length, (index) {
            final list=bag;
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Stock(
                  image:bag[index]['image'],
                  name:bag[index]['name'],
                  price:bag[index]['price'],
                  details: bag[index]['det'],
                )));
              },
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: CachedNetworkImageProvider(bag[index]['image']),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    SizedBox(width: 30,),

                    Column(

                      children: [
                        SizedBox(height: 20,),
                        Container(child: Text(bag[index]['name'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )),
                        SizedBox(height: 20,),

                        Container(child: Text(bag[index]['price'],
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),))
                      ],
                    )
                  ],
                ),
                height:100 ,
                width: double.infinity,
              ),
            );
          }),
        ),
      ),
    );
  }
}

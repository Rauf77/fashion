import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Stock/stock.dart';

class Footwear extends StatefulWidget {
  const Footwear({Key? key, required image, required navigate})
      : super(key: key);

  @override
  State<Footwear> createState() => _FootwearState();
}

class _FootwearState extends State<Footwear> {
  List foot = [
    {
      'image':
          'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/194462/01/sv01/fnd/IND/fmt/png/PUMA-x-one8-Virat-Kohli-LQDCELL-Method-Running-Shoes',
      'name': 'PUMA',
      'price': '3500',
      'det':
          'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'
    },
    {
      'image':
          'https://publish.one37pm.net/wp-content/uploads/2020/07/3-0.png?fit=750%2C330',
      'name': 'VANS',
      'price': '3700',
      'det':
          'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'
    },
    {
      'image':
          'https://m.media-amazon.com/images/S/aplus-media/vc/13f642fd-ca34-46a2-9707-f1310e380ae9._CR0,0,3000,3000_PT0_SX300__.jpg',
      'name': 'CONVERSE',
      'price': '4300',
      'det':
          'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'
    },
    {
      'image':
          'https://rukminim1.flixcart.com/image/714/857/shoe/z/e/g/tan-lpbc01l023-louis-philippe-43-original-imae27sw7pjeervm.jpeg?q=50',
      'name': 'LP',
      'price': '2300',
      'det':
          'ugewfhgfruefuergfsbfgreukfjeryugfjhduyrgfuertgfufdjhkgvi7yergfjffkfiyerufhgeriygfdiuyg7gfhjfdguyvcegrskfuvgdfs7iyvgchfdjgviuydf'
    },
    {
      'image':
          'https://assets.ajio.com/medias/sys_master/root/20211221/IT6g/61c0d334f997ddf8f157e9a2/-473Wx593H-460962746-white-MODEL.jpg',
      'name': 'crocs',
      'price': '2500'
    },
    {
      'image':
          'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/303abd11-0610-4881-8616-a8103a700aed/air-max-terrascape-90-mens-shoes-61rLc8.png',
      'name': 'Nike',
      'price': '7500'
    },
    {
      'image':
          'https://www.bata.in/dw/image/v2/BCLG_PRD/on/demandware.static/-/Sites-bata-in-master-catalog/default/dwb8dfef96/images/large/8516601_7.jpeg?sw=800&sh=800',
      'name': 'Bata',
      'price': '900'
    },
    {
      'image': 'https://m.media-amazon.com/images/I/51ZYtohXwsL.jpg',
      'name': 'VKC',
      'price': '380'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FOOTWEAR',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
            letterSpacing: 7,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            children: List.generate(foot.length, (index) {
          final list = foot;
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Stock(
                            image: foot[index]['image'],
                            name: foot[index]['name'],
                            price: foot[index]['price'],
                        details:foot[index]['det']
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
                            image: CachedNetworkImageProvider(
                                foot[index]['image']),
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
                        foot[index]['name'],
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
                        foot[index]['price'],
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
        })),
      ),
    );
  }
}

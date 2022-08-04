import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/Ladies/fit.dart';
import 'package:myapp2/Ladies/ldbags.dart';
import 'package:myapp2/Ladies/ldwatch.dart';
import 'package:myapp2/Ladies/makeup.dart';
import 'package:myapp2/Ladies/sandals.dart';
import 'package:myapp2/Ladies/sarees.dart';
import 'package:myapp2/Ladies/urban.dart';

class Ladies extends StatefulWidget {
  const Ladies({Key? key}) : super(key: key);

  @override
  State<Ladies> createState() => _LadiesState();
}

class _LadiesState extends State<Ladies> {
  List ofer = [
    {
      'image':
          'https://png.pngtree.com/thumb_back/fh260/back_our/20190621/ourmid/pngtree-exquisite-handbags-promotion-season-simple-yellow-banner-image_182329.jpg',
    },
    {
      'image':
          'https://staticimg.titan.co.in/production/promotions/titan/Loveall/RagaLa_Mood_6.jpg',
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQS8fsC8QbpECG_3uuOSzfMxrd0vp-KRiGYzE4_VU9FWIRUNlqfrJuHdYufDSbrhy8JXd0&usqp=CAU',
    },
    {
      'image':
          'https://play-lh.googleusercontent.com/tnDh4Xwe-Y58nPY3906e6ZagnlneABW6g8Ot-hXhFs9I_pJU44tdxqCPZRv66VQRryA',
    }
  ];
  List items = [
    {
      'image':
          'https://popinfash.com/content/images/2021/09/9_20210908_134407_0008.jpg',
      'navigate': Saree()
    },
    {
      'image':
          'https://media.istockphoto.com/photos/trendy-hipster-girl-at-the-turquoise-brick-wall-picture-id544120488?s=612x612',
      'navigate': Urban()
    },
    {
      'image':
          'https://esquire-sg.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/2021/04/19133824/puma-nitro-run-collection-trainers-shoes-running-fitness-health-esquire-singapore-esquiresg-cover-740x370.jpg',
      'navigate': Fitness()
    },
    {
      'image':
          'https://png.pngtree.com/background/20210710/original/pngtree-taobao-tmall-fashion-high-end-atmospheric-watch-poster-picture-image_1026883.jpg',
      'navigate': Ldwatch()
    },
    {
      'image':
          'https://image.shutterstock.com/image-vector/beauty-make-banner-template-skin-600w-1738067783.jpg',
      'navigate': Makeup()
    },
    {
      'image':
          'https://images.creativemarket.com/0.1.0/ps/6493706/1820/1214/m1/fpnw/wm1/2-.jpg?1559732826&s=5de70850556c4ba899170c1a74712921',
      'navigate': Sandals()
    },
    {
      'image':
          'https://m.media-amazon.com/images/S/aplus-media/sc/7dd8f35c-f424-4bb8-b0cd-fec7ee296881.__CR0,0,970,600_PT0_SX970_V1___.jpg',
      'navigate': LdBags()
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LADIES',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, letterSpacing: 7),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          CarouselSlider(
              items: List.generate(ofer.length, (index) {
                final list = ofer;
                return Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image:
                              CachedNetworkImageProvider(ofer[index]['image']),
                          fit: BoxFit.cover)),
                );
              }),
              options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 24 / 10,
                  enlargeCenterPage: true)),
          Column(
            children: List.generate(items.length, (index) {
              final list = items;
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => items[index]['navigate']));
                },
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              CachedNetworkImageProvider(items[index]['image']),
                          fit: BoxFit.cover)),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}

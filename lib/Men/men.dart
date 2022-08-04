import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:myapp2/Ladies/ladies.dart';
import 'package:myapp2/Men/bags.dart';
import 'package:myapp2/Men/footweare.dart';
import 'package:myapp2/Men/nike.dart';
import 'package:myapp2/Men/watches.dart';

class Mens extends StatefulWidget {
  const Mens({Key? key}) : super(key: key);

  @override
  State<Mens> createState() => _MensState();
}

class _MensState extends State<Mens> {
  List brands = [
    {'image': 'https://i.ytimg.com/vi/HBG2JHjTLK8/maxresdefault.jpg'},
    {
      'image':
          'https://www.canzmarketing.com/wp-content/uploads/2019/06/adidas-slogan.jpg'
    },
    {
      'image':
          'https://www.vhv.rs/dpng/d/596-5964416_suplik-sklad-nike-hd-png-download.png'
    },
    {'image': 'https://pbs.twimg.com/media/CacAi-3W8AA1526.jpg'},
    {
      'image':
          'https://newspaperads.ads2publish.com/wp-content/uploads/2019/05/u-s-polo-assn-clothing-an-icon-old-as-the-game-itself-ad-times-of-india-bangalore-04-04-2019.png'
    }
  ];
  List icons = [
    {
      'image':
          'https://c.static-nike.com/a/images/w_1200,c_limit/bzl2wmsfh7kgdkufrrjq/seo-title.jpg'
    },
    {
      'image':
          'https://thedesignest.net/wp-content/uploads/2019/12/Adidas-Mountain-Logo.jpg'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTas4guebLn2qgauo0VlG_8uPFt6EjburFSEVrOMm-Kwyw1ZyEvlTsYj7ARjeu_I8V6iDQ&usqp=CAU'
    },
    {
      'image':
          'https://i.pinimg.com/originals/9d/66/07/9d6607f217ba6b12578b0f7ee4dbfe40.png'
    },
    {
      'image':
          'https://i.pinimg.com/474x/50/dc/cd/50dccdd1bd205d11a6bf2131119ce01e.jpg'
    },
    {
      'image':
          'https://i.pinimg.com/474x/5f/f8/aa/5ff8aa286413e2b47204efc3dae0a8f3--fashion-logos-fashion-branding.jpg'
    },
    {
      'image':
          'https://i.pinimg.com/originals/ac/37/53/ac37539083035da7f45bc6dd29424187.jpg'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5O3sURAM8x83zR9cK0i3lg9qhE9arNqISpYvggijglw0Rhr8RtFaFSZSUSz_D2GO8CyY&usqp=CAU',
    },
  ];
  List post = [
    {
      'image':
          'https://images-eu.ssl-images-amazon.com/images/G/31/img16/Shoes/SIS/FormalSS/SS16/Formal-Shoes-PC_01._V272887482_.jpg',
      'navigate': Footwear(
        navigate: null,
        image: null,
      )
    },
    {
      'image':
          'https://ae01.alicdn.com/kf/H67945a2670004e358b02b634af010ba4W.jpg',
      'navigate': Watches()
    },
    {
      'image':
          'https://trava.in/storage/slider/cache/c728274a70b9696a798b5d8934babb5b/office-bags.jpg',
      'navigate': Bags(),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'MEN',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            letterSpacing: 7,
          ),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white70,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              height: 150,
              width: double.infinity,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  final list = brands;
                  return Column(
                    children: [
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: CachedNetworkImageProvider(
                                    brands[index]['image']),
                                fit: BoxFit.cover)),
                      ),
                    ],
                  );
                },
                itemCount: brands.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'FEATURING BRANDS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Wrap(
                      spacing: 20,
                      alignment: WrapAlignment.spaceBetween,
                      children: List.generate(icons.length, (index) {
                        final list = icons;
                        return Container(
                          margin: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Nike(
                                            image: icons[index]['image'],
                                          )));
                            },
                            child: CircleAvatar(
                              backgroundImage: CachedNetworkImageProvider(
                                  list[index]['image']),
                            ),
                          ),
                        );
                      })),
                ],
              ),
            ),
            Column(
                children: List.generate(post.length, (index) {
              final list = post;
              return Container(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => post[index]['navigate']));
                  },
                ),
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: CachedNetworkImageProvider(post[index]['image']),
                        fit: BoxFit.cover)),
              );
            }))
          ],
        ),
      ),
    );
  }
}

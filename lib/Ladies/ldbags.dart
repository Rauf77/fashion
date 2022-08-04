import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/Stock/details.dart';

import '../Stock/stock.dart';

class LdBags extends StatefulWidget {
  const LdBags({Key? key}) : super(key: key);

  @override
  State<LdBags> createState() => _LdBagsState();
}

class _LdBagsState extends State<LdBags> {
  List ldBags=[
    {
      'image':'https://p.kindpng.com/picc/s/194-1942112_women-bag-png-hd-ladies-bag-png-transparent.png',
      'name':'Road Star',
      'feed':'3.8',
      'price':'999',
      'color':Colors.orange,
      'types':'Office Bag',
      'det':'Women Bags · Lavie Ficus Textured Medium Handbag · Hidesign Jadis Mel Ranch Black Solid Large Tote Handbag · Accessorize London R Tilly White Floral Medium Sling ...'
    },
    {
      'image':'https://www.transparentpng.com/thumb/women-bag/5n1fgv-red-textured-women-bag-png.png',
      'name':'Bata',
      'feed':'4.0',
      'price':'1499',
      'color':Colors.red,
      'types':'Office Bag',
      'det':'Women Bags · Lavie Ficus Textured Medium Handbag · Hidesign Jadis Mel Ranch Black Solid Large Tote Handbag · Accessorize London R Tilly White Floral Medium Sling ...'
    },
    {
      'image':'https://w7.pngwing.com/pngs/694/445/png-transparent-handbag-tote-bag-messenger-bag-leather-women-s-handbags-zipper-luggage-bags-women-accessories-thumbnail.png',
      'name':'Louis Vuitton',
      'feed':'2.8',
      'price':'2999',
      'color':Colors.pinkAccent,
      'types':'Office Bag',
      'det':'Women Bags · Lavie Ficus Textured Medium Handbag · Hidesign Jadis Mel Ranch Black Solid Large Tote Handbag · Accessorize London R Tilly White Floral Medium Sling ...'
    },
    {
      'image':'https://w7.pngwing.com/pngs/351/308/png-transparent-adidas-3-stripes-power-backpack-adidas-originals-three-stripes-backpack-luggage-bags-adidas-black.png',
      'name':'adidas',
      'feed':'4.6',
      'price':'2199',
      'color':Colors.grey,
      'types':'College Bag',
      'det':'Women Bags · Lavie Ficus Textured Medium Handbag · Hidesign Jadis Mel Ranch Black Solid Large Tote Handbag · Accessorize London R Tilly White Floral Medium Sling ...'
    },
    {
      'image':'https://w7.pngwing.com/pngs/153/281/png-transparent-handbag-red-google-s-red-hand-shoulder-bag-ladies-blue-luggage-bags-rectangle.png',
      'name':'Bags 5',
      'feed':'3.9',
      'price':'1299',
      'color':Colors.redAccent,
      'types':'Office Bag',
      'det':'Women Bags · Lavie Ficus Textured Medium Handbag · Hidesign Jadis Mel Ranch Black Solid Large Tote Handbag · Accessorize London R Tilly White Floral Medium Sling ...'
    },
    {
      'image':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpcLGpb2YE08nVdHy5SGRowt3IGT8qRP7HsKkCbGTbHNWylsm6UwCalMogZttaS8uxCbE&usqp=CAU',
      'name':'Ladies BAG',
      'feed':'4.8',
      'price':'599',
      'color':Colors.blue[700],
      'types':'Office Bag',
      'det':'Women Bags · Lavie Ficus Textured Medium Handbag · Hidesign Jadis Mel Ranch Black Solid Large Tote Handbag · Accessorize London R Tilly White Floral Medium Sling ...'
    },
    // {
    //   'image':'',
    //   'name':'',
    //   'feed':'',
    //   'price':'',
    //   'det':'Women Bags · Lavie Ficus Textured Medium Handbag · Hidesign Jadis Mel Ranch Black Solid Large Tote Handbag · Accessorize London R Tilly White Floral Medium Sling ...'
    // },
    {
      'image':'https://png.pngtree.com/png-clipart/20190903/original/pngtree-ladies-bag-png-image_4423542.jpg',
      'name':'Ldies 3',
      'feed':'3.7',
      'price':'799',
      'color':Colors.brown,
      'types':'Office Bag',
      'det':'Women Bags · Lavie Ficus Textured Medium Handbag · Hidesign Jadis Mel Ranch Black Solid Large Tote Handbag · Accessorize London R Tilly White Floral Medium Sling ...'
    },
    // {
    //   'image':'',
    //   'name':'',
    //   'feed':'',
    //   'price':'',
    //   'det':'Women Bags · Lavie Ficus Textured Medium Handbag · Hidesign Jadis Mel Ranch Black Solid Large Tote Handbag · Accessorize London R Tilly White Floral Medium Sling ...'
    // },
    // {
    //   'image':'',
    //   'name':'',
    //   'feed':'',
    //   'price':'',
    //   'det':'Women Bags · Lavie Ficus Textured Medium Handbag · Hidesign Jadis Mel Ranch Black Solid Large Tote Handbag · Accessorize London R Tilly White Floral Medium Sling ...'
    // },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('BAGS',style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 40,
          letterSpacing: 7,

        ),),
        centerTitle: true,
        actions: [

          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_outlined))
        ],
        foregroundColor: Colors.black,
      ),

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing:10,
            mainAxisSpacing: 10
        , crossAxisCount:2 ),
        itemCount: ldBags.length,
        itemBuilder: (BuildContext context, int index) {
          final list=ldBags;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailes(
                  image: ldBags[index]['image'],
                  name: ldBags[index]['name'],
                  details: ldBags[index]['det'],
                  price: ldBags[index]['price'],
                  colors: ldBags[index]['color'],
                  feedback: ldBags[index]['feed'], types: ldBags[index]['types'],
                )));
              },
              child: Container(
                height: 150,
                width: 140,



                child: Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Column(

                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      Container(
                        height: 130,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(image: CachedNetworkImageProvider(ldBags[index]['image']),fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                          children: [
                           Column(
                             children: [
                               Text(ldBags[index]['name'],style:TextStyle(
                                   color: Colors.black,
                                   fontSize: 15
                               ) ,),
                               Text('₹'+ldBags[index]['price'],style:TextStyle(
                                   color: Colors.green,
                                   fontSize: 10
                               ) ,),
                             ],
                           ),

                            Icon(Icons.favorite_border,color: Colors.black12,)

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
      },


      ),
    );
  }
}

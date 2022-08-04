import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Cart/cart.dart';
import '../lis.dart';

class Detailes extends StatefulWidget {
  final String image;
  final String name;
  final String price;
  final String details;
  final String feedback;
  final colors;
  final String types;

  const Detailes(
      {Key? key,
      required this.image,
      required this.name,
      required this.price,
      required this.details,
      required this.feedback,
      required this.colors,
      required this.types})
      : super(key: key);

  @override
  State<Detailes> createState() => _DetailesState();
}

class _DetailesState extends State<Detailes> {
  int items=01;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: widget.colors,
      appBar: AppBar(
        backgroundColor: widget.colors,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_outlined))
        ],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    height: 600,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Color',style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Row(

                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.black,

                              ),
                              SizedBox(width: 10,),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.redAccent,

                              ),
                              SizedBox(width: 10,),
                              CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.brown,

                              ),

                            ],
                          ),
                          SizedBox(height: 10,),
                          Text('Details',style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text(widget.details,style: TextStyle(
                            letterSpacing: 2,
                            fontSize: 15
                          ),),
                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 30,
                              ),
                              SizedBox(width: 10,),
                              Text(
                                widget.feedback,
                                style: TextStyle(fontSize: 30, color: Colors.black),
                              )
                            ],
                          ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              SizedBox(
                                child: OutlinedButton(
                                  onPressed: (){
                                    setState((){
                                      items++;
                                    });
                                  },
                                  child: Icon(Icons.add,color: widget.colors,),

                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(items.toString().padLeft(2,"0"),style: Theme.of(context).textTheme.headline6,),
                              ),
                              SizedBox(
                                child: OutlinedButton(
                                  onPressed: (){
                                    setState((){
                                      items--;
                                    });
                                  },
                                  child: Icon(Icons.remove,color: widget.colors,),

                                ),
                              ),
                              SizedBox(width:140),
                              Icon(Icons.favorite_border,color: Colors.black,size: 30,),





                            ],
                          ),
                          // ElevatedButton(onPressed: (){}, child:Text('Add Cart'))
                           SizedBox(height: 230,),
                          InkWell(
                            onTap: (){
                              cartlist.add({
                                'name': widget.name,
                                'image': widget.image,
                                'price': widget.price
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Cart()));
                              print('cart');
                            },
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: widget.colors,
                              ),
                              child: Center(child: Text('Add to Cart',style:TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),)),
                            ),
                          )



                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.types,
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          widget.name,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(text: 'Price\n'),

                                TextSpan(
                                    text: '₹' + widget.price,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4
                                        ?.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold))
                              ]),

                              // text: TextSpan(text: 'Price\n'),
                            ),
                            Expanded(
                                child: Container(
                              height: 200,
                              width: 190,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey,
                                // image: DecorationImage(
                                //   image: CachedNetworkImageProvider(widget.image),fit: BoxFit.cover,
                                // )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 180,
                                      width: 190,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              image: CachedNetworkImageProvider(
                                                  widget.image),
                                              fit: BoxFit.cover)),
                                    ),
                                  ],
                                ),
                              ),
                            ))
                          ],
                        ),
                      ],

                    ),
                  ),

                ],
                
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}

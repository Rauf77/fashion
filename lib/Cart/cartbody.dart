import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../lis.dart';

class CartBody extends StatefulWidget {
  const CartBody({Key? key}) : super(key: key);

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: ListView.builder(itemCount: cartlist.length,itemBuilder: (context, index) {
        return  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Container(
                    margin: EdgeInsets.only(left: 15),
                    height: 75,
                    width: 75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(
                                cartlist[index]['image']),
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
                            cartlist[index]['name'],
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
                            cartlist[index]['price'],
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ))
                    ],
                  ),

                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.remove_circle)),
                      Text('1'),
                      IconButton(onPressed: (){}, icon: Icon(Icons.add_circle)),

                    ],
                  )
                ],
              ),
              // Divider(thickness: 2,),
              // Row(
              //   children: [
              //     Text('SUB TOTAL',
              //     style: Theme.of(context).textTheme.headline5,),
              //     Text('300000',
              //       style: Theme.of(context).textTheme.headline5,),
              //   ],
              // ),
              // SizedBox(height: 10,),
              // Row(
              //   children: [
              //     Text('DELIVERY FEE',
              //       style: Theme.of(context).textTheme.headline5,),
              //     Text('30',
              //       style: Theme.of(context).textTheme.headline5,),
              //   ],
              // ),

            ],
          ),
        );

      },),
    );

  }
}

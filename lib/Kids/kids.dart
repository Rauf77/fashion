import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/Kids/kidsui.dart';


class Kids extends StatefulWidget {
  const Kids({Key? key}) : super(key: key);

  @override
  State<Kids> createState() => _KidsState();
}

class _KidsState extends State<Kids> {
  List kids=[
    {
      'name':'GIRLS',
      'image':'https://thumbs.dreamstime.com/b/kids-clothes-school-fashion-feeling-comfy-girl-wear-fashionable-outfit-white-shirt-black-dress-formal-clothes-kids-clothes-171212080.jpg'
    },
    {
      'name':'BOYS',
      'image':'https://i.pinimg.com/originals/9e/53/45/9e5345f78e9c7054b536765b531b10af.jpg'
    },

  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text('KIDS',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          letterSpacing: 7,
        ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: CachedNetworkImageProvider('http://sofia-guide.com/assets/kids_fashion_sofia.jpg'),fit: BoxFit.cover)
          ),
        ),
      ),


     
      body:GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
      childAspectRatio: 0.7),
          itemCount: kids.length,
        itemBuilder: (context,index){
        final list=kids;
        return GestureDetector(
          onTap: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=>Kidsui(
              image:kids[index]['image'],
              name:kids[index]['name']

            ))
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Align(alignment: Alignment.center,child: Text(kids[index]['name'],
              style: TextStyle(
                fontSize: 30,
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
              ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(kids[index]['image']),
                      fit: BoxFit.cover
                )
              ),
            ),
          ),
        );
        },



      ),





    );
  }
}

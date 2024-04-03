import 'package:fakestoreapi/core/constant/colorconstant.dart';
import 'package:fakestoreapi/presentation/product/productview/homescreen.dart';
import 'package:fakestoreapi/repository/api/model/fakestoreapi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(home: homescreen(),debugShowCheckedModeBanner: false,) );
}

class MyApp extends StatelessWidget {
  final Fakestoreapi product;
  const MyApp(this.product);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var heightt=MediaQuery.of(context).size.height;

    return Column(
        children: [
          Expanded(
            child: Container(
              color: colour.primarycolor,
              height: heightt*.2,
              width: double.infinity,

              child: CachedNetworkImage(imageUrl: product.image!,fit: BoxFit.fill,width: double.maxFinite,)



            ),
          ),SizedBox(
            height: 8,
          ),Text("Name:${product.title}",maxLines: 3,),
          SizedBox(height: 8,)
          ,Text("Price:${product.price}"),SizedBox(height: 8,)
          ,Text("Rating:${product.rating}")
        ],
      );
  }
}



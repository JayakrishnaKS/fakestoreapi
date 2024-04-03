import 'package:fakestoreapi/core/constant/colorconstant.dart';
import 'package:fakestoreapi/main.dart';
import 'package:fakestoreapi/presentation/controller/homescreencontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  final productcontroller=Get.put(homescreencontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colour.primarycolor,
          title: Text("Product ",style: TextStyle(color:colour.whitecolour),),
          centerTitle: true,
        ),
        body:Obx((){
          if(productcontroller.isLoading.value){
            return CircularProgressIndicator();

          }
          return GridView.builder(
                  itemCount: productcontroller.productlist.length,
                  gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(mainAxisSpacing: 10,crossAxisSpacing: 10,crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return MyApp(productcontroller.productlist[index]);
                  });
        })
        // GridView.builder(
        //     itemCount: 10,
        //     gridDelegate:
        //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        //     itemBuilder: (context, index) {
        //       return MyApp();
        //     })
  );
  }
}

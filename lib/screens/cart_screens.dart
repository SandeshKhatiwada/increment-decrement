// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inc_dec/controller/cart_controller.dart';
import 'package:inc_dec/custom_widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  final CartController cartController = Get.put(CartController());
   CartScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //var CartController;
    return Scaffold(
      appBar: AppBar(
        title: Text("Add items to cart"),
        centerTitle: true,
      ),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListView(
              shrinkWrap: true,
              children: List.generate(
                5,
                (i) => CartItem(title: "Product #$i",
                 price: 50,  
                 )
              ),
            ),

            ElevatedButton(onPressed: (){}, 
            child: Obx((){
              return Text("Total Payment : "+ 
            cartController.total.value.toString(),
            style: TextStyle(
              fontSize: 20,
              color: Colors.white
            ),
            );
            })
            )
          ],
        )
        ),
    );
  }
}
// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, must_be_immutable, prefer_typing_uninitialized_variables, non_constant_identifier_names


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inc_dec/controller/cart_controller.dart';

class CartItem extends StatefulWidget {
   //var price;//



  CartItem(
    {required this.title, required this.price});
  final String title;
  final int price;

 
  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  final CartController _cartController = Get.find();
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 20,
            color: Theme.of(context).primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: SizedBox(
          width: 200,
          child: Wrap(alignment: WrapAlignment.spaceBetween, children: [
            Row(
              children: [
                counter !=0 
                ? IconButton(onPressed: (){
                  setState(() {
                    counter--;
                    _cartController.decrement(widget.price);
                  });
                },
                 icon: Icon(Icons.remove,
                 color: Theme.of(context).primaryColor,
                 )) :
                 Container(),
                 Text("$counter", style: TextStyle(fontSize: 20),),
                 IconButton(onPressed: (){
                   setState(() {
                     counter++;
                     _cartController.increment(widget.price);
                   });
                 }, 
                 icon: Icon(Icons.add,
                 color: Theme.of(context).primaryColor,
                 )
                 )
              ],
            )
          ],),
        ),
      ),
    );
  }
}
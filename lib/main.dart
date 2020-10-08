import 'package:flutter/material.dart';
import 'package:flutter_shopingcart/view/shoppingcart.dart';
void main()=> runApp(Home());
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Shopping(),
    );
  }
}

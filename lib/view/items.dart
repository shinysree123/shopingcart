import 'package:flutter/material.dart';
import 'package:flutter_shopingcart/model/product.dart';

class Itemcards extends StatelessWidget {
  final Product product;

  const Itemcards({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(child: Container(
          decoration: BoxDecoration(
            color: Color(0XFFe3e3e3),
            borderRadius: BorderRadius.circular(14.0)
          ),
          child: Image.network("product.image"),
        )),
        Text(product.title,style:TextStyle(fontWeight: FontWeight.bold),),
        Text("${product.price}"),
        FlatButton(onPressed: (){},
        color: Colors.amber,
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(18.0),
    side: BorderSide(color: Colors.amberAccent),


    ),
    child: Text("buy",style: TextStyle(color: Colors.white),),
    )
    ],
    );
  }
}

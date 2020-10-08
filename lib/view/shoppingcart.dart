import 'package:flutter/material.dart';
import 'package:flutter_shopingcart/main.dart';
import 'package:flutter_shopingcart/model/product.dart';
import 'package:flutter_shopingcart/view/items.dart';
void main(){
  runApp(Home());
}
class Shopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("my shop",style: TextStyle(color: Colors.amber),),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.black,),)
        ],
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 15.0,),
            Expanded(
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: .55),
                  itemCount: products.length,
                  itemBuilder: (context,index){
                    return Itemcards(product: products[index],);
                  }),

                )
          ],

        ),
        ),

    );
  }
}

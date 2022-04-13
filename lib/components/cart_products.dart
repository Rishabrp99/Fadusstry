import 'dart:ui';

import 'package:flutter/material.dart';
class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  State<Cart_products> createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [

    {
      "name": "Grape Pomace",
      "picture": "assets/grapepomace.jpg",
      "price": '800/kg',
      "quantity" : 1,
    },
    {
      "name": "Mango  Peels",
      "picture": "assets/mangopeel.jpg",
      "price": '800/kg',
      "quantity" : 1,
    },
    {
      "name": "Orange Peels",
      "picture": "assets/orangepeel.jpg",
      "price": '500/kg',
      "quantity" : 1,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index){
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]["name"] ,
            cart_prod_qty: Products_on_the_cart[index]["Quantity"],
            cart_prod_price  : Products_on_the_cart[index]["Price"],
            cart_prod_pricture: Products_on_the_cart[index]["Picture"],
          );

        });

  }
}

class Single_cart_product extends StatelessWidget {

  final cart_prod_name;
  final cart_prod_pricture;

  final cart_prod_price;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_price,
    this.cart_prod_pricture,
    this.cart_prod_qty,
});


  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(

        //========leading=========

        leading: new Image.asset(cart_prod_pricture, width: 80.0,
        height : 80.0),

        //==========Title section====

        title: new Text(cart_prod_name),

        //==subtitle==========
        subtitle: new Column(
          children: <Widget>[
            // Row indside column
            new Row(
              children: <Widget>[
                Padding(
                  padding : const EdgeInsets.all(8.0),
                  child: new Text("Price"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_prod_price, style: TextStyle(color: Colors.green),),
                ),


                new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0 ,8.0),
                child:  new Text("Quantity:"),),
                Padding(
                  padding: const  EdgeInsets.all(4.0),
                  child: new Text(cart_prod_qty,style: TextStyle(color: Colors.green),),

                )



              ]
            ),

            //THIS SECTION IS FOR PRODUCT PRICE
            new Container(
              alignment: Alignment.topLeft,
              child: new Text("\₹${cart_prod_price}",
                  style: TextStyle(fontSize: 17.0,
                    fontWeight:  FontWeight.bold,
                    color: Colors.green
                  )),


            ),
          ],
        ),
        trailing: new Column(
          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: null),
            new Text("$cart_prod_qty"),
            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: null)
          ],
        ),
      ),
    );
  }


}

import 'package:flutter/material.dart';
//my imports
import 'package:pbl_4/components/cart_products.dart';
class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: Text('Cart'),
        actions:<Widget>[
          new IconButton(icon:Icon(Icons.search,color: Colors.white,), onPressed:(){}),

        ],
      ),

      body: new Cart_products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(child: ListTile(
              title: new Text("Total"),
              subtitle: new Text("\₹7000"),
            )),
            Expanded(
              child: new MaterialButton(onPressed: (){},
              child: new Text("Check out", style: TextStyle(color: Colors.white,),),
              color: Colors.red,),
            ),],
        )
      ),
    );
  }
}

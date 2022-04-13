import 'dart:ui';

import'package:flutter/material.dart';
import 'package:pbl_4/components/Products.dart';

class ProductDetails extends StatefulWidget {

  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture
  });


  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: Text('Fadustry'),
        actions:<Widget>[
          new IconButton(icon:Icon(Icons.search,color: Colors.white,), onPressed:(){}),
          new IconButton(icon:Icon(Icons.shopping_cart,color: Colors.white,), onPressed:(){})
        ],
      ),

      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child:Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
            footer: new Container(
              color: Colors.white70,
              child: ListTile(
                leading: new Text(widget.product_detail_name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                title: new Row(
                  children: <Widget>[
                    Expanded(
                      child : new Text("\₹${widget.product_detail_old_price}",
                      style: TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough),),
                    ),

                    Expanded(
                        child : new Text("\₹${widget.product_detail_new_price}", style : TextStyle(fontWeight: FontWeight.bold, color: Colors.red ),)
                    )

                  ],
                )
              ),
            ),


            ),
          ),


          // =========== First Buttons =========
          Row(
            children: <Widget>[

              // ===============Size button==========
              Expanded(
                child: MaterialButton(onPressed: (){
                  showDialog(context: context,
                  builder : (context){
                    return new AlertDialog(
                      title : new Text ("Quantity"),
                      content: new Text("Choose Quantity"),
                      actions: <Widget>[
                      new MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: new Text("close"),)
                      ],
                    );
                  });
                },
                    color :Colors.white,
                  textColor: Colors.grey,
                    elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Quantity")
                      ),

                      Expanded(
                          child: new Icon(Icons.arrow_drop_down)
                      ),


                      Expanded(
                        child: MaterialButton(onPressed: (){
                          showDialog(context: context,
                              builder : (context){
                                return new AlertDialog(
                                  title : new Text ("Quality"),
                                  content: new Text("Choose Quality"),
                                  actions: <Widget>[
                                    new MaterialButton(onPressed: (){
                                      Navigator.of(context).pop(context);
                                    },
                                      child: new Text("close"),)
                                  ],
                                );
                              });
                        },
                            color :Colors.white,
                            textColor: Colors.grey,
                            elevation: 0.2,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                    child: new Text("Quality")
                                ),

                                Expanded(
                                    child: new Icon(Icons.arrow_drop_down)
                                ),
                    ],
                  )),
               ),
            ],
               )


                ),
              ),
            ],
          ),

          // second buttons
          Row(
            children: <Widget>[
              Expanded(
              child: MaterialButton(
              onPressed: () {},
              color: Colors.green,
              textColor: Colors.white,
              elevation : 0.2,
              child: new Text ("Buy now")

          ),
          ),
              new IconButton(icon: Icon(Icons.add_shopping_cart), color: Colors.green, onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border), onPressed: (){}),

            ],
          ),
          Divider(color: Colors.green),
          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Nearly 25-35% of the green fruit is constituted by peel which is packed with nutrients and anti-oxidants. It can be utilized as source of raw materials for producing peel pickle by adding spices and preservatives. The peel of culinary purpose varieties [like Nendran, Monthan, Saba] can be utilized for making this product.")
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product name" , style: TextStyle(color: Colors.grey ),),),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.product_detail_name))
            ],
          ),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product name" , style: TextStyle(color: Colors.grey ),),),


              Padding(padding: EdgeInsets.all(5.0),
                  child: new Text("Dinesh Farmer"))
    ],
    ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar products"),
          ),
          //SIMILAR PRODUCTS SECTION
          Container(
            height: 360.0,
            child: Similar_products(),


          ),
     ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  const Similar_products({Key? key}) : super(key: key);

  @override
  State<Similar_products> createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Mango \n Peel",
      "picture": "assets/mangopeel.jpg",
      "old_price": '2000/kg',
      "price": '1500/kg',
    },

    {
      "name": "Grape \n Pomace",
      "picture": "assets/grapepomace.jpg",
      "old_price": '1000/kg',
      "price": '800/kg',
    },
    {
      "name": "Watermelon \n Rinds",
      "picture": "assets/watermelonrinds.jpg",
      "old_price": '2000/kg',
      "price": '2200/kg',
    },
    {
      "name": "Potato  \n Peels",
      "picture": "assets/potatopeel.jpg",
      "old_price": '2500/kg',
      "price": '2000/kg',
    }

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: ()=> Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_new_price: prod_price,
                    product_detail_old_price: prod_old_price,
                    product_detail_picture: prod_pricture,

                  ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\₹$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\₹$prod_old_price",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration
                                :TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}

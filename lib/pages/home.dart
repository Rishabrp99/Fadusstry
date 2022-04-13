import 'package:flutter/material.dart';
import 'package:pbl_4/components/Products.dart';
import 'package:pbl_4/pages/cart.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:pbl_4/components/horizontal_listnew.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/i1.jpg'),
          AssetImage('assets/i2.jpg'),
          AssetImage('assets/i3.jpg'),
          AssetImage('assets/i4.jpg'),
          AssetImage('assets/i5.jpg'),
          AssetImage('assets/i6.jpg')
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotColor: Colors.green,
      ),
    );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.green,
        title: Text('Fadustry'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              })
        ],
      ),
      drawer: new Drawer(
          child: new ListView(
        children: <Widget>[
          // header
          new UserAccountsDrawerHeader(
            accountName: Text('Swapnil'),
            accountEmail: Text('Swapnilyadav718@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: new BoxDecoration(color: Colors.green),
          ),
//            body

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(
                Icons.home,
                color: Colors.green,
              ),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My Account'),
              leading: Icon(
                Icons.person,
                color: Colors.green,
              ),
            ),
          ),

          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => new Cart()));
            },
            child: ListTile(
              title: Text('My Orders'),
              leading: Icon(
                Icons.shopping_bag,
                color: Colors.green,
              ),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Shoping Cart'),
              leading: Icon(Icons.shopping_cart, color: Colors.green),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Setting'),
              leading: Icon(
                Icons.settings,
                color: Colors.green,
              ),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Policy'),
              leading: Icon(
                Icons.document_scanner,
                color: Colors.green,
              ),
            ),
          ),
        ],
      )),
      body: new ListView(
        children: <Widget>[
          image_carousel,

          //padding widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),

          //Horizontal list view
          HorizontalList(),

          //padding
          new Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Text('Recent Products'),
          ),

          //grid view
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}

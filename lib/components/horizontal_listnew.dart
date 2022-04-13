import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
      children: <Widget>[
      Category(
        image_location: 'assets/icon1.jpg',
        image_caption:  'Fruits',
      ),

      Category(
        image_location: 'assets/icon2.jpg',
        image_caption: 'Compost',
      ),

      Category(
          image_location: 'assets/icon3.jpg',
          image_caption:  'Organic',
      ),

      Category(
          image_location: 'assets/icon4.jpg',
          image_caption: 'Peels',
      ),

      Category(
          image_location: 'assets/icon5.jpg',
          image_caption:  'Manure',
      ),

      Category(
          image_location: 'assets/icon6.jpg',
          image_caption: 'Worms',
      ),

      ],
      )
    );
  }
}

class Category  extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    required this.image_location,
    required this.image_caption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child: InkWell(onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location,
              width: 100.0,
              height: 80.0,),

            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
            ),
          ),
        ),
      ),);
  }
}

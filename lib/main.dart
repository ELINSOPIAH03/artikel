import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String paragraf1 = '''
Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius minima dolorem enim iste sunt numquam in nobis esse beatae maiores dignissimos tenetur cupiditate sed aspernatur porro non eligendi.Lorem ipsum dolor, sit amet consectetur adipisicing elit. Eius minima dolorem enim iste sunt numquam in nobis esse beatae maiores dignissimos tenetur cupiditate sed aspernatur porro non eligendi.
''';
  final String text1 = '''Avengers: Endgame''';
  final String text2 = '''Action, Family''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Artikel'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: 330.0,
            height: 330.0,
            margin: EdgeInsets.all(25),
            child: Image(
              image: AssetImage("assets/img/poster.png"),
              fit: BoxFit.contain,
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                width: 15.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(this.text1,
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: 'Arial',
                      )),
                  Text(
                    this.text2,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontFamily: 'Arial',
                    ),
                  ),
                ],
              ),
              Container(
                width: 120.0,
              ),
              RatingBar.builder(
                initialRating: 4,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20.0,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.blue,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              // Icon(
              //   Icons.star_rate,
              //   size: 20.0,
              //   color: Colors.blue,
              // ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              this.paragraf1,
              style: TextStyle(
                fontSize: 15.0,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

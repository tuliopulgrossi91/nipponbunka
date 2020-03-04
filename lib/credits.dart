import 'package:flutter/material.dart';

class Credits extends StatefulWidget {
  @override
  _CreditsState createState() => _CreditsState();
}

class _CreditsState extends State<Credits> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: Image(
                width: 42,
                height: 42,
                image: AssetImage('Assets/Images/Icons/icons8-origami-64.png'),
              ),
            ),
            Text('Créditos',
                style: TextStyle(fontSize: 25, fontFamily: 'YeonSung-Regular')),
          ],
        ),
        titleSpacing: 2,
        centerTitle: true,
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.cyanAccent, Colors.lightBlue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Card(
          color: Colors.white70,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
          elevation: 25,
          margin: EdgeInsets.all(25),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 300.0,
                    height: 600.0,
                    child: Center(
                        child: Text(
                            'Asia icon icon by Icons8". \n\n'
                            'Origami icon icon by Icons8". \n\n'
                            'Idea icon icon by Icons8". \n\n'
                            'Google Play icon icon by Icons8. \n\n'
                            'Exit icon icon by Icons8". \n\n'
                            'Play Button icon icon by Icons8. \n\n'
                            'Torii icon icon by Icons8. \n\n'
                            'Version 1.0. \n\n',
                            style: TextStyle(
                                fontFamily: 'YeonSung-Regular', fontSize: 20),
                            textAlign: TextAlign.justify)),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

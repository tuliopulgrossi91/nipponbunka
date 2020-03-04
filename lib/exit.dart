import 'dart:io';

import 'package:flutter/material.dart';

class ExitScreen extends StatefulWidget {
  @override
  _ExitScreenState createState() => _ExitScreenState();
}

class _ExitScreenState extends State<ExitScreen> {
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
                image: AssetImage('Assets/Images/Icons/icons8-exit-64.png'),
              ),
            ),
            Text('Sair',
                style: TextStyle(fontSize: 25, fontFamily: 'YeonSung-Regular')),
          ],
        ),
        titleSpacing: 2,
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.blueGrey, Colors.black54],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Card(
          color: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 25,
          margin: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  child: Center(
                      child: Text('Deseja Sair?',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.blueGrey,
                              fontFamily: 'YeonSung-Regular'))),
                ),
                Container(
                  width: 250.0,
                  height: 60.0,
                  child: RaisedButton(
                    color: Colors.blueGrey,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10)),
                    child: Text('OK',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontFamily: 'YeonSung-Regular')),
                    onPressed: () {
                      exit(0);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

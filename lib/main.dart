import 'dart:async';

import 'package:flutter/material.dart';

import 'apps.dart';
import 'credits.dart';
import 'exit.dart';
import 'ideias.dart';
import 'sites.dart';
import 'videos.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        showPerformanceOverlay: false,
        home: SplashScene(),
      ),
    );

// tela inicial
class SplashScene extends StatefulWidget {
  @override
  MySplash createState() => MySplash();
}

class MySplash extends State<SplashScene> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MainMenu(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orangeAccent, Colors.pink],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('Assets/Images/Icons/icons8-torii-96.png'),
              alignment: Alignment.center,
            ),
            Text('Nippon Bunka',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'YeonSung-Regular',
                    color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

// tela principal
class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        // desativando seta de retorno
        title: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(50),
              child: Image(
                width: 42,
                height: 42,
                image: AssetImage('Assets/Images/Icons/icons8-torii-48.png'),
              ),
            ),
            Text('Nippon Bunka',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'YeonSung-Regular',
                    color: Colors.deepOrangeAccent)),
          ],
        ),
        backgroundColor: Colors.white,
        titleSpacing: 2,
        centerTitle: true,
        /*GradientAppBar
        backgroundColorStart: Colors.orangeAccent,
        backgroundColorEnd: Colors.pink,*/
        toolbarOpacity: 0.6,
      ),
      body: Container(
        //width: size * (40/100),
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.orangeAccent, Colors.pink],
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
                  width: 250.0,
                  height: 60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10)),
                    color: Colors.blueAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image(
                                width: 42,
                                height: 42,
                                image: AssetImage(
                                    'Assets/Images/Icons/icons8-asia-64.png'))),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Sites',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'YeonSung-Regular')),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  Sites()))); // acessando outra cena
                    },
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10),
                    ),
                    color: Colors.redAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              width: 42,
                              height: 42,
                              image: AssetImage(
                                  'Assets/Images/Icons/icons8-play-button-64.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Vídeos',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'YeonSung-Regular')),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  Videos()))); // acessando outra cena
                    },
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10),
                    ),
                    color: Colors.black54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              width: 42,
                              height: 42,
                              image: AssetImage(
                                  'Assets/Images/Icons/icons8-google-play-64.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Apps',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'YeonSung-Regular')),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  Apps()))); // acessando outra cena
                    },
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10),
                    ),
                    color: Colors.orangeAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              width: 42,
                              height: 42,
                              image: AssetImage(
                                  'Assets/Images/Icons/icons8-idea-64.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Ideia',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'YeonSung-Regular')),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  Ideias()))); // acessando outra cena
                    },
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10),
                    ),
                    color: Colors.cyan,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              width: 42,
                              height: 42,
                              image: AssetImage(
                                  'Assets/Images/Icons/icons8-origami-64.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Créditos',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'YeonSung-Regular')),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  Credits()))); // acessando outra cena
                    },
                  ),
                ),
                Container(
                  width: 250.0,
                  height: 60.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10),
                    ),
                    color: Colors.blueGrey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              width: 42,
                              height: 42,
                              image: AssetImage(
                                  'Assets/Images/Icons/icons8-exit-64.png')),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text('Sair',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'YeonSung-Regular')),
                        )
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  ExitScreen()))); // acessando outra cena
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

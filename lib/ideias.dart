import 'package:flutter/material.dart';

class Ideias extends StatefulWidget {
  @override
  _IdeiasState createState() => _IdeiasState();
}

class _IdeiasState extends State<Ideias> {
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
                image: AssetImage('Assets/Images/Icons/icons8-idea-64.png'),
              ),
            ),
            Text('Ideia',
                style: TextStyle(fontSize: 25, fontFamily: 'YeonSung-Regular')),
          ],
        ),
        titleSpacing: 2,
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.amberAccent, Colors.orange],
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
                          'Nippon se refere à "Japão" e Bunka à "Cultura". \nA ideia surgiu para reunir informações sobre língua japonesa e coisas afins no intuito de ter acesso ao material seja por sites ou videos que me ajudem a estudar o idioma. \nConsequentemente, compartilhar com pessoas que buscam o mesmo objetivo.',
                          style: TextStyle(
                              fontFamily: 'YeonSung-Regular', fontSize: 20),
                          textAlign: TextAlign.justify),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}

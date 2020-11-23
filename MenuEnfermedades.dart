import 'dart:ui';

import 'package:dipe/Enfermedades/Enf-Ambientales.dart';
import 'package:dipe/Enfermedades/Enf-Cardiovasculares.dart';
import 'package:dipe/Enfermedades/Enf-Digestivas.dart';
import 'package:dipe/Enfermedades/Enf-Renales.dart';
import 'package:dipe/Enfermedades/Enf-Respiratorias.dart';
import 'package:dipe/Enfermedades/Enf-Sistemicas.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'colores-app.dart';

void main() {
  runApp(MenuEnfermedades());
}

class MenuEnfermedades extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Enfermedades", style: TextStyle(
                            color: Colors.black87,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),textAlign: TextAlign.right),
                ),
                menuEnfermedades(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget menuEnfermedades(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0),
      padding: EdgeInsets.all(10.0),
      width: 360,
      height: 960,
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EnfSistemicas())
                );
              },
              icon: Image(image: AssetImage('assets/img/cerebro.png')),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EnfAmbientales())
                );
              },
              icon: Image(image: AssetImage('assets/img/ambientales.png')),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EnfCardiovascular())
                );
              },
              icon: Image(image: AssetImage('assets/img/corazon.png')),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EnfDigestivas())
                );
              },
              icon: Image(image: AssetImage('assets/img/digestivo.png')),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EnfRespiratorias())
                );
              },
              icon: Image(image: AssetImage('assets/img/pulmones.png')),
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EnfRenales())
                );
              },
              icon: Image(image: AssetImage('assets/img/renal.png')),
            ),
          ),
        ],
      ),
    );
  }
}

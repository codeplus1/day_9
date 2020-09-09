//meaning os stack=>stack vaney ko ek widget mathi arko widgets haru basney

import 'package:flutter/material.dart';

class MyDesign extends StatefulWidget {
  @override
  _MyDesignState createState() => _MyDesignState();
}

class _MyDesignState extends State<MyDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Center(
        child: Stack(
          //overflow le k garxa vaney bahira gako part jun hunxa ni tyaslie hide gardinxa(bahira gako part vannale jun minus- value le vako thiyo tyo ho)
          // overflow: Overflow.clip,//overflow.clip le bahira ko part lie crop gardinxa
          overflow: Overflow
              .visible, //overflow.visible le bahira gako part lie visible banae dinxa
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.cyan,
            ),
            //positioned le hamro container lie ya widgets lie milauney kaam garxa hamro anusar
            Positioned(
              top: 20,
              left: 10,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: 20,
              right: 10,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.yellow,
              ),
            ),
            Positioned(
              bottom:
                  -10, //minus(-) value rakhda kheri container vitra jana thalxa
              left: -20,
              //clipRRect le widgets lie circle banauney kaam garxa
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    50), //borderRadius.circular le widgets lie circular banae diyo value jati badhi tyati nai circular
                child: Container(
                  alignment: Alignment
                      .center, //alignment.center le text lie bicha ma launey kaam garyo
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: Text(
                    "20% down",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

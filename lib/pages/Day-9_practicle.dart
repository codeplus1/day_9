import 'package:flutter/material.dart';

class PracticleDesign extends StatefulWidget {
  @override
  _PracticleDesignState createState() => _PracticleDesignState();
}

class _PracticleDesignState extends State<PracticleDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: Colors.red,
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS7CoIGui97_RqS0GMl6HngGAkjtqVpW9h6Ig&usqp=CAU",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  color: Colors.black.withOpacity(0.2),
                ),
                Container(
                  height: 200,
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Students",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

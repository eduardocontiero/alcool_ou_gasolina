import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Image.asset("assets/images/aog-white.png", height: 80),
          SizedBox(
            height: 20.0,
          ),
          Text("Álcool ou Gasolina",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: "Big Shoulders Display"),
              textAlign: TextAlign.center),
         
        ],
      ),
    );
  }
}

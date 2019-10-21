import 'package:alcool_ou_gasolina/widgets/loading-button.widget.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  var result = "";
  Function reset;

  Success({
    @required this.result,
    @required this.reset
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(25.0)),
      child: Column(
        children: <Widget>[
          Text(result,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 30.0,
                  fontFamily: "Big Shoulders Display")),
          SizedBox(
            height: 10.0,
          ),
          LoadingButton(
            busy: false,
            func: reset,
            text: "CALCULAR NOVAMENTE",
            invert: true,
          ),
        ],
      ),
    );
  }
  
}

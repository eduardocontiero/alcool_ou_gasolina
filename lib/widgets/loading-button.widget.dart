import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  var busy = false;
  var invert = false;
  Function func;
  var text = "";

  LoadingButton({
    @required this.busy,
    @required this.invert,
    @required this.func,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return busy
        ? Container(
            alignment: Alignment.center,
            height: 50.0,
            child: CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
          )
        : Container(
            margin: EdgeInsets.all(20.0),
            height: 60.0,
            width: double.infinity,
            decoration: BoxDecoration(
                color: invert
                    ? Theme.of(context).primaryColor
                    : Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(60.0)),
            child: FlatButton(
              child: Text(
                text,
                style: TextStyle(
                    color:
                        invert ? Colors.white : Theme.of(context).primaryColor,
                    fontSize: 25.0,
                    fontFamily: "Big Shoulders Display"),
                textAlign: TextAlign.center,
              ),
              onPressed: func,
            ),
          );
  }
}

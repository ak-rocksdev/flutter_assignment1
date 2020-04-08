import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  final int hasilSkor;
  final Function reset;

  Hasil(this.hasilSkor, this.reset);

  String get tulisanHasil {
    var textHasil;
    if (hasilSkor <= 15) {
      textHasil = 'Selera lu Kurang';
    } else if (hasilSkor <= 18) {
      textHasil = 'Selera lu OK lah';
    } else if (hasilSkor <= 25) {
      textHasil = 'Selera lu OK';
    } else {
      textHasil = 'Selera lu emang LEBIH';
    }
    return textHasil;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
        Text(
          tulisanHasil,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text(
            'Restart Quiz!',
          ),
          textColor: Colors.blue,
          onPressed: reset,
        )
      ],
      )
    );
  }
}

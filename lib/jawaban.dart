import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  final Function pilihJawaban;
  final String teksJawaban;

  Jawaban(this.pilihJawaban, this.teksJawaban);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          teksJawaban,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: pilihJawaban,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Pertanyaan extends StatelessWidget {
  String teksPertanyaan;

  Pertanyaan(this.teksPertanyaan);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        teksPertanyaan,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

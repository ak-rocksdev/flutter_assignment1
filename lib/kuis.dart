import 'package:flutter/material.dart';

import './jawaban.dart';
import './pertanyaan.dart';

class Kuis extends StatelessWidget {
  final List<Map<String, Object>> pertanyaans;
  final int indexPertanyaan;
  final Function jawabPertanyaan;

  Kuis({
    @required this.pertanyaans,
    @required this.jawabPertanyaan,
    @required this.indexPertanyaan,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Pertanyaan(
          pertanyaans[indexPertanyaan]['pertanyaan'],
        ),
        ...(pertanyaans[indexPertanyaan]['jawaban'] as List<Map<String, Object>>).map((jawaban) {
          return Jawaban(() => jawabPertanyaan(jawaban['skor']), jawaban['teks']);
        }).toList()
      ],
    );
  }
}
import 'package:flutter/material.dart';
import './kuis.dart';
import './hasil.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _pertanyaans = const [
    {
      'pertanyaan': 'Warna favoritmu?!',
      'jawaban': [
        {'teks': 'Silver', 'skor': 10}, 
        {'teks': 'Pink', 'skor': 1},
        {'teks': 'Hijau', 'skor': 5}, 
        {'teks': 'Putih', 'skor': 4}
      ],
    },
    {
      'pertanyaan': 'Tempat jalan2 favorit?',
      'jawaban': [
        {'teks': 'Malaysia', 'skor': 10}, 
        {'teks': 'Ndoro Dongker', 'skor': 8},
        {'teks': 'Tawangmangu', 'skor': 6}, 
        {'teks': 'Sarangan', 'skor': 15}
      ],
    },
    {
      'pertanyaan': 'Tempat kencan favorit?!',
      'jawaban': [
        {'teks': 'Starbucks', 'skor': 7}, 
        {'teks': 'McD', 'skor': 5},
        {'teks': 'Anomali', 'skor': 8}, 
        {'teks': 'Soeryo', 'skor': 10}
      ],
    }
  ];

  var _indexPertanyaan = 0;
  var _totalSkor = 0;

  void _kuisReset() {
    setState(() {
      _indexPertanyaan = 0;
      _totalSkor = 0;
    });
  }

  void _jawabPertanyaan(int skor) {

    _totalSkor += skor;

    setState(() {
      _indexPertanyaan = _indexPertanyaan + 1;
    });
    print('Jawab');
    if(_indexPertanyaan < _pertanyaans.length) {

    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Apps'),
        ),
        body: _indexPertanyaan < _pertanyaans.length ? Kuis(
          pertanyaans: _pertanyaans,
          jawabPertanyaan: _jawabPertanyaan,
          indexPertanyaan: _indexPertanyaan,
        ) : Hasil(_totalSkor, _kuisReset),
      ),
    );
  }
}

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Piano extends StatefulWidget {
  const Piano({Key? key}) : super(key: key);

  @override
  State<Piano> createState() => _PianoState();
}

class _PianoState extends State<Piano> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Piano')),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          botaoPiano(
              cor: Color(0xFFEFEFEF), idSom: 1, fontColor: Color(0xFF272727)),
          botaoPiano(
              cor: Color(0xFF272727), idSom: 2, fontColor: Color(0xFFEFEFEF)),
          botaoPiano(
              cor: Color(0xFFEFEFEF), idSom: 3, fontColor: Color(0xFF272727)),
          botaoPiano(
              cor: Color(0xFFD8D8D8), idSom: 4, fontColor: Color(0xFF272727)),
          botaoPiano(
              cor: Color(0xFF272727), idSom: 5, fontColor: Color(0xFFEFEFEF)),
          botaoPiano(
              cor: Color(0xFFEFEFEF), idSom: 6, fontColor: Color(0xFF272727)),
          botaoPiano(
              cor: Color(0xFFD8D8D8), idSom: 7, fontColor: Color(0xFF272727)),
          botaoPiano(
              cor: Color(0xFF272727), idSom: 8, fontColor: Color(0xFFEFEFEF)),
          botaoPiano(
              cor: Color(0xFFEFEFEF), idSom: 9, fontColor: Color(0xFF272727)),
          botaoPiano(
              cor: Color(0xFFD8D8D8), idSom: 10, fontColor: Color(0xFF272727)),
          botaoPiano(
              cor: Color(0xFF272727), idSom: 11, fontColor: Color(0xFFEFEFEF)),
          botaoPiano(
              cor: Color(0xFFEFEFEF), idSom: 12, fontColor: Color(0xFF272727)),
        ],
      ),
    );
  }

  _executarAudio(String url) async {
    var player = AudioCache();
    await player.play(url);
  }

  Widget botaoPiano({cor: Color, idSom: int, fontColor: Color}) {
    return Expanded(
        child: InkWell(
      onTap: () {
        _executarAudio('sounds/key$idSom.wav');
      },
      child: Ink(
        color: cor,
        child: Container(
          alignment: Alignment.center,
          child: Text(
            '$idSom',
            style: TextStyle(fontSize: 50, color: fontColor),
          ),
        ),
      ),
    ));
  }
}

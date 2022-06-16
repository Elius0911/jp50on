import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import 'wordList.dart';

WordList wordList = WordList();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SafeArea(
          child: HomePage(),
        ));
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  Widget wordCard(int num) {
    return SizedBox(
      height: 60,
      width: 73,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
        ),
        clipBehavior: Clip.antiAlias, // 抗鋸齒
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                wordList.wordList[num].JPword,
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              Text(
                wordList.wordList[num].roman,
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
            ],
          ),
        ),
        onPressed: () {},
      ),
    );
  }

/*
  int index = 0;
  Widget LoadWord5(int number) {
    for (int i = 0; i < 5; i++) {
      return wordCard(i);
    }
    index += 5;
  }

  Widget LoadWord3(int number) {
    for (int i = 0; i < 3; i++) {
      wordCard(i);
      index += 3;
    }
  }

  Widget LoadWord2(int number) {
    for (int i = 0; i < 2; i++) {
      wordCard(i);
      index += 2;
    }
  }
*/
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /*
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LoadWord5(index),
            ],
          ),
          */
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              wordCard(0),
              wordCard(1),
              wordCard(2),
              wordCard(3),
              wordCard(4),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              wordCard(5),
              wordCard(6),
              wordCard(7),
              wordCard(8),
              wordCard(9),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              wordCard(10),
              wordCard(11),
              wordCard(12),
              wordCard(13),
              wordCard(14),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              wordCard(15),
              wordCard(16),
              wordCard(17),
              wordCard(18),
              wordCard(19),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              wordCard(20),
              wordCard(21),
              wordCard(22),
              wordCard(23),
              wordCard(24),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              wordCard(25),
              wordCard(26),
              wordCard(27),
              wordCard(28),
              wordCard(29),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              wordCard(30),
              wordCard(31),
              wordCard(32),
              wordCard(33),
              wordCard(34),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              wordCard(35),
              wordCard(36),
              wordCard(37),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              wordCard(38),
              wordCard(39),
              wordCard(40),
              wordCard(41),
              wordCard(42),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              wordCard(43),
              wordCard(44),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              wordCard(45),
            ],
          )
        ],
      ),
    );
  }
}

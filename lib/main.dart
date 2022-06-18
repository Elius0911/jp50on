import 'package:flutter/material.dart';


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
        home: SafeArea(
          child: HomePage(),
        ));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int changeIndex = 0; // 平片切換用, 平 = 0 / 片 = 1

  //生成字卡
  Widget wordCard(int num) {
    return SizedBox(
      height: 55,
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
              if (changeIndex == 0)
                Text(
                  wordList.wordList[num].hiragana,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )
              else
                Text(
                  wordList.wordList[num].katagana,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              Text(
                wordList.wordList[num].roman,
                style: TextStyle(color: Colors.black, fontSize: 11),
              ),
            ],
          ),
        ),
        onPressed: () async {
          AudioCache audioCache = AudioCache();
          String route = wordList.wordList[num].roman;
          await audioCache.play('aa.mp3');
        },
      ),
    );
  }

  int index = 0; //索引值 (結尾值)
  var list = [5, 5, 5, 5, 5, 5, 5, 3, 5, 2, 1]; //每排個數
  // 判斷, 載入卡片
  Widget LoadWordCard(int line) {
    if (line == 5) {
      index += 5;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = index - 5; i < index; i++) wordCard(i),
        ],
      );
    } else if (line == 3) {
      index += 3;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = index - 3; i < index; i++) wordCard(i),
        ],
      );
    } else if (line == 2) {
      index += 2;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = index - 2; i < index; i++) wordCard(i),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          wordCard(index),
        ],
      );
    }
  }

  // 平片切換按鈕
  Widget ChangeButton() {
    index = 0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 50,
          width: 190,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.purpleAccent),
            ),
            clipBehavior: Clip.antiAlias, // 抗鋸齒
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "平假名",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            onPressed: () async {
              setState(() {
                changeIndex = 0;
              });
            },
          ),
        ),
        SizedBox(
          height: 50,
          width: 190,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.purpleAccent),
            ),
            clipBehavior: Clip.antiAlias, // 抗鋸齒
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "片假名",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            onPressed: () async {
              setState(() {
                changeIndex = 1;
              });
            },
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < 11; i++) LoadWordCard(list[i]),
          ChangeButton(),
        ],
      ),
    );
  }
}

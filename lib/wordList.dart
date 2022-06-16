class Word {
  String hiragana;
  String katagana;
  String roman;

  Word(this.hiragana, this.katagana, this.roman);
}

class WordList {
  List<Word> wordList = [
    Word("あ", "ア", "a"), //a
    Word("い", "イ", "i"),
    Word("う", "ウ", "u"),
    Word("え", "エ", "e"),
    Word("お", "オ", "o"),
    Word("か", "カ", "ka"), //ka
    Word("き", "キ", "ki"),
    Word("く", "ク", "ku"),
    Word("け", "ケ", "ke"),
    Word("こ", "コ", "ko"),
    Word("さ", "サ", "sa"), //sa
    Word("し", "シ", "shi"),
    Word("す", "ス", "su"),
    Word("せ", "セ", "se"),
    Word("そ", "ソ", "so"),
    Word("た", "タ", "ta"), //ta
    Word("ち", "チ", "chi"),
    Word("つ", "ツ", "tsu"),
    Word("て", "テ", "te"),
    Word("と", "ト", "to"),
    Word("な", "ナ", "na"), //na
    Word("に", "ニ", "ni"),
    Word("ぬ", "ヌ", "nu"),
    Word("ね", "ネ", "ne"),
    Word("の", "ノ", "no"),
    Word("は", "ハ", "ha"), //ha
    Word("ひ", "ヒ", "hi"),
    Word("ふ", "フ", "fu"),
    Word("へ", "ヘ", "he"),
    Word("ほ", "ホ", "ho"),
    Word("ま", "マ", "ma"), //ma
    Word("み", "ミ", "mi"),
    Word("む", "ム", "mu"),
    Word("め", "メ", "me"),
    Word("も", "モ", "mo"),
    Word("や", "ヤ", "ya"), //ya
    Word("ゆ", "ユ", "yu"),
    Word("よ", "ヨ", "yo"),
    Word("ら", "ラ", "ra"), //ra
    Word("り", "リ", "ri"),
    Word("る", "ル", "ru"),
    Word("れ", "レ", "re"),
    Word("ろ", "ロ", "ro"),
    Word("わ", "ワ", "wa"), //wa
    Word("を", "ヲ", "wo"),
    Word("ん", "ン", "n"), //n
  ];
}

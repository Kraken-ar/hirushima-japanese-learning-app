import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/SubTopic.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<SubData> numbers = const [
    SubData(
      word: "一",
      spelling: "Ichi",
      meaning: "One",
      ImagePath: "assets/images/numbers/number_one.png",
      soundUrl: "sounds/numbers/number_one_sound.mp3"
      
    ),
    SubData(
      word: "二",
      spelling: "Ni",
      meaning: "Two",
      ImagePath: "assets/images/numbers/number_two.png",
      soundUrl: "sounds/numbers/number_two_sound.mp3"

    ),
    SubData(
      word: "三",
      spelling: "San",
      meaning: "three",
      ImagePath: "assets/images/numbers/number_three.png",
      soundUrl: "sounds/numbers/number_three_sound.mp3"

    ),
    SubData(
      word: "四",
      spelling: "Shi/Yon",
      meaning: "Four",
      ImagePath: "assets/images/numbers/number_four.png",
      soundUrl: "sounds/numbers/number_four_sound.mp3"

    ),
    SubData(
      word: "五",
      spelling: "Go",
      meaning: "Five",
      ImagePath: "assets/images/numbers/number_five.png",
      soundUrl: "sounds/numbers/number_five_sound.mp3"

    ),
    SubData(
      word: "六",
      spelling: "Roku",
      meaning: "Six",
      ImagePath: "assets/images/numbers/number_six.png",
      soundUrl: "sounds/numbers/number_six_sound.mp3"

    ),
    SubData(
      word: "七",
      spelling: "Nana/Shichi",
      meaning: "Seven",
      ImagePath: "assets/images/numbers/number_seven.png",
      soundUrl: "sounds/numbers/number_seven_sound.mp3"

    ),
    SubData(
      word: "八",
      spelling: "Hachi",
      meaning: "Eight",
      ImagePath: "assets/images/numbers/number_eight.png",
      soundUrl: "sounds/numbers/number_eight_sound.mp3"

    ),
    SubData(
      word: "九",
      spelling: "Kyuu",
      meaning: "Nine",
      ImagePath: "assets/images/numbers/number_nine.png",
      soundUrl: "sounds/numbers/number_nine_sound.mp3"

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Numbers",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context,index){
          return SubTopic(data: numbers[index]);
        }
        
        )
    );
  }

  List<Widget> getNumbers(){
    List<Widget> nums = [];
    for(int i = 0;i<this.numbers.length;i++)
    nums.add(SubTopic(data: this.numbers[i],));

    return nums;
  }
}

class SubData {
  const SubData({this.word, this.spelling, this.meaning, this.ImagePath, this.soundUrl});
  final String? word;
  final String? spelling;
  final String? meaning;
  final String? ImagePath;
  final String? soundUrl;
}
 
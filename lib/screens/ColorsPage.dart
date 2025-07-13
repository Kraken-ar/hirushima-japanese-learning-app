import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Numbers.dart';
import 'package:flutter_application_1/widgets/SubTopic.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  final List<SubData> colors = const [
    SubData(
      word: "白",
      spelling: "Shiro",
      meaning: "White",
      ImagePath: "assets/images/colors/color_white.png",
      soundUrl: "sounds/colors/white.wav"
    ),
    SubData(
      word: "黒",
      spelling: "Black",
      meaning: "Kuro",
      ImagePath: "assets/images/colors/color_black.png",
      soundUrl: "sounds/colors/black.wav"
    ),
    SubData(
      word: "赤",
      spelling: "Red",
      meaning: "Aka",
      ImagePath: "assets/images/colors/color_red.png",
      soundUrl: "sounds/family_members/red.wav"
    ),
      SubData(
      word: "緑",
      spelling: "Green",
      meaning: "Midori",
      ImagePath: "assets/images/colors/color_green.png",
      soundUrl: "sounds/family_members/green.wav"
    ),
     
      SubData(
      word: "黄色",
      spelling: "Yellow",
      meaning: "Kiiro",
      ImagePath: "assets/images/colors/color_dusty_yellow.png",
      soundUrl: "sounds/family_members/yellow.wav"
    ),
      SubData(
      word: "黄色",
      spelling: "Red",
      meaning: "Aka",
      ImagePath: "assets/images/colors/color_red.png",
      soundUrl: "sounds/family_members/red.wav"
    ),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Family",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context,index){
          return SubTopic(data: colors[index]);
        }
        
        )
    );
  }


}

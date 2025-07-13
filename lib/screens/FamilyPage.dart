import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Numbers.dart';
import 'package:flutter_application_1/widgets/SubTopic.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  final List<SubData> numbers = const [
    SubData(
      word: "父親",
      spelling: "Chichioya",
      meaning: "Father",
      ImagePath: "assets/images/family_members/father.png",
      soundUrl: "sounds/family_members/father.wav"
    ),
    SubData(
      word: "母親",
      spelling: "Hahaoya",
      meaning: "Mother",
      ImagePath: "assets/images/family_members/mother.png",
      soundUrl: "sounds/family_members/mother.wav"
    ),
    SubData(
      word: "姉",
      spelling: "Ane",
      meaning: "Older Sister",
      ImagePath: "assets/images/family_members/older_sister.png",
      soundUrl: "sounds/family_members/older sister.wav"
    ),
    SubData(
      word: "兄",
      spelling: "Ani",
      meaning: "Older Brother",
      ImagePath: "assets/images/family_members/older_brother.png",
      soundUrl: "sounds/family_members/older bother.wav"
    ),
   SubData(
      word: "妹",
      spelling: "Imōto",
      meaning: "Younger Sister",
      ImagePath: "assets/images/family_members/younger_sister.png",
      soundUrl: "sounds/family_members/younger sister.wav"
    ),
    SubData(
      word: "弟",
      spelling: "Otōto",
      meaning: "Younger Brother",
      ImagePath: "assets/images/family_members/younger_brother.png",
      soundUrl: "sounds/family_members/younger brother.wav"
    ),
    SubData(
      word: "息子",
      spelling: "Musuko",
      meaning: "Son",
      ImagePath: "assets/images/family_members/son.png",
      soundUrl: "sounds/family_members/son.wav"
    ),
    SubData(
      word: "娘",
      spelling: "Musume",
      meaning: "Daughter",
      ImagePath:"assets/images/family_members/daughter.png",
      soundUrl: "sounds/family_members/daughter.wav"
    ),

     SubData(
      word: "お爺さん",
      spelling: "Ogi-san",
      meaning: "GrandFather",
      ImagePath: "assets/images/family_members/grandfather.png",
      soundUrl: "sounds/family_members/grand father.wav"
    ),
    SubData(
      word: "お祖母さん",
      spelling: "sobu",
      meaning: "GrandMother",
      ImagePath:"assets/images/family_members/grandmother.png",
      soundUrl: "sounds/family_members/grand mother.wav"
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
        itemCount: numbers.length,
        itemBuilder: (context,index){
          return SubTopic(data: numbers[index]);
        }
        
        )
    );
  }


}

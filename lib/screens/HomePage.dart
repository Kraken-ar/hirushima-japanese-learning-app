import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/ColorsPage.dart';
import 'package:flutter_application_1/screens/FamilyPage.dart';
import 'package:flutter_application_1/screens/Numbers.dart';
import 'package:flutter_application_1/widgets/MainTopic.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(
          Icons.translate,
          color: Colors.white,
          size: 40,
        ),
        title: const Text(
          "Hirushima",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.info,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: ListView(
        
        
        children: [
          // ListTile(

          // )
          // ,
          MainTopic(
            title: "Numberss",
            image: "assets/images/numbers-icon.png",
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }))
            },
          ),
          MainTopic(
            title: "Family",
            image: "assets/images/family-icon.png",

            onTap: () => {
              
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyPage();
              }))
            },
          ),
              MainTopic(
            title: "Colors",
            image: "assets/images/colors-icon.png",

            onTap: () => {
              
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }))
            },
          ),
      
        ],
      ),
    );
  }
}

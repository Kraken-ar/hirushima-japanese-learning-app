

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Numbers.dart';
import 'package:audioplayers/audioplayers.dart';

class SubTopic extends StatelessWidget {
   SubTopic({required this.data});
  
  SubData? data;
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:  ListTile(
        
        leading: Image(image: AssetImage(data!.ImagePath!),height: 50,width: 50,),
          title: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                
                children: [
                  Text(data!.word!,style: TextStyle(color: Colors.blue,fontSize: 30),),
                  Text(" (${data!.spelling!})",style: TextStyle(color: Colors.blue,fontSize: 15),softWrap: true,),
                ],
              ),

                  Text(data!.meaning!,style: TextStyle(color: Colors.blue,fontSize: 15)),

            ],
          ),
          trailing:IconButton(
            icon: const Icon(Icons.spatial_audio_off_rounded,color: Colors.blue,),
           
            // highlightColor: Colors.blue,
            onPressed: () async {
                final player = AudioPlayer();
                // player.stop();
                print("Playing ${data!.meaning}");
                await  player.setSource(AssetSource(data!.soundUrl!));
                await player.resume();
                
            },
          ),
          shape:const RoundedRectangleBorder(
            side: BorderSide(color: Colors.blue,)
          ),
      ),
    );
  }
}



import 'package:flutter/material.dart';

class MainTopic extends StatelessWidget {
   MainTopic({this.title,this.image,this.onTap});
   String? title = "";
   String? image ;
    Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: onTap,
      child:  IntrinsicWidth(
        stepWidth: double.minPositive,
        child: Container(
        
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(20),
                        decoration:const BoxDecoration(color: Colors.blue,boxShadow: [BoxShadow(color: Colors.grey,blurStyle: BlurStyle.outer,blurRadius: 5)]),
                        width: double.minPositive,
                        margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                       
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          
                          children: [
                             Image(image: AssetImage(image!),width: 170,height: 170,),
                            Text(title!,style:const TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';

class TaskTitle extends StatelessWidget {
  String title ;
  String description;
  String image ;
   TaskTitle({super.key, required this.image,required this.description,required this.title});

  @override

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.network(image),
        Text(title,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        Text(description,style: TextStyle(fontSize: 30),)
    ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sifrovacka_hra/model/labyrint.dart';

class LabyrintView extends StatelessWidget{
  
  const LabyrintView({super.key, required this.model, required this.handleTap});

  final LabyrintModel model;
  final Function(String) handleTap;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Column(
    spacing: 20,
    children: [
      Text(model.question, style: TextStyle(fontSize: 30, fontWeight: .w400),),
      for (int i = 0; i<model.answers.length; i++)
        ListTile(
          title: Text(model.answers[i], style: TextStyle(fontSize: 20, fontWeight: .w300)), 
          leading: Text(model.next[i].name, style: TextStyle(fontSize: 30, fontWeight: .w600, color: Color.fromARGB(255, 0, 0, 0))),
          onTap: () {
            handleTap(model.next[i].internalName!);
          },
          )
          
    ],
          );
  }
}

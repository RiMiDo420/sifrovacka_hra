import 'dart:math';
import 'dart:typed_data';

import 'package:sifrovacka_hra/tools/cipherHelp.dart';

class LabyrintModel{
  LabyrintModel({required this.name, required this.question, code, this.hasCipher = false, this.cipherSolution, this.cipherType, this.fixedSolution = false, this.skipWord}){
    this.code = code ?? String.fromCharCodes(Iterable.generate(6, (_) => Random().nextInt(26)+65));
    nextStop();
  }

  final String name;
  late String code;
  final String question;
  List<String> answers = [];
  List<LabyrintModel> next = [];

  final bool hasCipher;
  final bool fixedSolution;
  String? cipherSolution;
  Cipherhelp cipherhelp = Cipherhelp();
  String? cipherType;
  String? skipWord;

  

  void addAnswer (String ans, LabyrintModel nextStop){
    answers.add(ans);
    next.add(nextStop);
  }

  void nextStop(){
    if(!fixedSolution){
      cipherSolution = cipherhelp.getSolution();
    }
  }

  Future<Uint8List> getCipher(){
    return cipherhelp.getCipher(cipherSolution!, cipherType!);
  }


}
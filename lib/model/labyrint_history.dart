import 'package:sifrovacka_hra/model/labyrint.dart';

class LabyrintHistoryItem{
  LabyrintHistoryItem({required this.stop}){
    this.time = DateTime.now();
  }

  late DateTime time;
  LabyrintModel stop;
}
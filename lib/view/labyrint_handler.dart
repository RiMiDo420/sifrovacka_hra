import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sifrovacka_hra/model/labyrint.dart';
import 'package:sifrovacka_hra/model/labyrint_history.dart';
import 'package:sifrovacka_hra/view/labyrint_cipher_screen.dart';
import 'package:sifrovacka_hra/view/labyrint_lock_screen.dart';
import 'package:sifrovacka_hra/view/labyrint_view.dart';

class LabyrintHandler extends StatefulWidget{
  LabyrintHandler({super.key, required this.labyrint});

  final Map<String, LabyrintModel> labyrint;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LabyrintHandlerState();
  }
}

class _LabyrintHandlerState extends State<LabyrintHandler>{
  
  String currentStop = "S1";
  bool locked = true;
  bool ciphered = true;
  List<LabyrintHistoryItem> history = [];


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Stanoviště " + widget.labyrint[currentStop]!.name),
        scrolledUnderElevation: 0,
        elevation: 0,                  
        surfaceTintColor: Colors.transparent,
        actions: [Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.access_time), // <-- Put your custom icon here
          onPressed: () {
            // Manually open the drawer
            Scaffold.of(context).openEndDrawer();
          },
          tooltip: "Otevřít historii",
        );
      },
    )],
      ),
      endDrawer: Drawer(
        child: Padding(
          padding: .all(10),
          child: Column(
          spacing: 20,
              children: [ 
                Text("Historie", style: TextStyle(fontSize: 30, fontWeight: .w300),),
                Expanded(child: ListView(
                  children: [
                    for(int i = history.length; i>0; i--)
                    ListTile(
                      leading: Text("$i. Stanoviště"),
                      title: Text(history[i-1].stop.name),
                      subtitle: Text(DateFormat("H:mm:ss").format(history[i-1].time)),
                      /*onTap: () {
                        setState(() {
                          currentStop = history[i-1].stop.name;
                          locked = true;
                        });
                      },*/
                
                    )
                  ],
                ),)]
      )
      )),
      body: Padding( padding: .all(8),child: 
        Center(child: 
          Expanded(child:SingleChildScrollView(child:Column(
            mainAxisAlignment: .start,
            spacing: 30,
            children: [
              locked
              ? LockScreen(
                model: widget.labyrint[currentStop]!,
                onSubmit: () => setState(() {
                  locked = false;
                  history.add(new LabyrintHistoryItem(stop: widget.labyrint[currentStop]!));
                  if(widget.labyrint[currentStop]!.cipherType == "Historie"){
                    String code = "";
                    for(int i = 1; i<=5; i++){
                      code+=history[history.length-i].stop.name;
                    }
                    widget.labyrint[currentStop]!.cipherSolution = code.toLowerCase();
                  }
                })
              )
              : ciphered 
              ? CipherScreen(
                model: widget.labyrint[currentStop]!,
                onSubmit: () => setState(() {
                  ciphered = false;
                  widget.labyrint[currentStop]!.nextStop();
                })
              )
              : LabyrintView(
              model: widget.labyrint[currentStop]!,
              handleTap: (tapName) {
                setState(() {
                  currentStop = tapName;
                  locked = true;
                  ciphered = widget.labyrint[currentStop]!.hasCipher;
                });
              },
              ),

            ],
          )))
          
        
          
        )
      ));
  }

}
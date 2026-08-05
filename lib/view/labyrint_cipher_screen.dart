 import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:sifrovacka_hra/model/labyrint.dart';
import 'package:sifrovacka_hra/view/labyrint_handler.dart';

class CipherScreen extends StatefulWidget{
  CipherScreen({super.key, required this.model, required this.onSubmit});

  final LabyrintModel model;
  final Function() onSubmit;

  @override
  State<CipherScreen> createState() => _CipherScreenState();
}

class _CipherScreenState extends State<CipherScreen> {
  final TextEditingController _controller = TextEditingController();

  final FocusNode _node = FocusNode();

  String? errorText;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: .directional(start: 20, end: 20),
      child:Column(
        spacing: 20,
        children: [
          Text("${widget.model.cipherType}", style: TextStyle(fontSize: 28, fontWeight: .w500),),
          FutureBuilder<Uint8List>(future: widget.model.getCipher(), builder: (BuildContext context, AsyncSnapshot<Uint8List> snapshot){
            if(snapshot.connectionState==ConnectionState.waiting){
              return CircularProgressIndicator();
            }

            if(snapshot.hasData){
              return Image.memory(snapshot.data!);
            }

            return const Text('Nenašel jsem šifru');
          }),
          if(widget.model.cipherType=="Krajina zvířat")
            Text("""
Emu vylezl na vrchol hory, ale protože nemá křídla nemůže sletět dolů, tak pro něho musí vylézt jeho kamarádka Gorila


Cvrček rád cvrká na louce u vody, ale ostatní jeho crvkání vytáčí, tak musí cvrkat na kraji


Aligátor žije v řece, ale kvůli potravě musí žít u lidského obydlí a rád vylézá z řeky a sluní se na louce


Bobr postavil hráz ze dřeva a vytvořil jezýrko a teď je jeho řeka krásně čistá


Fretka ráda pobíhá po lese a opaluje se na jeho jižním okraji


Impalla žije v pláni


Daněk žije v lese a protože jsou s Impalla jediní dva zástupci vysoké, tak se často scházejí


Hroch se rád rochní v jezírku, ale nenávidí bobra, tak se od něj drží co nejdál""")
          ,
          Text("Kód", style: TextStyle(fontSize: 28, fontWeight: .w500),),
          TextFormField(
            key: const ValueKey('my_unique_text_field'),
            autovalidateMode: .onUnfocus,
            forceErrorText: errorText,
            controller: _controller,
            focusNode: _node,
            autofocus: true,
            enableSuggestions: false,
            decoration: InputDecoration( 
              border: OutlineInputBorder(),
            ),
            validator: (input) {
              if (input!.toLowerCase()!=widget.model.cipherSolution && input!.toLowerCase()!=widget.model.skipWord){
                _controller.clear();
                return "Nesprávný kód pro šifru ${widget.model.cipherType}";
              }
              widget.onSubmit();
              return null;
            },
            onChanged: (value) {
              _controller.value=TextEditingValue(
                text: value.toUpperCase(),
                selection: _controller.value.selection,
              );
            },
          ),
        ElevatedButton.icon(onPressed: () {}, label: Text("Potvrdit")),
        ],
      ),
    );
  }
}
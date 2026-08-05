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
      child: Column(
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
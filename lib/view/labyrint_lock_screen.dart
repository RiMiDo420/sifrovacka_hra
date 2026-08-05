 import 'package:flutter/material.dart';
import 'package:sifrovacka_hra/model/labyrint.dart';
import 'package:sifrovacka_hra/view/labyrint_handler.dart';

class LockScreen extends StatefulWidget{
  LockScreen({super.key, required this.model, required this.onSubmit});

  final LabyrintModel model;
  final Function() onSubmit;

  @override
  State<LockScreen> createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
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
          Text("Zadejte kód pro stanoviště ${widget.model.name}", style: TextStyle(fontSize: 28, fontWeight: .w500),),
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
              if (input!=widget.model.code){
                _controller.clear();
                return "Nesprávný kód pro stanoviště ${widget.model.name}";
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
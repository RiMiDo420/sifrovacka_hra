import 'package:flutter/material.dart';
import 'package:sifrovacka_hra/model/labyrint.dart';
import 'package:sifrovacka_hra/view/labyrint_handler.dart';
import 'package:sifrovacka_hra/view/labyrint_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key}){
    dummyData["A"] = (LabyrintModel(name:  "A", question: "Kolik je Róze?", code: "AAAA"));
    dummyData["B"] = (LabyrintModel(name:  "B", question: "Otázka B", code: "BBBB"));
    dummyData["C"] = (LabyrintModel(name: "C", question: "Otázka C", code: "CCCC"));
    dummyData["D"] = (LabyrintModel(name: "D", question: "Otázka D", code: "DDDD"));
    dummyData["A"]!.addAnswer("18", dummyData["B"]!);
    dummyData["A"]!.addAnswer("1888", dummyData["C"]!);
    dummyData["A"]!.addAnswer("19", dummyData["D"]!);
    dummyData["B"]!.addAnswer("Odpověd 1", dummyData["A"]!);
    dummyData["B"]!.addAnswer("Odpověd 2", dummyData["C"]!);
    dummyData["B"]!.addAnswer("Odpověd 3", dummyData["D"]!);
    dummyData["C"]!.addAnswer("Odpověd 1", dummyData["A"]!);
    dummyData["C"]!.addAnswer("Odpověd 2", dummyData["B"]!);
    dummyData["C"]!.addAnswer("Odpověd 3", dummyData["D"]!);
    dummyData["D"]!.addAnswer("Odpověd 1", dummyData["A"]!);
    dummyData["D"]!.addAnswer("Odpověd 2", dummyData["B"]!);
    dummyData["D"]!.addAnswer("Odpověd 3", dummyData["C"]!);

    rozaData["S1"] = (LabyrintModel(name: "S1", question: "Kolik je Ríšovi?", code: "S1", hasCipher: true, cipherType: "icon", cipherSolution: "politologies", fixedSolution: false, skipWord: "skip"));
    rozaData["S11"] = (LabyrintModel(name: "S11", question: "Na co byl přejmenován Mexický záliv?", code: "AAAA"));
    rozaData["S12"] = (LabyrintModel(name: "S12", question: "Co bylo téma prvního tábora?", code: "AAAA"));
    rozaData["S13"] = (LabyrintModel(name: "S13", question: "Kdy získalo Mexiko nezávislost?", code: "AAAA"));
    rozaData["S14"] = (LabyrintModel(name: "S14", question: "Který titul ještě Úchyl neměl?", code: "AAAA"));
    rozaData["S15"] = (LabyrintModel(name: "S15", question: "Kdo loni nevedl kolej?", code: "AAAA"));
    rozaData["S16"] = (LabyrintModel(name: "S16", question: "Kdo je aktuálně nejmladší účastník tábora?", code: "AAAA"));

    rozaData["S2"] = (LabyrintModel(name: "S2", question: "S2", code: "AAAA"));

    rozaData["S1"]!.addAnswer("19", rozaData["S11"]!);
    rozaData["S1"]!.addAnswer("25", rozaData["S12"]!);
    rozaData["S1"]!.addAnswer("20", rozaData["S13"]!);//CORRECT

    rozaData["S11"]!.addAnswer("Kennedyho záliv", rozaData["S14"]!);
    rozaData["S11"]!.addAnswer("Americký záliv", rozaData["S15"]!);//Correct
    rozaData["S11"]!.addAnswer("Trumpovo brouzdaliště", rozaData["S16"]!);

    rozaData["S12"]!.addAnswer("Nic", rozaData["S1"]!);//CORRECT
    rozaData["S12"]!.addAnswer("Daleká cesta za domovem", rozaData["S15"]!);
    rozaData["S12"]!.addAnswer("Kapitán modrý medvěd", rozaData["S16"]!);

    rozaData["S13"]!.addAnswer("1821", rozaData["S2"]!);//CORRECT
    rozaData["S13"]!.addAnswer("1234", rozaData["S14"]!);
    rozaData["S13"]!.addAnswer("1848", rozaData["S15"]!);

    rozaData["S14"]!.addAnswer("Jeho královská výsost", rozaData["S12"]!); //Correct
    rozaData["S14"]!.addAnswer("Baron", rozaData["S15"]!);
    rozaData["S14"]!.addAnswer("Ředitel", rozaData["S16"]!);

    rozaData["S15"]!.addAnswer("Úchyl", rozaData["S1"]!);//CORRECT
    rozaData["S15"]!.addAnswer("Jelen", rozaData["S11"]!);
    rozaData["S15"]!.addAnswer("Žába", rozaData["S12"]!);

    rozaData["S16"]!.addAnswer("Robin", rozaData["S1"]!);//CORRECT
    rozaData["S16"]!.addAnswer("Julinka", rozaData["S14"]!);
    rozaData["S16"]!.addAnswer("Sofinka", rozaData["S15"]!);




  }

  final Map<String, LabyrintModel> dummyData = {};
  final Map<String, LabyrintModel> rozaData = {};
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LabyrintHandler(labyrint: rozaData,),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

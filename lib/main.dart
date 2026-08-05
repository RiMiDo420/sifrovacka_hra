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

    rozaData["S1"] = (LabyrintModel(internalName:"S1", name: "T", question: "Kolik je Ríšovi?", code: "SJVUE", hasCipher: true, cipherType: "Trifidi", cipherSolution: "nejkulatoulinkat", fixedSolution: false, skipWord: "krtek"));
    rozaData["S11"] = (LabyrintModel(internalName: "S11", name: "L", question: "Která zvířata v Keni každý rok migrují?", code: "LPCXS"));
    rozaData["S12"] = (LabyrintModel(internalName: "S12", name: "R", question: "Co bylo téma prvního tábora?", code: "HMBDE"));
    rozaData["S13"] = (LabyrintModel(internalName: "S13", name: "U", question: "Kdy získala Keňa nezávislost?", code: "QASMN"));
    rozaData["S14"] = (LabyrintModel(internalName: "S14", name: "G", question: "Který titul ještě Úchyl neměl?", code: "VCXBV"));
    rozaData["S15"] = (LabyrintModel(internalName: "S15", name: "J", question: "Ze kterého filmu je fráze \"Hakuna Matata\"?", code: "SSCXB"));
    rozaData["S16"] = (LabyrintModel(internalName: "S16", name: "B", question: "Kdo je aktuálně nejmladší účastník tábora?", code: "LKDTL"));

    rozaData["S2"] = (LabyrintModel(internalName: "S2", name: "M", question: "Které zvíře není v africké velké pětce?", code: "YCAER", hasCipher: true, cipherType: "Mayská", skipWord: "Pyramida"));
    rozaData["S21"] = (LabyrintModel(internalName: "S21", name: "C", question: "Která písnička je ve lvím králi?", code: "CJPWY"));
    rozaData["S22"] = (LabyrintModel(internalName: "S22", name: "V", question: "Kde byl první tábor?", code: "MNAKE"));
    rozaData["S23"] = (LabyrintModel(internalName: "S23", name: "A", question: "Které zvíře nežije v Keni?", code: "OAIRP"));


    rozaData["S3"] = (LabyrintModel(internalName: "S3", name: "D", question: "Kdo je Rózina oblíbená postava z Lvího krále?", code: "KLAKE", hasCipher: true, cipherType: "Digitální"));
    rozaData["S31"] = (LabyrintModel(internalName: "S31", name: "Q", question: "Ve kterém sportu Keňa vyniká?", code: "MZNME"));
    rozaData["S32"] = (LabyrintModel(internalName: "S32", name: "I", question: "Kolik bylo Žábě na prvním táboře?", code: "QPLXJ"));
    rozaData["S33"] = (LabyrintModel(internalName: "S33", name: "S", question: "Jak se jmenuje strom na kterém bydlí pavián Raviky?", code: "ZZNAW"));

    rozaData["S4"] = (LabyrintModel(internalName: "S4", name: "H", question: "Které zvíře je v africké hnusné pětce?", code: "FLOP", hasCipher: true, cipherType: "Historie"));
    rozaData["S41"] = (LabyrintModel(internalName: "S41", name: "W", question: "Co znamená \"Nant'singinyama bagithi baba\"?", code: "VGSEP"));
    rozaData["S42"] = (LabyrintModel(internalName: "S42", name: "N", question: "Která postava byla na Dívce která upíjela měsíc v kuchyni?", code: "MAOCE"));
    rozaData["S43"] = (LabyrintModel(internalName: "S43", name: "P", question: "Jak se jmenuje nejvyšší hra Keni?", code: "ZUGHA")); 

    rozaData["S5"] = (LabyrintModel(internalName: "S5", name: "K", question: "Přes které město Ríša s Rózou nejeli na tábor?", code: "AJFRV", hasCipher: true, cipherType: "Křižovatka"));
    rozaData["S51"] = (LabyrintModel(internalName: "S51", name: "E", question: "V jakém roce vyšel Lví král?", code: "OCRBA"));
    rozaData["S52"] = (LabyrintModel(internalName: "S52", name: "Y", question: "Kdo hrál Freda a George Weasleyovi?", code: "DSTHJ"));
    rozaData["S53"] = (LabyrintModel(internalName: "S53", name: "F", question: "Jaké je hlavní město Keni?", code: "BRMBR")); 

    rozaData["S6"] = (LabyrintModel(internalName: "S6", name: "Ch", question: "Jaký je věkový rozdíl, mezi nejstarším a nejmladším táborníkem?", code: "PQOPL", hasCipher: true, cipherType: "Chatovátko"));
    rozaData["S61"] = (LabyrintModel(internalName: "S61", name: "X", question: "Jak se jmenoval bratr Toničky Bolavé?", code: "ANBER"));
    rozaData["S62"] = (LabyrintModel(internalName: "S62", name: "O", question: "Kdo vloni nevedl kolej?", code: "AMDNE"));
    rozaData["S63"] = (LabyrintModel(internalName: "S63", name: "Ž", question: "Kteří ptáci zimují v Keni?", code: "LLKRD")); 

    rozaData["S7"] = (LabyrintModel(internalName: "S7", name: "Z", question: "Gratulujeme\nVyhráli jste🎉🎉🎉🎉🎉\nJděte k autu a volejte Róze", code: "ISJES")); 


    rozaData["S1"]!.addAnswer("19", rozaData["S11"]!);
    rozaData["S1"]!.addAnswer("25", rozaData["S12"]!);
    rozaData["S1"]!.addAnswer("20", rozaData["S13"]!);//CORRECT

    rozaData["S11"]!.addAnswer("Straka", rozaData["S14"]!);
    rozaData["S11"]!.addAnswer("Pakoně", rozaData["S15"]!);//Correct
    rozaData["S11"]!.addAnswer("Sloni", rozaData["S16"]!);

    rozaData["S12"]!.addAnswer("Nic", rozaData["S1"]!);//CORRECT
    rozaData["S12"]!.addAnswer("Daleká cesta za domovem", rozaData["S15"]!);
    rozaData["S12"]!.addAnswer("Kapitán modrý medvěd", rozaData["S16"]!);

    rozaData["S13"]!.addAnswer("1963", rozaData["S2"]!);//CORRECT
    rozaData["S13"]!.addAnswer("1905", rozaData["S14"]!);
    rozaData["S13"]!.addAnswer("1821", rozaData["S15"]!);

    rozaData["S14"]!.addAnswer("Jeho královská výsost", rozaData["S12"]!); //Correct
    rozaData["S14"]!.addAnswer("Baron", rozaData["S15"]!);
    rozaData["S14"]!.addAnswer("Ředitel", rozaData["S16"]!);

    rozaData["S15"]!.addAnswer("Lví král", rozaData["S1"]!);//CORRECT
    rozaData["S15"]!.addAnswer("Mauglí", rozaData["S11"]!);
    rozaData["S15"]!.addAnswer("Tučňáci z Madagaskaru", rozaData["S12"]!);

    rozaData["S16"]!.addAnswer("Robin", rozaData["S1"]!);//CORRECT
    rozaData["S16"]!.addAnswer("Julinka", rozaData["S14"]!);
    rozaData["S16"]!.addAnswer("Sofinka", rozaData["S15"]!);

    rozaData["S2"]!.addAnswer("Žirafa", rozaData["S23"]!);
    rozaData["S2"]!.addAnswer("Hroch", rozaData["S22"]!);
    rozaData["S2"]!.addAnswer("Buvol", rozaData["S21"]!);//CORRECT

    rozaData["S21"]!.addAnswer("Colours of the wind", rozaData["S3"]!);//CORRECT
    rozaData["S21"]!.addAnswer("Can you feel the love tonight", rozaData["S22"]!);
    rozaData["S21"]!.addAnswer("Circle of life", rozaData["S14"]!);

    rozaData["S22"]!.addAnswer("Liboc", rozaData["S13"]!);//CORRECT
    rozaData["S22"]!.addAnswer("Bublava", rozaData["S11"]!);
    rozaData["S22"]!.addAnswer("Devítka", rozaData["S16"]!);

    rozaData["S23"]!.addAnswer("Pavián", rozaData["S14"]!);
    rozaData["S23"]!.addAnswer("Tarbíci", rozaData["S2"]!);//CORRECT
    rozaData["S23"]!.addAnswer("Marabu", rozaData["S12"]!);

    rozaData["S3"]!.addAnswer("Pumbaa", rozaData["S31"]!);//CORRECT
    rozaData["S3"]!.addAnswer("Scar", rozaData["S22"]!);
    rozaData["S3"]!.addAnswer("Nala", rozaData["S32"]!);


    //Ve kterém sportu Keňa vyniká?
    rozaData["S31"]!.addAnswer("Basketbal", rozaData["S23"]!);
    rozaData["S31"]!.addAnswer("Hod oštěpem", rozaData["S32"]!);
    rozaData["S31"]!.addAnswer("Vytrvalostní běhy", rozaData["S4"]!);//CORRECT

    //Kolik bylo Žábě na prvním táboře?
    rozaData["S32"]!.addAnswer("38", rozaData["S33"]!);
    rozaData["S32"]!.addAnswer("34", rozaData["S12"]!);
    rozaData["S32"]!.addAnswer("37", rozaData["S3"]!);//CORRECT


    //Jak se jmenuje strom na kterém bydlí pavián Raviky?
    rozaData["S33"]!.addAnswer("Baobab", rozaData["S21"]!);//CORRECT
    rozaData["S33"]!.addAnswer("Akácie", rozaData["S23"]!);
    rozaData["S33"]!.addAnswer("Kaktus", rozaData["S15"]!);

    //Které zvíře je v africké hnusné pětce?
    rozaData["S4"]!.addAnswer("Člunozobec africký", rozaData["S42"]!);
    rozaData["S4"]!.addAnswer("Marabu africký", rozaData["S41"]!);//CORRECT
    rozaData["S4"]!.addAnswer("Rypoš lysý", rozaData["S43"]!);


    //Co znamená \"Nant'singinyama bagithi baba\"?
    rozaData["S41"]!.addAnswer("Ó můj bože, narodil se král", rozaData["S42"]!);
    rozaData["S41"]!.addAnswer("Ó můj bože, to je lev", rozaData["S5"]!);//CORRECT
    rozaData["S41"]!.addAnswer("To je vznešený lev", rozaData["S22"]!);

    //Která postava byla na Dívce která upíjela měsíc v kuchyni?
    rozaData["S42"]!.addAnswer("Glerg", rozaData["S31"]!);//CORRECT
    rozaData["S42"]!.addAnswer("Antain", rozaData["S11"]!);
    rozaData["S42"]!.addAnswer("Xan", rozaData["S33"]!);


    //Jak se jmenuje nejvyšší hra Keni?
    rozaData["S43"]!.addAnswer("Kilimandžáro", rozaData["S42"]!);
    rozaData["S43"]!.addAnswer("Mount Kenya", rozaData["S4"]!);//CORRECT
    rozaData["S43"]!.addAnswer("Mlima Mrefu", rozaData["S32"]!);

    //Přes které město Ríša s Rózou nejeli na tábor
    rozaData["S5"]!.addAnswer("Pardubice", rozaData["S52"]!);
    rozaData["S5"]!.addAnswer("Nymburk", rozaData["S51"]!);//CORRECT
    rozaData["S5"]!.addAnswer("Hradec Králové", rozaData["S33"]!);


    //V jakém roce vyšel Lví král?
    rozaData["S51"]!.addAnswer("2004", rozaData["S42"]!);
    rozaData["S51"]!.addAnswer("2001", rozaData["S43"]!);
    rozaData["S51"]!.addAnswer("1994", rozaData["S6"]!);//CORRECT

    //Kdo hrál Freda a George Weasleyovi?
    rozaData["S52"]!.addAnswer("James a Oliver Phelpsovi", rozaData["S11"]!);
    rozaData["S52"]!.addAnswer("Divíšek", rozaData["S33"]!);
    rozaData["S52"]!.addAnswer("Martin a Pětík", rozaData["S5"]!);//CORRECT


    //Jaké je hlavní město Keni?
    rozaData["S53"]!.addAnswer("Nairobi", rozaData["S41"]!);//CORRECT
    rozaData["S53"]!.addAnswer("Mombasa", rozaData["S42"]!);
    rozaData["S53"]!.addAnswer("Wakanda", rozaData["S23"]!);


    //Jaký je věkový rozdíl, mezi nejstarším a nejmladším táborníkem?
    rozaData["S6"]!.addAnswer("56", rozaData["S61"]!);//CORRECT
    rozaData["S6"]!.addAnswer("49", rozaData["S62"]!);
    rozaData["S6"]!.addAnswer("44", rozaData["S63"]!);


    //Jak se jmenoval bratr Toničky Bolavé?
    rozaData["S61"]!.addAnswer("Slavomír", rozaData["S63"]!);
    rozaData["S61"]!.addAnswer("Čestmír", rozaData["S7"]!);//CORRECT
    rozaData["S61"]!.addAnswer("Denis", rozaData["S32"]!);

    //Kdo vloni nevedl kolej?
    rozaData["S62"]!.addAnswer("Jelen", rozaData["S53"]!);
    rozaData["S62"]!.addAnswer("Žába", rozaData["S43"]!);
    rozaData["S62"]!.addAnswer("Úchyl", rozaData["S51"]!);//CORRECT


    //Kteří ptáci zimují v Keni?
    rozaData["S63"]!.addAnswer("Husa", rozaData["S6"]!);//CORRECT
    rozaData["S63"]!.addAnswer("Vlaštovka", rozaData["S52"]!);
    rozaData["S63"]!.addAnswer("Kachna", rozaData["S62"]!);






   


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

import 'dart:math';
import 'dart:io';
import 'dart:math' as math;
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';


class _ActiveSegment {
  final int colorIndex;
  final int segmentIndex;
  _ActiveSegment(this.colorIndex, this.segmentIndex);
}

class _ComputedLine {
  final Offset p1;
  final Offset p2;
  final Color color;
  _ComputedLine(this.p1, this.p2, this.color);
}

class Cipherhelp {
  List<String> words = """andel
antena
armada
asistent
atlet
autor
azimut
babicka
bacil
balada
balvan
banan
banka
banker
barva
basnik
batoh
bavlna
bazen
bedna
beran
beton
bitva
blato
blesk
bobek
bodec
bohatstvi
bojovnik
bolest
bomba
botnik
boure
brada
brana
bratr
bricho
briza
buben
budik
budova
buvol
cibule
cihla
cizinec
clona
cviceni
cyklista
carodej
casopis
celovka
cepice
cesnek
cislo
cistic
clovek
ctverec
darek
datel
dcera
delfin
denik
deska
destnik
detail
detstvi
divadlo
divak
dlaha
dlazdice
dluznik
dobro
doktor
doklad
dalnice
domov
dopis
doprava
drama
drozd
drevo
dukaz
dulek
duvod
dvojka
dvorek
dychani
efekt
ekonom
ekvator
elektrina
elipsa
emoce
enzym
etapa
extrem
fabrika
fakulta
farmar
farnost
fenomen
fialka
figurka
filmar
filtr
finance
firma
fletna
flotila
forma
fotka
fotbal
frakce
freska
fronta
fukar
funkce
fyzika
galaxie
galerie
garaz
general
genetika
geolog
gepard
gesto
globus
grafika
gramatika
granule
hadice
halda
harfa
hasic
havir
helma
herec
hermanek
historie
hladina
hlava
hlidac
hloubka
hnizdo
hoblik
hodina
holka
holub
hmota
homole
horcice
hotel
houba
houpacka
hranice
hrnec
hroch
hromada
hrozen
hruska
hrbitov
hreben
hudba
hvezda
hyena
ibisek
iluze
imunita
index
indikator
infekce
inkoust
inspekce
instinkt
intrikan
investice
inzenyr
ironie
jablko
jazyk
javor
jehla
jehlan
jelen
jelito
jeskyne
jestrab
jezevec
jezero
jidlo
jikra
jiskra
jizda
jizdenka
jistota
jitro
jmeno
kabat
kabel
kabina
kachna
kadernik
kahan
kalendar
kalich
kamen
kamera
kamion
kanal
kanec
kanoe
kapela
kapka
kapsa
karavan
karta
kartac
karton
kasna
kavarna
kazeta
kelimek
kinosal
kytara
kladivo
klenot
kletba
klient
klika
klima
klokan
kloubek
kniha
knihovna
kobra
koberec
kocka
kohout
komin
komora
kompas
konec
konik
konto
kopyto
korab
koruna
koryto
koren
kosatec
kostel
koste
kotel
kotva
kouzlo
kovar
krabice
krajina
kralik
krasa
krater
krava
krejci
krocan
krokodyl
kroupa
kruzitko
krychle
krysa
krystal
kreslo
krida
kridlo
kuchar
kukurice
kulna
kulomet
kultura
kustka
kvetina
kytice
lahev
lampa
lasicka
laska
latka
lavice
lavina
lazen
lebka
ledvina
legenda
lekarna
lekar
lekce
leknin
lepidlo
letadlo
letak
letiste
levhart
libela
lihovar
lijak
lilie
limec
linka
liska
lodice
lodka
logika
loket
loutka
lovec
lucerna
lupic
lustr
lvice
lzice
macecha
madlo
mafie
magie
magnet
majak
majitel
makak
malina
malir
maminka
manazer
mandle
mango
manikura
maraton
maska
maslo
matka
matrace
mazlicek
medailon
medved
melodie
mesto
mesic
metal
metoda
mezera
mikina
mince
mineral
ministr
misto
mixer
mlade
mladez
mleko
mlynek
mocal
model
modla
mohyla
molekula
moment
monitor
mosaz
motiv
motor
motorka
motyl
moudrost
moucha
mravenec
mrazak
mrtvola
mrzak
mudrc
muflon
musle
muzika
mydlo
myslenka
nadoba
nadeje
nadrazi
nadrz
nafta
nahrdelnik
nahoda
najem
nakup
nalada
nalez
namaha
namesti
napad
napoj
naramek
narod
narok
nasili
nastroj
naves
navrh
nazor
nebezpeci
nedele
nehoda
nemoc
nemocnice
nesmysl
netvor
netopyr
nevesta
nezmar
nosic
notes
novina
novinar
nymfa
obalka
obcan
obdiv
obhajce
obili
oblak
oblicej
obluda
obnova
obora
obrat
obruba
obsah
obsluha
obvaz
obyvatel
ocean
odbocka
odbor
odchod
odkaz
odklad
odmena
odpor
odpad
odpustek
odvaha
ohnisko
okraj
okres
okurka
oliva
olovo
oltar
omacka
opice
opora
opravar
opona
organ
orchestr
orech
osada
osivo
oslava
osoba
ostrov
ostruzina
otazka
otvor
ovcak
ovoce
ozdoba
pacifik
pacient
packa
padak
padlo
pahorek
palac
palec
paleta
palivo
palma
pamatka
pamet
pamelnik
panak
panenka
panel
panter
papir
papousek
paprika
paprsek
parada
paragraf
paratko
parek
parnik
partyzan
pasak
paska
pastelka
pastyr
pater
patnik
pavouk
pavucina
pecet
pecka
pedal
pekarna
pekar
peklo
pelikan
penzion
perla
pesina
pesec
petlice
pevnost
pijan
pijavice
pirko
pisar
pisek
pisen
pistole
pivovar
plachta
plakat
plamen
planeta
plast
plast
platno
plavec
plech
plemeno
pleso
pletivo
plomba
plocha
plysak
pobrezi
pocitac
podesta
podlaha
podnik
podoba
podpora
podraz
podzim
pohadka
pohar
pohled
pohlavek
pohovka
pohyb
pojem
pojistka
poklad
pokladna
pokoj
pokrok
pokus
poledne
policie
polstar
pomoc
pomsta
ponik
ponozka
popel
popelnik
popis
poplach
popruh
porod
porota
portret
porucha
posila
postel
postoj
posun
posta
potok
potrava
poupe
poust
povaha
povest
povlak
povodi
povoz
pozor
prababa
prach
pradlo
prales
pramen
prase
pravda
pravidlo
praxe
prefekt
prezident
prkno
problem
proces
prodej
prodavac
profil
program
propast
prostor
prsten
prukaz
praminek
pstros
ptakopysk
puska
pumpa
pupen
pusinka
pustik
pytel
rabin
racek
radost
radio
rafika
raketa
rameno
rampa
rande
ranvej
ruksak
rebel
recept
rolnik
rodina
rokle
roleta
roman
ropucha
rotunda
rovina
rozcesti
rozhlas
rozum
rtenka
rubrika
rukavice
rumun
runda
rybnik
rybar
rytir
sadra
sanitka
salam
salat
samec
samice
samotka
sandal
satelit
sazka
scena
sedadlo
sedlak
sekera
sekunda
semafor
semeno
senator
sestra
setkani
sesit
sever
schema
schod
schranka
silnice
sirka
sirup
sitko
skala
skaut
sklenice
sklep
sklon
skoba
skokan
skola
skorice
skrin
skupina
slama
slavik
slecna
slepys
slina
sliva
sloup
sluch
slunce
smysl
snaha
snidane
sobota
socha
sokol
sopka
sosna
soudce
souhlas
soucit
soudek
soutez
spacak
spanek
splet
spodek
spolek
spona
sport
sprcha
srdce
srnec
srsen
stadium
stado
stanek
stanice
starosta
starec
statek
stavba
steblo
stehno
stena
stiznost
stoka
stolek
stolicka
stopa
stopka
stozar
stranka
straz
strazce
strom
strop
struna
stred
strela
strecha
strep
strevo
stribro
studna
stupen
stvura
sukne
sumec
susenka
svatba
svetr
svice
svicka
svoboda
sycak
symbol
synovec
sykora
sypani
system
tabak
tabule
tabor
tajemstvi
tajenka
taska
tatar
tatinek
tavba
taxik
tecka
telepatie
tekutina
telefon
televize
temnota
teplo
teplomer
tepna
teren
tesak
tesar
tezba
ticho
tlama
tlupa
topeni
topol
tornado
tovarna
trabant
tradice
trava
trezor
trhlina
trombon
trpaslik
trubka
truhla
tresen
trida
triska
tucnak
tunel
turnaj
tuzka
tvaroh
tvurce
tykev
tyden
ucebnice
ucitel
udalost
udoli
udrzba
uhlomer
ukazka
ulice
ulita
ulovek
umelec
umeni
univerzita
urednik
uroda
uskali
uspech
ustav
usvit
uterka
utvar
uzaver
vagon
vahadlo
valnik
valec
vanek
varta
varecka
vcela
vdova
vedec
vedeni
vedro
vejce
velbloud
veletok
velitel
venkov
vesmir
vesnice
veslo
vetev
vetrnik
vicko
vidlicka
vikend
vlkodlak
vlajka
vlastovka
vlocka
voditko
vodnik
vodopad
vojak
vojsko
volant
volba
volno
vousek
vozik
vrana
vratek
vrchol
vrstva
vrtulnik
vybor
vychod
vycvik
vydra
vyhled
vyhoda
vykaz
vyklad
vykon
vykres
vylet
vyloha
vymena
vymluva
vynalez
vynos
vypad
vypis
vypinac
vyplata
vyroba
vyrobek
vyrok
vystava
vystup
vyska
vytah
vytvor
vyuka
vyvoj
vyzva
vzorek
vztah
zabava
zabradli
zadek
zadani
zahada
zahradnik
zahrada
zachod
zajic
zakon
zakusek
zaliv
zamek
zapad
zapas
zapis
zapisnik
zasoba
zastera
zastita
zatka
zavada
zavod
zavoj
zazrak
zbran
zbroj
zbytek
zednik
zelenina
zkouska
zlocin
zloba
zlato
zlomek
zmrzlina
znacka
znalost
znelka
zniceni
zobak
zprava
zradce
zrcadlo
zubar
zvire
zvonek
zadatel
zalud
zaludek
zampion
zarovka
zehlicka
zelezo
zelva
zenich
zidle
zirafa
zivel
zivot
zizala
zloutek
zralok
zupan
zabka
zebrik
zvykacka
zongler
zumpa
zadost
zaluzie
zebracka""".split('\n');



  String getSolution(){
    return words[Random().nextInt(words.length)];
  }

  Future<Uint8List> getCipher(String text, String cipherType) async{
    switch (cipherType){
      case "Chatovátko":
        return generateDiscordEmojiImage(word: text, username: "Rozarka", emojiKey:{
  // Alphabet
  'a': ':star_struck:\n',
  'b': ':partying_face:\n',
  'c': ':heart_eyes:\n',
  'd': ':kissing_heart:\n',
  'e': ':zipper_mouth:\n',
  'f': ':sob:\n',
  'g': ':sunglasses:\n',
  'h': ':smiling_imp:\n',
  'i': ':relaxed:\n',
  'j': ':dotted_line_face:\n',
  'k': ':skull:\n',
  'l': ':pleading_face:\n',
  'm': ':heart:\n',
  'n': ':smiling_face_with_tear:\n',
  'o': ':joy:\n',
  'p': ':wink:\n',
  'q': ':sweat_smile:\n',
  'r': ':smiling_face_with_3_hearts:\n',
  's': ':smirk:\n',
  't': ':see_no_evil:\n',
  'u': ':money_mouth:\n',
  'v': ':nerd:\n',
  'w': ':innocent:\n',
  'x': ':melting_face:\n', 
  'y': ':blush:\n', 
  'z': ':face_holding_back_tears:\n',
   
  // Numbers
  '0': ' :zero:',
  '1': ' :one:',
  '2': ' :two:',
  '3': ' :three:',
  '4': ' :four:',
  '5': ' :five:',
  '6': ' :six:',
  '7': ' :seven:',
  '8': ' :eight:',
  '9': ' :nine:',
   
  // Punctuation
  '!': ' :exclamation:',
  '?': ' :question:',
  '.': ' :red_circle:',
});
      case "Digitální":
        return encodeTo7SegmentImage(text);
      case "Trifidi":
        return encodeWordToBrailleImage(text);
      case "Křižovatka":
        return encodeWordToSemaphore(text);
      case "Mayská":
        return encodeToMayaMorseImage(text);
      default:
      return generateTextImage(text);
    }
    
  }

Future<Uint8List> generateTextImage(String text) async {
  // 1. Create a recorder and canvas to draw on
  final recorder = ui.PictureRecorder();
  final canvas = ui.Canvas(recorder);

  // 2. Define the text styling
  final paragraphStyle = ui.ParagraphStyle(
    textAlign: TextAlign.center,
    fontSize: 40.0,
    textDirection: ui.TextDirection.ltr,
  );
  
  final textStyle = ui.TextStyle(
    color: Colors.black,
  );

  // 3. Build and layout the text paragraph
  final builder = ui.ParagraphBuilder(paragraphStyle)
    ..pushStyle(textStyle)
    ..addText(text);
    
  final paragraph = builder.build();
  
  // Set a fixed width for the image canvas (e.g., 400 pixels)
  const double imageWidth = 400.0;
  paragraph.layout(const ui.ParagraphConstraints(width: imageWidth));

  // Calculate the required height based on the text length
  final double imageHeight = paragraph.height + 40.0; // Added 40px for padding

  // 4. Draw a white background (otherwise it will be transparent)
  final bgPaint = Paint()..color = Colors.white;
  canvas.drawRect(ui.Rect.fromLTWH(0, 0, imageWidth, imageHeight), bgPaint);

  // 5. Paint the text onto the canvas with a slight top offset (padding)
  canvas.drawParagraph(paragraph, const Offset(0, 20));

  // 6. Finish drawing and convert to an image object
  final picture = recorder.endRecording();
  final image = await picture.toImage(imageWidth.toInt(), imageHeight.toInt());

  // 7. Convert the image to PNG bytes
  final byteData = await image.toByteData(format: ui.ImageByteFormat.png);

  // Return the file path
  return byteData!.buffer.asUint8List();
}

String mapWordToEmojis(String input, Map<String, String> emojiKey) {
  final StringBuffer result = StringBuffer();

  for (int i = 0; i < input.length; i++) {
    final char = input[i].toLowerCase();
    
    // If the character exists in our key mapping, add the emoji.
    // If not (like spaces or punctuation), keep the original character.
    result.write(emojiKey[char] ?? char);
  }

  return result.toString();
}

/// 2. DISCORD CHAT IMAGE GENERATOR
/// Draws a Discord-style dark mode chat message onto a Canvas and returns PNG bytes.
Future<Uint8List> generateDiscordEmojiImage({
  required String word,
  required Map<String, String> emojiKey,
  String username = "CipherBot",
}) async {
  // Translate the input word to shortcodes using your map
  // Tip: Ensure this function joins the codes with a space for proper text wrapping!
  final cipheredText = mapWordToEmojis(word, emojiKey);

  // Dimensions & Layout constants
  const double canvasWidth = 520.0;
  const double padding = 20.0;
  const double avatarRadius = 22.0;
  const double avatarSize = avatarRadius * 2;

  // Official Discord Dark Theme Palette
  const Color bgColor = Color(0xFF313338);
  const Color blurpleColor = Color(0xFF5865F2);
  const Color textColor = Color(0xFFDBDEE1);
  const Color subtextColor = Color(0xFF949BA4);

  final double contentLeftOffset = padding + avatarSize + 16.0;
  final double maxTextWidth = canvasWidth - contentLeftOffset - padding;

  // Build Header (Username + Timestamp)
  final headerBuilder = ui.ParagraphBuilder(
    ui.ParagraphStyle(textDirection: ui.TextDirection.ltr),
  )
    ..pushStyle(ui.TextStyle(
      color: Colors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    ))
    ..addText('$username ')
    ..pushStyle(ui.TextStyle(
      color: subtextColor,
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
    ))
    ..addText('Today at ${DateFormat("H:mm").format(DateTime.now())}');

  final headerParagraph = headerBuilder.build();
  headerParagraph.layout(ui.ParagraphConstraints(width: maxTextWidth));

  // Build Message Body (Mapped Shortcodes)
  final messageBuilder = ui.ParagraphBuilder(
    ui.ParagraphStyle(textDirection: ui.TextDirection.ltr),
  )..pushStyle(ui.TextStyle(
      color: textColor,
      fontSize: 16.0, // Changed from 28.0 to 16.0 for standard text size
      fontFamilyFallback: const ['Noto Color Emoji', 'Apple Color Emoji', 'Segoe UI Emoji'],
    ))..addText(cipheredText);

  final messageParagraph = messageBuilder.build();
  messageParagraph.layout(ui.ParagraphConstraints(width: maxTextWidth));

  // Calculate required canvas height dynamically based on content
  final double contentHeight = headerParagraph.height + 6.0 + messageParagraph.height;
  final double totalHeight = (padding * 2) + (contentHeight > avatarSize ? contentHeight : avatarSize);

  // Initialize Canvas Recorder
  final recorder = ui.PictureRecorder();
  final canvas = ui.Canvas(recorder);

  // Step A: Draw Discord Dark Mode Background
  canvas.drawRect(
    ui.Rect.fromLTWH(0, 0, canvasWidth, totalHeight),
    Paint()..color = bgColor,
  );

  // Step B: Draw Avatar (Blurple circle with robot emoji)
  canvas.drawCircle(
    Offset(padding + avatarRadius, padding + avatarRadius),
    avatarRadius,
    Paint()..color = blurpleColor,
  );

  final avatarTextBuilder = ui.ParagraphBuilder(
    ui.ParagraphStyle(textAlign: TextAlign.center, textDirection: ui.TextDirection.ltr),
  )..pushStyle(ui.TextStyle(
      fontSize: 22.0,
      fontFamilyFallback: const ['Noto Color Emoji', 'Apple Color Emoji', 'Segoe UI Emoji'], 
    ))..addText('🤖');

  final avatarParagraph = avatarTextBuilder.build();
  avatarParagraph.layout(const ui.ParagraphConstraints(width: avatarSize));
  canvas.drawParagraph(
    avatarParagraph,
    Offset(padding, padding + (avatarSize - avatarParagraph.height) / 2),
  );

  // Step C: Paint Header Text
  canvas.drawParagraph(headerParagraph, Offset(contentLeftOffset, padding));

  // Step D: Paint Emoji Message
  canvas.drawParagraph(
    messageParagraph,
    Offset(contentLeftOffset, padding + headerParagraph.height + 6.0),
  );

  // Step E: Render to PNG Bytes
  final picture = recorder.endRecording();
  final image = await picture.toImage(canvasWidth.toInt(), totalHeight.toInt());
  final byteData = await image.toByteData(format: ui.ImageByteFormat.png);

  return byteData!.buffer.asUint8List();
}

Future<Uint8List> encodeTo7SegmentImage(String word) async {
  word = word.toUpperCase();
  
  if (word.isEmpty) {
    // Return a tiny 1x1 blank image if the string is empty
    final ui.PictureRecorder recorder = ui.PictureRecorder();
    final Canvas canvas = Canvas(recorder);
    canvas.drawRect(const Rect.fromLTWH(0, 0, 1, 1), Paint()..color = const Color(0xFF111111));
    final ui.Image image = await recorder.endRecording().toImage(1, 1);
    final ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    return byteData!.buffer.asUint8List();
  }

  // 1. Gather all active segments from the word
  List<_ActiveSegment> segments = [];
  for (int i = 0; i < word.length; i++) {
    final int bitmask = _get7SegmentBitmask(word[i]);
    for (int s = 0; s < 7; s++) {
      if ((bitmask & (1 << s)) != 0) {
        segments.add(_ActiveSegment(i, s));
      }
    }
  }

  // 2. Shuffle the segments based on a seeded randomizer
  int seed = 0;
  for (int i = 0; i < word.length; i++) {
    seed += word.codeUnitAt(i) * (i + 1);
  }
  final math.Random random = math.Random(seed);
  segments.shuffle(random);

  // 3. Pack the segments evenly across columns
  List<Map<int, int>> columns = List.generate(word.length, (_) => {});
  
  for (var seg in segments) {
    int bestCol = -1;
    int minCount = 9999;
    
    // Find the valid column that currently has the fewest segments
    for (int c = 0; c < columns.length; c++) {
      // Constraint 1: The column doesn't already have this physical segment position
      // Constraint 2: The column doesn't already contain this color
      if (!columns[c].containsKey(seg.segmentIndex) &&
          !columns[c].containsValue(seg.colorIndex)) {
        if (columns[c].length < minCount) {
          minCount = columns[c].length;
          bestCol = c;
        }
      }
    }
    
    if (bestCol != -1) {
      columns[bestCol][seg.segmentIndex] = seg.colorIndex;
    } else {
      // If constraints prevent it from fitting in ANY existing column, add a new one
      columns.add({seg.segmentIndex: seg.colorIndex});
    }
  }

  // Dimensions and styling for each digit
  const double digitWidth = 50.0;
  const double digitHeight = 90.0;
  const double thickness = 10.0; 
  const double spacing = 15.0;
  const double padding = 30.0;
  
  final int totalColumns = columns.isEmpty ? 1 : columns.length;
  final double totalWidth = padding * 2 + (totalColumns * digitWidth) + ((totalColumns - 1) * spacing);
  final double totalHeight = padding * 2 + digitHeight;
  
  final ui.PictureRecorder recorder = ui.PictureRecorder();
  final Canvas canvas = Canvas(recorder, Rect.fromLTWH(0, 0, totalWidth, totalHeight));
  
  // Draw background (Dark Digital Black)
  canvas.drawRect(
    Rect.fromLTWH(0, 0, totalWidth, totalHeight),
    Paint()..color = const Color(0xFF111111),
  );

  // Inactive segment paint (Dark charcoal)
  final Paint inactivePaint = Paint()
    ..color = const Color(0xFF222222)
    ..style = PaintingStyle.fill;

  // Pre-calculate rainbow paints for the original letters dynamically
  final List<Paint> activePaints = List.generate(word.length, (i) {
    double hue = _getRainbowHue(i, word.length);
    return Paint()
      ..color = HSVColor.fromAHSV(1.0, hue, 1.0, 1.0).toColor() 
      ..style = PaintingStyle.fill;
  });

  // 4. Draw the cipher across the columns
  double currentX = padding;
  for (int c = 0; c < totalColumns; c++) {
    final Map<int, int> currentColumn = columns.isNotEmpty ? columns[c] : {};

    for (int segmentIndex = 0; segmentIndex < 7; segmentIndex++) {
      if (currentColumn.containsKey(segmentIndex)) {
        int colorIndex = currentColumn[segmentIndex]!;
        _drawSegment(
          canvas, 
          segmentIndex, 
          currentX, 
          padding, 
          digitWidth, 
          digitHeight, 
          thickness,
          activePaints[colorIndex],
        );
      } else {
        _drawSegment(
          canvas, 
          segmentIndex, 
          currentX, 
          padding, 
          digitWidth, 
          digitHeight, 
          thickness,
          inactivePaint,
        );
      }
    }
    currentX += digitWidth + spacing;
  }

  // Finalize the image
  final ui.Picture picture = recorder.endRecording();
  final ui.Image image = await picture.toImage(totalWidth.toInt(), totalHeight.toInt());
  final ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
  
  return byteData!.buffer.asUint8List();
}

/// Dynamically calculates a distinct hue for each letter without wrapping around,
/// forcing the scale to hit key colors like Orange and Yellow regardless of length.
double _getRainbowHue(int index, int totalLetters) {
  if (totalLetters <= 1) return 0.0; // Red default

  // We explicitly map out the color wheel stops so narrow bands aren't skipped.
  const List<double> stops = [
    0.0,   // Red
    30.0,  // Orange
    60.0,  // Yellow
    120.0, // Green
    180.0, // Cyan
    240.0, // Blue
    280.0  // Purple (Stops here, pure rainbow)
  ];

  // Calculate how far along the word we are (0.0 to 1.0)
  double t = index / (totalLetters - 1);
  
  // Scale it to our number of intervals
  double scaledT = t * (stops.length - 1);
  int stopIndex = scaledT.floor();
  
  if (stopIndex >= stops.length - 1) {
    return stops.last;
  }
  
  // Interpolate between the specific color stops
  double fraction = scaledT - stopIndex;
  return stops[stopIndex] + (stops[stopIndex + 1] - stops[stopIndex]) * fraction;
}

/// Draws an individual segment of the 7-segment display.
/// Drawn as custom polygon paths to create pointy (hexagonal) caps.
/// 
/// Indices mapping:
/// 0: Top, 1: Top-Right, 2: Bottom-Right, 3: Bottom, 
/// 4: Bottom-Left, 5: Top-Left, 6: Middle
void _drawSegment(
  Canvas canvas, 
  int index, 
  double offsetX, 
  double offsetY, 
  double w, 
  double h, 
  double t, 
  Paint paint,
) {
  final double halfT = t / 2;
  const double gap = 1.5; 
  
  final Path path = Path();
  
  switch (index) {
    case 0: // Top
      path.moveTo(offsetX + halfT + gap, offsetY + halfT);
      path.lineTo(offsetX + t + gap, offsetY);
      path.lineTo(offsetX + w - t - gap, offsetY);
      path.lineTo(offsetX + w - halfT - gap, offsetY + halfT);
      path.lineTo(offsetX + w - t - gap, offsetY + t);
      path.lineTo(offsetX + t + gap, offsetY + t);
      break;
    case 1: // Top-Right
      path.moveTo(offsetX + w - halfT, offsetY + halfT + gap);
      path.lineTo(offsetX + w, offsetY + t + gap);
      path.lineTo(offsetX + w, offsetY + h / 2 - halfT - gap);
      path.lineTo(offsetX + w - halfT, offsetY + h / 2 - gap);
      path.lineTo(offsetX + w - t, offsetY + h / 2 - halfT - gap);
      path.lineTo(offsetX + w - t, offsetY + t + gap);
      break;
    case 2: // Bottom-Right
      path.moveTo(offsetX + w - halfT, offsetY + h / 2 + gap);
      path.lineTo(offsetX + w, offsetY + h / 2 + halfT + gap);
      path.lineTo(offsetX + w, offsetY + h - t - gap);
      path.lineTo(offsetX + w - halfT, offsetY + h - halfT - gap);
      path.lineTo(offsetX + w - t, offsetY + h - t - gap);
      path.lineTo(offsetX + w - t, offsetY + h / 2 + halfT + gap);
      break;
    case 3: // Bottom
      path.moveTo(offsetX + halfT + gap, offsetY + h - halfT);
      path.lineTo(offsetX + t + gap, offsetY + h - t);
      path.lineTo(offsetX + w - t - gap, offsetY + h - t);
      path.lineTo(offsetX + w - halfT - gap, offsetY + h - halfT);
      path.lineTo(offsetX + w - t - gap, offsetY + h);
      path.lineTo(offsetX + t + gap, offsetY + h);
      break;
    case 4: // Bottom-Left
      path.moveTo(offsetX + halfT, offsetY + h / 2 + gap);
      path.lineTo(offsetX + t, offsetY + h / 2 + halfT + gap);
      path.lineTo(offsetX + t, offsetY + h - t - gap);
      path.lineTo(offsetX + halfT, offsetY + h - halfT - gap);
      path.lineTo(offsetX, offsetY + h - t - gap);
      path.lineTo(offsetX, offsetY + h / 2 + halfT + gap);
      break;
    case 5: // Top-Left
      path.moveTo(offsetX + halfT, offsetY + halfT + gap);
      path.lineTo(offsetX + t, offsetY + t + gap);
      path.lineTo(offsetX + t, offsetY + h / 2 - halfT - gap);
      path.lineTo(offsetX + halfT, offsetY + h / 2 - gap);
      path.lineTo(offsetX, offsetY + h / 2 - halfT - gap);
      path.lineTo(offsetX, offsetY + t + gap);
      break;
    case 6: // Middle
      path.moveTo(offsetX + halfT + gap, offsetY + h / 2);
      path.lineTo(offsetX + t + gap, offsetY + h / 2 - halfT);
      path.lineTo(offsetX + w - t - gap, offsetY + h / 2 - halfT);
      path.lineTo(offsetX + w - halfT - gap, offsetY + h / 2);
      path.lineTo(offsetX + w - t - gap, offsetY + h / 2 + halfT);
      path.lineTo(offsetX + t + gap, offsetY + h / 2 + halfT);
      break;
    default:
      return;
  }
  
  path.close();
  canvas.drawPath(path, paint);
}


int _get7SegmentBitmask(String char) {
  switch (char) {
    case 'A': return 119; // 0x77
    case 'B': return 124; // Lowercase 'b' (0x7C)
    case 'C': return 57;  // 0x39
    case 'D': return 94;  // Lowercase 'd' (0x5E)
    case 'E': return 121; // 0x79
    case 'F': return 113; // 0x71
    case 'G': return 61;  // 0x3D
    case 'H': return 118; // 0x76
    case 'I': return 48;  // 0x30
    case 'J': return 30;  // 0x1E
    case 'K': return 118; // Approximated using 'H'
    case 'L': return 56;  // 0x38
    case 'M': return 55;  // Hard on 7-segment, approximate
    case 'N': return 84;  // Lowercase 'n' (0x54)
    case 'O': return 63;  // 0x3F
    case 'P': return 115; // 0x73
    case 'Q': return 103; // 0x67
    case 'R': return 80;  // Lowercase 'r' (0x50)
    case 'S': return 109; // 0x6D
    case 'T': return 120; // Lowercase 't' (0x78)
    case 'U': return 62;  // 0x3E
    case 'V': return 62;  // Same as 'U' on 7-segment
    case 'W': return 126; // Unofficial map
    case 'X': return 118; // Approximated using 'H'
    case 'Y': return 110; // 0x6E
    case 'Z': return 91;  // 0x5B
    case '0': return 63;  // 0x3F
    case '1': return 6;   // 0x06
    case '2': return 91;  // 0x5B
    case '3': return 79;  // 0x4F
    case '4': return 102; // 0x66
    case '5': return 109; // 0x6D
    case '6': return 125; // 0x7D
    case '7': return 7;   // 0x07
    case '8': return 127; // 0x7F
    case '9': return 111; // 0x6F
    case ' ': return 0;
    default: return 0;    // Blank for unknown characters
  }
}

Future<Uint8List> encodeWordToBrailleImage(String word) async {

  final cleanText = word.toLowerCase();

  // Braille array mapping: [dot1, dot2, dot3, dot4, dot5, dot6]
  final Map<String, List<int>> brailleMap = {
    'a': [1, 0, 0, 0, 0, 0], 'b': [1, 1, 0, 0, 0, 0], 'c': [1, 0, 0, 1, 0, 0],
    'd': [1, 0, 0, 1, 1, 0], 'e': [1, 0, 0, 0, 1, 0], 'f': [1, 1, 0, 1, 0, 0],
    'g': [1, 1, 0, 1, 1, 0], 'h': [1, 1, 0, 0, 1, 0], 'i': [0, 1, 0, 1, 0, 0],
    'j': [0, 1, 0, 1, 1, 0], 'k': [1, 0, 1, 0, 0, 0], 'l': [1, 1, 1, 0, 0, 0],
    'm': [1, 0, 1, 1, 0, 0], 'n': [1, 0, 1, 1, 1, 0], 'o': [1, 0, 1, 0, 1, 0],
    'p': [1, 1, 1, 1, 0, 0], 'q': [1, 1, 1, 1, 1, 0], 'r': [1, 1, 1, 0, 1, 0],
    's': [0, 1, 1, 1, 0, 0], 't': [0, 1, 1, 1, 1, 0], 'u': [1, 0, 1, 0, 0, 1],
    'v': [1, 1, 1, 0, 0, 1], 'w': [0, 1, 0, 1, 1, 1], 'x': [1, 0, 1, 1, 0, 1],
    'y': [1, 0, 1, 1, 1, 1], 'z': [1, 0, 1, 0, 1, 1], ' ': [0, 0, 0, 0, 0, 0],
  };

  const double cellSize = 40.0;
  const double cellMargin = 3.0;
  const int numCols = 6;
  final int numRows = cleanText.isEmpty ? 1 : cleanText.length;

  // Canvas size calculation
  final double totalWidth = (numCols * cellSize) + ((numCols - 1) * cellMargin);
  final double totalHeight = (numRows * cellSize) + ((numRows - 1) * cellMargin);

  final recorder = ui.PictureRecorder();
  final canvas = Canvas(recorder);

  final Paint whitePaint = Paint()..color = Colors.white;
  final Paint greenPaint = Paint()..color = Colors.green;
  final Paint backgroundPaint = Paint()..color = const Color(0xFFE0E0E0); // Light gray gap grid background

  // Draw overall background
  canvas.drawRect(Rect.fromLTWH(0, 0, totalWidth, totalHeight), backgroundPaint);

  // --- Render Row by Row ---
  for (int rowIndex = 0; rowIndex < cleanText.length; rowIndex++) {
    final char = cleanText[rowIndex];
    final dots = brailleMap[char] ?? [0, 0, 0, 0, 0, 0];
    final double y = rowIndex * (cellSize + cellMargin);

    for (int colIndex = 0; colIndex < numCols; colIndex++) {
      final double x = colIndex * (cellSize + cellMargin);
      final bool isGreenDot = dots[colIndex] == 1;

      // Draw cell block
      canvas.drawRect(
        Rect.fromLTWH(x, y, cellSize, cellSize),
        isGreenDot ? greenPaint : whitePaint,
      );
    }
  }

  // Export recording to Image Uint8List
  final picture = recorder.endRecording();
  final ui.Image image = await picture.toImage(
    totalWidth.ceil(),
    totalHeight.ceil(),
  );

  final ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
  if (byteData == null) {
    throw Exception("Failed to render image bytes.");
  }

  return byteData.buffer.asUint8List();
}


Future<Uint8List> encodeWordToSemaphore(String inputWord, {double size = 400.0}) async {
  // 1. Validate length (No longer limited to 7 characters)
  final word = inputWord.trim().toUpperCase();
  if (word.isEmpty) {
    throw ArgumentError('Word must not be empty.');
  }

  // 2. Define Semaphore letter mappings
  const Map<String, List<int>> semaphoreMap = {
    'A': [5, 6], 'B': [5, 7], 'C': [5, 8], 'D': [5, 1],
    'E': [5, 2], 'F': [5, 3], 'G': [5, 4], 'H': [6, 7],
    'I': [6, 8], 'J': [3, 7], 'K': [6, 1], 'L': [6, 2],
    'M': [6, 3], 'N': [6, 4], 'O': [7, 8], 'P': [7, 1],
    'Q': [7, 2], 'R': [7, 3], 'S': [7, 4], 'T': [8, 1],
    'U': [8, 2], 'V': [8, 4], 'W': [2, 3], 'X': [2, 4],
    'Y': [8, 3], 'Z': [4, 7],
  };

  // 3. Set up Canvas & Recorder
  final ui.PictureRecorder recorder = ui.PictureRecorder();
  final Canvas canvas = Canvas(recorder);
  final Offset center = Offset(size / 2, size / 2);
  final double radius = (size / 2) - 40.0;

  // Background
  final Paint bgPaint = Paint()..color = Colors.white;
  canvas.drawRect(Rect.fromLTWH(0, 0, size, size), bgPaint);

  // Main Black Circle Circuit
  final Paint circlePaint = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.stroke
    ..strokeWidth = 4.0;
  canvas.drawCircle(center, radius, circlePaint);

  // Calculate 8 Points on the Circle
  final List<Offset> points = [];
  for (int i = 0; i < 8; i++) {
    final double angle = (-90 + (i * 45)) * (pi / 180);
    final double x = center.dx + radius * cos(angle);
    final double y = center.dy + radius * sin(angle);
    points.add(Offset(x, y));
  }

  // --- Pre-calculate chord frequencies to handle duplicates ---
  final Map<String, int> pairTotals = {};
  for (int i = 0; i < word.length; i++) {
    final String letter = word[i];
    if (!semaphoreMap.containsKey(letter)) continue;
    
    final pair = semaphoreMap[letter]!;
    final pA = min(pair[0], pair[1]);
    final pB = max(pair[0], pair[1]);
    final key = '$pA-$pB';
    pairTotals[key] = (pairTotals[key] ?? 0) + 1;
  }

  final Map<String, int> pairDrawn = {};

  // 4. Draw Chords corresponding to each letter
  for (int i = 0; i < word.length; i++) {
    final String letter = word[i];
    if (!semaphoreMap.containsKey(letter)) continue;

    final pair = semaphoreMap[letter]!;
    final pA = min(pair[0], pair[1]);
    final pB = max(pair[0], pair[1]);
    final key = '$pA-$pB';
    
    final total = pairTotals[key]!;
    final drawn = pairDrawn[key] ?? 0;
    pairDrawn[key] = drawn + 1;

    final Offset p1 = points[pA - 1]; 
    final Offset p2 = points[pB - 1];

    final double dx = p2.dx - p1.dx;
    final double dy = p2.dy - p1.dy;
    final double len = sqrt(dx * dx + dy * dy);
    
    if (len == 0) continue; 

    // Calculate perpendicular normal vector
    final double nx = -dy / len;
    final double ny = dx / len;

    // Space between parallel lines
    const double gap = 6.0; 
    
    // Calculate lateral offset for this specific line
    final double offset = (drawn - (total - 1) / 2) * gap;

    final Offset shiftedP1 = Offset(p1.dx + nx * offset, p1.dy + ny * offset);
    final Offset shiftedP2 = Offset(p2.dx + nx * offset, p2.dy + ny * offset);

    // Get dynamic hue and convert to a vibrant Flutter Color
    final double currentHue = _getRainbowHue(i, word.length);
    final Color currentColor = HSVColor.fromAHSV(1.0, currentHue, 1.0, 1.0).toColor();

    final Paint linePaint = Paint()
      ..color = currentColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(shiftedP1, shiftedP2, linePaint);
  }

  // 5. Draw 8 Point Markers
  final Paint pointPaint = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.fill;
    
  for (final point in points) {
    canvas.drawCircle(point, 8.0, pointPaint);
  }

  // 6. Convert Canvas to PNG Bytes
  final ui.Picture picture = recorder.endRecording();
  final ui.Image image = await picture.toImage(size.toInt(), size.toInt());
  final ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);

  if (byteData == null) {
    throw Exception("Failed to render image bytes.");
  }

  return byteData.buffer.asUint8List();
}

Future<Uint8List> encodeToMayaMorseImage(String word) async {
  // Standard International Morse Code dictionary
  const Map<String, String> morseMap = {
    'a': '.-', 'b': '-...', 'c': '-.-.', 'd': '-..', 'e': '.',
    'f': '..-.', 'g': '--.', 'h': '....', 'i': '..', 'j': '.---',
    'k': '-.-', 'l': '.-..', 'm': '--', 'n': '-.', 'o': '---',
    'p': '.--.', 'q': '--.-', 'r': '.-.', 's': '...', 't': '-',
    'u': '..-', 'v': '...-', 'w': '.--', 'x': '-..-', 'y': '-.--',
    'z': '--..'
  };

  List<String> layout = [];
  String cleanWord = word.toLowerCase().replaceAll(RegExp(r'[^a-z]'), '');

  // 1. Parse the word into our custom layout structure
  for (int i = 0; i < cleanWord.length; i++) {
    String char = cleanWord[i];
    String? morse = morseMap[char];
    if (morse == null) continue;

    String currentDots = "";

    for (int j = 0; j < morse.length; j++) {
      if (morse[j] == '.') {
        currentDots += "."; // Group consecutive dots
      } else if (morse[j] == '-') {
        if (currentDots.isNotEmpty) {
          layout.add(currentDots);
          currentDots = "";
        }
        layout.add("-"); // Dashes always get their own line
      }
    }
    
    // Catch any remaining dots at the end of the letter
    if (currentDots.isNotEmpty) {
      layout.add(currentDots);
    }

    // Add the Maya Zero separator '0' between letters
    if (i < cleanWord.length - 1) {
      layout.add("0");
    }
  }

  // 2. Setup the Canvas for drawing
  const double itemHeight = 40.0;
  const double width = 150.0;
  final double height = (layout.length * itemHeight) + 40.0; // + padding
  final double centerX = width / 2;

  final ui.PictureRecorder recorder = ui.PictureRecorder();
  final ui.Canvas canvas = ui.Canvas(recorder);

  // Paints
  final ui.Paint bgPaint = ui.Paint()..color = const ui.Color(0xFFFFFFFF); // White background
  final ui.Paint fillPaint = ui.Paint()
    ..color = const ui.Color(0xFF000000)
    ..style = ui.PaintingStyle.fill;
  final ui.Paint strokePaint = ui.Paint()
    ..color = const ui.Color(0xFF000000)
    ..style = ui.PaintingStyle.stroke
    ..strokeWidth = 3.0;

  // Draw background
  canvas.drawRect(ui.Rect.fromLTWH(0, 0, width, height), bgPaint);

  // 3. Draw the layout elements vertically
  double currentY = 20.0 + (itemHeight / 2);

  for (String item in layout) {
    if (item == "-") {
      // Draw a Dash (a horizontal rectangle)
      canvas.drawRect(
        ui.Rect.fromCenter(
          center: ui.Offset(centerX, currentY), 
          width: 50.0, 
          height: 10.0
        ),
        fillPaint,
      );
    } else if (item == "0") {
      // Draw the Maya Zero (stylized shell: an oval with horizontal inner lines)
      canvas.drawOval(
        ui.Rect.fromCenter(
          center: ui.Offset(centerX, currentY), 
          width: 45.0, 
          height: 25.0
        ),
        strokePaint,
      );
      // Inner shell details
      canvas.drawLine(ui.Offset(centerX - 15, currentY - 5), ui.Offset(centerX + 15, currentY - 5), strokePaint);
      canvas.drawLine(ui.Offset(centerX - 15, currentY + 5), ui.Offset(centerX + 15, currentY + 5), strokePaint);
    } else {
      // Draw grouped Dots
      int dotCount = item.length;
      const double dotSpacing = 20.0;
      const double dotRadius = 7.0;
      
      // Calculate starting X so the group of dots remains perfectly centered
      double startX = centerX - ((dotCount - 1) * dotSpacing / 2);
      
      for (int d = 0; d < dotCount; d++) {
        canvas.drawCircle(ui.Offset(startX + (d * dotSpacing), currentY), dotRadius, fillPaint);
      }
    }
    
    currentY += itemHeight; // Move down for the next element
  }

  // 4. Render to Image and return as Uint8List
  final ui.Picture picture = recorder.endRecording();
  final ui.Image img = await picture.toImage(width.toInt(), height.toInt());
  final ByteData? byteData = await img.toByteData(format: ui.ImageByteFormat.png);
  
  return byteData!.buffer.asUint8List();
}

}
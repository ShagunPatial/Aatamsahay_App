import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

var dis_index = {
  '(vertigo) Paroymsal  Positional Vertigo': 10,
  'AIDS': 24,
  'Acne': 12,
  'Alcoholic hepatitis': 32,
  'Allergy': 3,
  'Arthritis': 39,
  'Bronchial Asthma': 31,
  'Cervical spondylosis': 20,
  'Chicken pox': 19,
  'Chronic cholestasis': 7,
  'Common Cold': 18,
  'Dengue': 35,
  'Diabetes': 13,
  'Dimorphic hemmorhoids(piles)': 17,
  'Drug Reaction': 1,
  'Fungal infection': 28,
  'GERD': 6,
  'Gastroenteritis': 40,
  'Heart attack': 37,
  'Hepatitis B': 27,
  'Hepatitis C': 29,
  'Hepatitis D': 36,
  'Hepatitis E': 34,
  'Hypertension': 15,
  'Hyperthyroidism': 21,
  'Hypoglycemia': 11,
  'Hypothyroidism': 4,
  'Impetigo': 14,
  'Jaundice': 33,
  'Malaria': 2,
  'Migraine': 30,
  'Osteoarthristis': 9,
  'Paralysis (brain hemorrhage)': 25,
  'Peptic ulcer diseae': 16,
  'Pneumonia': 38,
  'Psoriasis': 5,
  'Tuberculosis': 41,
  'Typhoid': 26,
  'Urinary tract infection': 22,
  'Varicose veins': 23,
  'hepatitis A': 8
};

var dic_yog = {
  1: ['Vrksasana', 'Matsyasana'],
  2: ['nan', 'nan'],
  3: ['Pavanamuktasana', 'Setu_Bandhasana'],
  4: ['Setu_Bandhasana', 'nan'],
  5: ['Deep_Breathing', 'Balasana'], //1
  6: ['Paschimottanasana', 'Supta_baddha_konasana'],
  7: ['kapalbhati', 'Bhujangasana'], //1
  8: ['kapalbhati', 'Bhujangasana'], //1
  9: ['vinayasa_Asan', 'Ashtanga_Yoga'], // 1 & 2
  10: ['walking', 'Biking'], // 1 & 2
  11: ['Viparita_karani', 'Dhanurasana'],
  12: ['pranayam', 'Matsyasana'], //1
  13: ['Viparita_karani', 'Dhanurasana'],
  14: ['nan', 'nan'],
  15: ['Uttanasana', 'Viparita_karani'],
  16: ['pranayam', 'nan'],
  17: ['Janu_sirsasana', 'Salamba_sarvangasana'],
  18: ['pranayam', 'Uttanasana'], //1
  19: ['nan', 'nan'],
  20: ['Matsyasana', 'Bhujangasana'],
  21: ['Bhujangasana', 'Matsyasana'],
  22: ['nan', 'nan'], //1 & 2
  23: ['Tadasana', 'Navasana'],
  24: ['Viparita_karani', 'Setu_Bandhasana'],
  25: ['Uttanapadasana', 'Vajrasana'], //1
  26: ['kapalbhati', 'Anulom_Vilom_Pranayam'], // 1 & 2
  27: ['Ardha_Matsyendrasana', 'Salambhasana'],
  28: ['Tadasana', 'Uttanasana'],
  29: ['Ardha_Matsyendrasana', 'Salambhasana'],
  30: ['Adho_mukha_svanasana', 'Prasarita_paddotanasana'],
  31: ['Sukhasana', 'Bhujangasana'],
  32: ['Salambhasana', 'Navasana'], //2
  33: ['kapalbhati', 'Anulom_Vilom_Pranayam'], //1 & 2
  34: ['Ardha_Matsyendrasana', 'Salambhasana'],
  35: ['Adho_mukha_svanasana', 'kapalbhati'],
  36: ['Ardha_Matsyendrasana', 'Salambhasana'],
  37: ['Trikonasana', 'Paschimottanasana'],
  38: ['Padmasana', 'Sukhasan'],
  39: ['Tadasana', 'chakrasana'], //2
  40: ['Balasana', 'Paschimottanasana'],
  41: ['Bhujangasana', 'Tadasana']
};

var png_lis = [
  'Deep_Breathing',
  'kapalbhati',
  'vinayasa',
  'Biking',
  'kapalbhati',
  'Anulom_Vilom_Pranayam',
  'Navasana'
];

int find_index(String s) {
  return dis_index[s];
}

List get_list_of_yoga(int num) {
  List ans = dic_yog[num];
  return ans;
}

class yoga_asanas extends StatefulWidget {
  String dise;
  yoga_asanas({Key key, @required this.dise}) : super(key: key);

  @override
  _yoga_asanasState createState() => _yoga_asanasState();
}

class _yoga_asanasState extends State<yoga_asanas> {
  @override
  Widget build(BuildContext context) {
    int index = find_index(widget.dise);
    var list_of_yoga = get_list_of_yoga(index);

    return SafeArea(
        child: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.fromLTRB(15, 25, 0, 10),
                  child: Text(
                    "Yoga Asanas that can be done",
                    style: GoogleFonts.lobster(
                        fontSize: 40,
                        color: Colors.red[300],
                        fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                height: 20,
              ),
              for (int ind = 0; ind < 2; ind++)
                if (list_of_yoga[ind] != 'nan') get_png(list_of_yoga[ind]),
              if (list_of_yoga[0] == 'nan' && list_of_yoga[1] == 'nan')
                not_found_ye(),
            ],
          ),
        ),
      ),
    ));
  }
}

Widget get_png(String name) {
  return Container(
    padding: const EdgeInsets.fromLTRB(0, 10, 0, 25),
    color: Colors.white12,
    //
    width: 350,
    child: Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
            depth: 10,
            lightSource: LightSource.topLeft,
            shadowDarkColor: Colors.green,
            shadowLightColor: Colors.red,
            color: Colors.white),
        child: Column(
          children: <Widget>[
            png_lis.contains(name)
                ? Image.asset('images/Yoga_Asnas/${name}.png')
                : Image.asset('images/Yoga_Asnas/${name}.jpg'),
            Text(
              "${name.toUpperCase()}",
              style: GoogleFonts.ubuntuCondensed(
                  fontSize: 20,
                  color: Colors.teal,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            )
          ],
        )),
  );
}

Widget not_found_ye() {
  return Text(
    "Yoga Asans & Exercises not available",
    textAlign: TextAlign.center,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 50,
        shadows: [
          Shadow(offset: Offset(3, 3), color: Colors.black, blurRadius: 10),
          Shadow(
              offset: Offset(-3, -3),
              color: Colors.white.withOpacity(0.0),
              blurRadius: 10)
        ],
        color: Colors.grey.shade300),
  );
}

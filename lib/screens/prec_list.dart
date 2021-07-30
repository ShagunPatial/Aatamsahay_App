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

var dic_prec = {
  1: [
    'Stop Irritation',
    'Consult Nearest Hospital',
    'Stop Taking Drug',
    'Follow Up'
  ],
  2: [
    'Consult Nearest Hospital',
    'Avoid Oily Food',
    'Avoid Non Veg Food',
    'Keep Mosquitos Out'
  ],
  3: [
    'Apply Calamine',
    'Cover Area With Bandage',
    'Use Ice To Compress Itching'
  ],
  4: ['Reduce Stress', 'Exercise', 'Eat Healthy', 'Get Proper Sleep'],
  5: [
    'Wash Hands With Warm Soapy Water',
    'Stop Bleeding Using Pressure',
    'Consult Doctor',
    'Salt Baths'
  ],
  6: [
    'Avoid Fatty Spicy Food',
    'Avoid Lying Down After Eating',
    'Maintain Healthy Weight',
    'Exercise'
  ],
  7: ['Cold Baths', 'Anti Itch Medicine', 'Consult Doctor', 'Eat Healthy'],
  8: [
    'Consult Nearest Hospital',
    'Wash Hands Through',
    'Avoid Fatty Spicy Food',
    'Medication'
  ],
  9: ['Acetaminophen', 'Consult Nearest Hospital', 'Follow Up', 'Salt Baths'],
  10: [
    'Lie Down',
    'Avoid Sudden Change In Body',
    'Avoid Abrupt Head Movment',
    'Relax'
  ],
  11: [
    'Lie Down On Side',
    'Check In Pulse',
    'Drink Sugary Drinks',
    'Consult Doctor'
  ],
  12: [
    'Bath Twice',
    'Avoid Fatty Spicy Food',
    'Drink Plenty Of Water',
    'Avoid Too Many Products'
  ],
  13: ['Have Balanced Diet', 'Exercise', 'Consult Doctor', 'Follow Up'],
  14: [
    'Soak Affected Area In Warm Water',
    'Use Antibiotics',
    'Remove Scabs With Wet Compressed Cloth',
    'Consult Doctor'
  ],
  15: ['Meditation', 'Salt Baths', 'Reduce Stress', 'Get Proper Sleep'],
  16: [
    'Avoid Fatty Spicy Food',
    'Consume Probiotic Food',
    'Eliminate Milk',
    'Limit Alcohol'
  ],
  17: [
    'Avoid Fatty Spicy Food',
    'Consume Witch Hazel',
    'Warm Bath With Epsom Salt',
    'Consume Alovera Juice'
  ],
  18: [
    'Drink Vitamin C Rich Drinks',
    'Take Vapour',
    'Avoid Cold Food',
    'Keep Fever In Check'
  ],
  19: [
    'Use Neem In Bathing',
    'Consume Neem Leaves',
    'Take Vaccine',
    'Avoid Public Places'
  ],
  20: [
    'Use Heating Pad Or Cold Pack',
    'Exercise',
    'Take Otc Pain Reliver',
    'Consult Doctor'
  ],
  21: [
    'Eat Healthy',
    'Massage',
    'Use Lemon Balm',
    'Take Radioactive Iodine Treatment'
  ],
  22: [
    'Drink Plenty Of Water',
    'Increase Vitamin C Intake',
    'Drink Cranberry Juice',
    'Take Probiotics'
  ],
  23: [
    'Lie Down Flat And Raise The Leg High',
    'Use Oinments',
    'Use Vein Compression',
    'Dont Stand Still For Long'
  ],
  24: [
    'Avoid Open Cuts',
    'Wear Ppe If Possible',
    'Consult Doctor',
    'Follow Up'
  ],
  25: ['Massage', 'Eat Healthy', 'Exercise', 'Consult Doctor'],
  26: [
    'Eat High Calorie Vegitables',
    'Antiboitic Therapy',
    'Consult Doctor',
    'Medication'
  ],
  27: ['Consult Nearest Hospital', 'Vaccination', 'Eat Healthy', 'Medication'],
  28: [
    'Bath Twice',
    'Use Detol Or Neem In Bathing Water',
    'Keep Infected Area Dry',
    'Use Clean Cloths'
  ],
  29: ['Consult Nearest Hospital', 'Vaccination', 'Eat Healthy', 'Medication'],
  30: [
    'Meditation',
    'Reduce Stress',
    'Use Poloroid Glasses In Sun',
    'Consult Doctor'
  ],
  31: [
    'Switch To Loose Cloothing',
    'Take Deep Breaths',
    'Get Away From Trigger',
    'Seek Help'
  ],
  32: ['Stop Alcohol Consumption', 'Consult Doctor', 'Medication', 'Follow Up'],
  33: [
    'Drink Plenty Of Water',
    'Consume Milk Thistle',
    'Eat Fruits And High Fiberous Food',
    'Medication'
  ],
  34: ['Stop Alcohol Consumption', 'Rest', 'Consult Doctor', 'Medication'],
  35: [
    'Drink Papaya Leaf Juice',
    'Avoid Fatty Spicy Food',
    'Keep Mosquitos Away',
    'Keep Hydrated'
  ],
  36: ['Consult Doctor', 'Medication', 'Eat Healthy', 'Follow Up'],
  37: ['Call Ambulance', 'Chew Or Swallow Asprin', 'Keep Calm'],
  38: ['Consult Doctor', 'Medication', 'Rest', 'Follow Up'],
  39: ['Exercise', 'Use Hot And Cold Therapy', 'Try Acupuncture', 'Massage'],
  40: [
    'Stop Eating Solid Food For While',
    'Try Taking Small Sips Of Water',
    'Rest',
    'Ease Back Into Eating'
  ],
  41: ['Cover Mouth', 'Consult Doctor', 'Medication', 'Rest']
};

var allo_path = {
  '(vertigo) Paroymsal  Positional Vertigo': ['Dramamine II', 'Meclizine'],
  'AIDS': ['Abacavir', 'zidovudine'],
  'Acne': ['minocycline', 'erythromycin'],
  'Alcoholic hepatitis': ['oxandrin', 'propylthiouracil'],
  'Allergy': ['Cetirizine ', 'Clemastine'],
  'Arthritis': ['leflunomide', 'tofacitinib'],
  'Bronchial Asthma': ['Dulera', 'Atrovent'],
  'Cervical spondylosis': ['Ibuprofen', 'Aleve'],
  'Chicken pox': ['Zovirax', 'Sitavig'],
  'Chronic cholestasis': ['Ursodiol', 'nan'],
  'Common Cold': ['diphenhydramine', 'naproxen'],
  'Dengue': ['acetaminophen', 'nan'],
  'Diabetes': ['Dapagliflozin', 'Glipizide'],
  'Dimorphic hemmorhoids(piles)': ['Hydrocortisone', 'Benzocaine'],
  'Drug Reaction': ['Penicillin', 'Benadryl'],
  'Fungal infection': ['miconazole', 'fluconazole.'],
  'GERD': ['Erythrocin', 'Antacids'],
  'Gastroenteritis': ['Vibramycin', 'Zofran'],
  'Heart attack': ['Statins', 'Warfarin'],
  'Hepatitis B': ['Baraclude', 'Viread'],
  'Hepatitis C': ['Zepatier', 'paritaprevir'],
  'Hepatitis D': ['interferon alfa', 'nan'],
  'Hepatitis E': ['Ribavirin', 'nan'],
  'Hypertension': ['Bumetanide', 'Furosemide'],
  'Hyperthyroidism': ['Tapazole', 'propylthiouracil'],
  'Hypoglycemia': ['glucagon', 'diazoxide'],
  'Hypothyroidism': ['Levo-T', ' Synthroid'],
  'Impetigo': ['Dicloxacillin', 'Amoxicillin'],
  'Jaundice': ['Chlorpromazine', 'Fusidic acid'],
  'Malaria': ['Chloroquine', 'Mefloquine'],
  'Migraine': ['acetaminophen', 'naproxen'],
  'Osteoarthristis': ['diclofenac', 'Motrin'],
  'Paralysis (brain hemorrhage)': ['mannitol', 'Ischaemic'],
  'Peptic ulcer diseae': ['omeprazole', 'rabeprazole'],
  'Pneumonia': ['Amoxil', 'Vancomycin'],
  'Psoriasis': ['Humira', 'Cyltezo'],
  'Tuberculosis': ['Rifampin', 'Pyrazinamide'],
  'Typhoid': ['Ciprofloxacin', 'Azithromycin'],
  'Urinary tract infection': ['Fosfomycin', 'Nitrofurantoin'],
  'Varicose veins': ['Asclera', 'Sotradecol'],
  'hepatitis A': ['Hepatitis A-Vaccine', 'nan']
};

// takes dis name and return its index
int find_index(String s) {
  return dis_index[s];
}

// takes dis name and return its precautions length
int findpreclen(String s) {
  int len;
  len = dic_prec[dis_index[s]].length;
  return len;
}

class prec_list extends StatefulWidget {
  String disease;
  prec_list({Key key, @required this.disease}) : super(key: key);

  @override
  _prec_listState createState() => _prec_listState();
}

class _prec_listState extends State<prec_list> {
  @override
  Widget build(BuildContext context) {
    int prec_len = findpreclen(widget.disease);
    int index_of_dis = find_index(widget.disease);
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                    child: Column(children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.fromLTRB(15, 25, 0, 10),
                          child: Text(
                            "Common Allopathic Medication's for this disease",
                            style: GoogleFonts.lobster(
                                fontSize: 40,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      for (int ind = 0; ind < 2; ind++)
                        allo_path[widget.disease][ind] != 'nan'
                            ? get_allo(allo_path[widget.disease][ind])
                            : null,
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                          padding: const EdgeInsets.fromLTRB(15, 25, 0, 10),
                          child: Text(
                            "Precautions needs to be taken",
                            style: GoogleFonts.lobster(
                                fontSize: 40,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      for (int ind = 0; ind < prec_len; ind++)
                        get_prec(ind, index_of_dis)
                    ],
                  ),
                ])))));
  }
}

// for allopathic medicines
Widget get_allo(String medic) {
  return Container(
    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
    decoration: BoxDecoration(
        image: DecorationImage(
      image: AssetImage("images/allopathic_image.jpg"),
      fit: BoxFit.cover,
    )),
    height: 100,
    width: 400,
    child: Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
          depth: 10,
          lightSource: LightSource.topRight,
          shadowDarkColor: Colors.green,
          color: Colors.white),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.circle_notifications,
            size: 35,
            color: Colors.green,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "${medic}",
            style: GoogleFonts.ubuntuCondensed(
                fontSize: 20, color: Colors.teal, fontWeight: FontWeight.bold),
          ),
          //Image(image:"images/allopathic_image.jpg")
        ],
      ),
    ),
  );
}

// for precautions
Widget get_prec(int ind, int index) {
  return Container(
    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
    color: Colors.white12,
    height: 100,
    width: 400,
    child: Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
          depth: 10,
          lightSource: LightSource.topRight,
          shadowDarkColor: Colors.green,
          color: Colors.white),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.medical_services,
            size: 35,
            color: Colors.green,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "${dic_prec[index][ind]}",
            style: GoogleFonts.ubuntuCondensed(
                fontSize: 20, color: Colors.teal, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
  );
}

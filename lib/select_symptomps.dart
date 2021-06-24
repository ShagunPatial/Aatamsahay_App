import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:dropdownfield/dropdownfield.dart';
import './processing.dart';
import 'package:google_fonts/google_fonts.dart';

class select_symptomps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _symptompsState();
  }
}

class _symptompsState extends State<select_symptomps> {
  String Symptomp_1, Symptomp_2;
  String Symptomp_3 = 'None';
  String Symptomp_4 = 'None';
  String Symptomp_5 = 'None';
  List<dynamic> _symp_list;

  List<String> symptomps = [
    'None',
    'itching',
    'skin_rash',
    'nodal_skin_eruptions',
    'continuous_sneezing',
    'shivering',
    'chills',
    'joint_pain',
    'stomach_pain',
    'acidity',
    'ulcers_on_tongue',
    'muscle_wasting',
    'vomiting',
    'burning_micturition',
    'spotting_urination',
    'fatigue',
    'weight_gain',
    'anxiety',
    'cold_hands_and_feets',
    'mood_swings',
    'weight_loss',
    'restlessness',
    'lethargy',
    'patches_in_throat',
    'irregular_sugar_level',
    'cough',
    'high_fever',
    'sunken_eyes',
    'breathlessness',
    'sweating',
    'dehydration',
    'indigestion',
    'headache',
    'yellowish_skin',
    'dark_urine',
    'nausea',
    'loss_of_appetite',
    'pain_behind_the_eyes',
    'back_pain',
    'constipation',
    'abdominal_pain',
    'diarrhoea',
    'mild_fever',
    'yellow_urine',
    'yellowing_of_eyes',
    'acute_liver_failure',
    'swelling_of_stomach',
    'swelled_lymph_nodes',
    'malaise',
    'blurred_and_distorted_vision',
    'phlegm',
    'throat_irritation',
    'redness_of_eyes',
    'sinus_pressure',
    'runny_nose',
    'congestion',
    'chest_pain',
    'weakness_in_limbs',
    'fast_heart_rate',
    'pain_during_bowel_movements',
    'pain_in_anal_region',
    'bloody_stool',
    'irritation_in_anus',
    'neck_pain',
    'dizziness',
    'cramps',
    'bruising',
    'obesity',
    'swollen_legs',
    'swollen_blood_vessels',
    'puffy_face_and_eyes',
    'enlarged_thyroid',
    'brittle_nails',
    'swollen_extremeties',
    'excessive_hunger',
    'extra_marital_contacts',
    'drying_and_tingling_lips',
    'slurred_speech',
    'knee_pain',
    'hip_joint_pain',
    'muscle_weakness',
    'stiff_neck',
    'swelling_joints',
    'movement_stiffness',
    'spinning_movements',
    'loss_of_balance',
    'unsteadiness',
    'weakness_of_one_body_side',
    'loss_of_smell',
    'bladder_discomfort',
    'foul_smell_ofurine',
    'continuous_feel_of_urine',
    'passage_of_gases',
    'internal_itching',
    'toxic_look_(typhos)',
    'depression',
    'irritability',
    'muscle_pain',
    'altered_sensorium',
    'red_spots_over_body',
    'belly_pain',
    'abnormal_menstruation',
    'dischromic_patches',
    'watering_from_eyes',
    'increased_appetite',
    'polyuria',
    'family_history',
    'mucoid_sputum',
    'rusty_sputum',
    'lack_of_concentration',
    'visual_disturbances',
    'receiving_blood_transfusion',
    'receiving_unsterile_injections',
    'coma',
    'stomach_bleeding',
    'distention_of_abdomen',
    'history_of_alcohol_consumption',
    'fluid_overload',
    'blood_in_sputum',
    'prominent_veins_on_calf',
    'palpitations',
    'painful_walking',
    'pus_filled_pimples',
    'blackheads',
    'scurring',
    'skin_peeling',
    'silver_like_dusting',
    'small_dents_in_nails',
    'inflammatory_nails',
    'blister',
    'red_sore_around_nose',
    'yellow_crust_ooze',
    'prognosis'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                title: Text("Select Symptoms"), backgroundColor: Colors.teal),
            body: SingleChildScrollView(
              child: Container(
                  color: Colors.white10,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        //color: Colors.te,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(60.0)),
                            gradient: LinearGradient(colors: <Color>[
                              Colors.teal[800],
                              Colors.teal[500],
                              Colors.teal[800],
                            ])),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        height: 50,
                        width: 400,
                        child: Text(" Select Symptoms that your body shows",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                shadows: [
                                  Shadow(
                                      offset: Offset(-0.5, -0.5),
                                      color: Colors.grey,
                                      blurRadius: 3),
                                  Shadow(
                                      offset: Offset(2, 2),
                                      color: Colors.black,
                                      blurRadius: 3)
                                ],
                                color: Colors.grey.shade300)),
                      ),
                      SizedBox(height: 50),
                      Container(
                        // padding: const EdgeInsets.all(),
                        color: Colors.white12,
                        // height: 100,
                        width: 350,
                        child: Column(children: <Widget>[
                          Neumorphic(
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(20)),
                                  depth: 10,
                                  lightSource: LightSource.topRight,
                                  shadowDarkColor: Colors.teal,
                                  color: Colors.white),
                              child: DropDownField(
                                onValueChanged: (dynamic value) {
                                  Symptomp_1 = value;
                                },
                                value: Symptomp_1,
                                required: false,
                                icon: Icon(
                                  IconData(0xe41c, fontFamily: 'MaterialIcons'),
                                  color: Colors.teal,
                                ),
                                hintText: 'Choose a Symptom',
                                labelText: 'SYMPTOM 1 *',
                                items: symptomps,
                              ))
                        ]),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        // padding: const EdgeInsets.all(),
                        color: Colors.white12,
                        // height: 100,
                        width: 350,
                        child: Column(children: <Widget>[
                          Neumorphic(
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(20)),
                                  depth: 10,
                                  lightSource: LightSource.topRight,
                                  shadowDarkColor: Colors.teal,
                                  color: Colors.white),
                              child: DropDownField(
                                onValueChanged: (dynamic value) {
                                  Symptomp_2 = value;
                                },
                                value: Symptomp_2,
                                required: false,
                                icon: Icon(
                                  IconData(0xe41c, fontFamily: 'MaterialIcons'),
                                  color: Colors.teal,
                                ),
                                hintText: 'Choose a Symptom',
                                labelText: 'SYMPTOM 2 *',
                                items: symptomps,
                              ))
                        ]),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        // padding: const EdgeInsets.all(),
                        color: Colors.white12,
                        // height: 100,
                        width: 350,
                        child: Column(children: <Widget>[
                          Neumorphic(
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(20)),
                                  depth: 10,
                                  lightSource: LightSource.topRight,
                                  shadowDarkColor: Colors.teal,
                                  color: Colors.white),
                              child: DropDownField(
                                onValueChanged: (dynamic value) {
                                  Symptomp_3 = value;
                                },
                                value: Symptomp_3,
                                required: false,
                                strict: true,
                                icon: Icon(
                                  IconData(0xe41c, fontFamily: 'MaterialIcons'),
                                  color: Colors.teal,
                                ),
                                hintText: 'Choose a Symptom',
                                labelText: 'SYMPTOM 3',
                                items: symptomps,
                              ))
                        ]),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        // padding: const EdgeInsets.all(),
                        color: Colors.white12,
                        // height: 100,
                        width: 350,
                        child: Column(children: <Widget>[
                          Neumorphic(
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(20)),
                                  depth: 10,
                                  lightSource: LightSource.topRight,
                                  shadowDarkColor: Colors.teal,
                                  color: Colors.white),
                              child: DropDownField(
                                onValueChanged: (dynamic value) {
                                  Symptomp_4 = value;
                                },
                                value: Symptomp_4,
                                required: false,
                                icon: Icon(
                                  IconData(0xe41c, fontFamily: 'MaterialIcons'),
                                  color: Colors.teal,
                                ),
                                hintText: 'Choose a Symptom',
                                labelText: 'SYMPTOM 4',
                                items: symptomps,
                              ))
                        ]),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        // padding: const EdgeInsets.all(),
                        color: Colors.white12,
                        // height: 100,
                        width: 350,
                        child: Column(children: <Widget>[
                          Neumorphic(
                              style: NeumorphicStyle(
                                  shape: NeumorphicShape.concave,
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(20)),
                                  depth: 10,
                                  lightSource: LightSource.topRight,
                                  shadowDarkColor: Colors.teal,
                                  color: Colors.white),
                              child: DropDownField(
                                onValueChanged: (dynamic value) {
                                  setState(Symptomp_5 = value);
                                },
                                value: Symptomp_5,
                                required: false,
                                icon: Icon(
                                  IconData(0xe41c, fontFamily: 'MaterialIcons'),
                                  color: Colors.teal,
                                ),
                                hintText: 'Choose a Symptom',
                                labelText: 'SYMPTOM 5',
                                items: symptomps,
                              ))
                        ]),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                          " Note that ,(*) are mandatory means 'symptom 1' and 'symptom 2' can't be null",
                          style: TextStyle(
                              color: Colors.teal,
                              fontStyle: FontStyle.italic,
                              fontSize: 20)),
                      SizedBox(height: 100),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.teal, // background
                            onPrimary: Colors.white),
                        onPressed: () {
                          print(
                              " selected symptomps are ${Symptomp_1} ,${Symptomp_2} ,${Symptomp_3}, ${Symptomp_4},${Symptomp_5}");
                          if (Symptomp_1 == null || Symptomp_2 == null) {
                            return sym_not_null(context);
                          }

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return (processing(
                                symp1: Symptomp_1,
                                symp2: Symptomp_2,
                                symp3: Symptomp_3,
                                symp4: Symptomp_4,
                                symp5: Symptomp_5));
                          }));
                        },
                        child: Container(

                            // height: double.maxFinite,
                            height: 50,
                            width: 175,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "    Start Predicting      ",
                                  style: TextStyle(fontSize: 15),
                                ),
                                Icon(Icons.thumb_up)
                              ],
                            )),
                      ),
                      SizedBox(height: 50)
                    ],
                  )),
            )));
  }
}

bool NoRepetition(symplist) {
  int len = symplist.length;

  for (int i = 0; i < len; i++) {
    if (symplist == "None")
      continue;
    else {
      for (int j = i + 1; j < len; j++) {
        if (symplist[i] == symplist[j]) {
          return false;
        }
      }
    }
  }
  return true;
}

void same_symp(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Symptoms cannot be same"),
    content: Text("Make sure select different symptoms"),
  );

  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}

void sym_not_null(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Symptoms cannot be null"),
    content: Text(
        "Make sure select at least two symptoms\n i.e. first and second symtomps cannot be null"),
  );

  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}

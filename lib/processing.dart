import 'package:atamsahay/precaution.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:atamsahay/api_call/dis_pred.dart';
import 'package:http/http.dart' as http;
import 'package:connectivity/connectivity.dart';
import 'dart:convert';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

var dis_desc = {
  '(vertigo) Paroymsal  Positional Vertigo':
      "Benign paroxysmal positional vertigo (BPPV) is one of the most common causes of vertigo — the sudden sensation that you're spinning or that the inside of your head is spinning. Benign paroxysmal positional vertigo causes brief episodes of mild to intense dizziness.",
  'AIDS':
      "Acquired immunodeficiency syndrome (AIDS) is a chronic, potentially life-threatening condition caused by the human immunodeficiency virus (HIV). By damaging your immune system, HIV interferes with your body's ability to fight infection and disease.",
  'Acne':
      'Acne vulgaris is the formation of comedones, papules, pustules, nodules, and/or cysts as a result of obstruction and inflammation of pilosebaceous units (hair follicles and their accompanying sebaceous gland). Acne develops on the face and upper trunk. It most often affects adolescents.',
  'Alcoholic hepatitis':
      "Alcoholic hepatitis is a diseased, inflammatory condition of the liver caused by heavy alcohol consumption over an extended period of time. It's also aggravated by binge drinking and ongoing alcohol use. If you develop this condition, you must stop drinking alcohol",
  'Allergy':
      "An allergy is an immune system response to a foreign substance that's not typically harmful to your body.They can include certain foods, pollen, or pet dander. Your immune system's job is to keep you healthy by fighting harmful pathogens.",
  'Arthritis':
      'Arthritis is the swelling and tenderness of one or more of your joints. The main symptoms of arthritis are joint pain and stiffness, which typically worsen with age. The most common types of arthritis are osteoarthritis and rheumatoid arthritis.',
  'Bronchial Asthma':
      'Bronchial asthma is a medical condition which causes the airway path of the lungs to swell and narrow. Due to this swelling, the air path produces excess mucus making it hard to breathe, which results in coughing, short breath, and wheezing. The disease is chronic and interferes with daily working.',
  'Cervical spondylosis':
      'Cervical spondylosis is a general term for age-related wear and tear affecting the spinal disks in your neck. As the disks dehydrate and shrink, signs of osteoarthritis develop, including bony projections along the edges of bones (bone spurs).',
  'Chicken pox':
      'Chickenpox is a highly contagious disease caused by the varicella-zoster virus (VZV). It can cause an itchy, blister-like rash. The rash first appears on the chest, back, and face, and then spreads over the entire body, causing between 250 and 500 itchy blisters.',
  'Chronic cholestasis':
      'Chronic cholestatic diseases, whether occurring in infancy, childhood or adulthood, are characterized by defective bile acid transport from the liver to the intestine, which is caused by primary damage to the biliary epithelium in most cases',
  'Common Cold':
      "The common cold is a viral infection of your nose and throat (upper respiratory tract). It's usually harmless, although it might not feel that way. Many types of viruses can cause a common cold.",
  'Dengue':
      'an acute infectious disease caused by a flavivirus (species Dengue virus of the genus Flavivirus), transmitted by aedes mosquitoes, and characterized by headache, severe joint pain, and a rash. — called also breakbone fever, dengue fever.',
  'Diabetes':
      'Diabetes is a disease that occurs when your blood glucose, also called blood sugar, is too high. Blood glucose is your main source of energy and comes from the food you eat. Insulin, a hormone made by the pancreas, helps glucose from food get into your cells to be used for energy.',
  'Dimorphic hemorrhoids(piles)':
      'Hemorrhoids, also spelled haemorrhoids, are vascular structures in the anal canal. In their ... Other names, Haemorrhoids, piles, hemorrhoidal disease .',
  'Drug Reaction':
      'An adverse drug reaction (ADR) is an injury caused by taking medication. ADRs may occur following a single dose or prolonged administration of a drug or result from the combination of two or more drugs.',
  'Fungal infection':
      'In humans, fungal infections occur when an invading fungus takes over an area of the body and is too much for the immune system to handle. Fungi can live in the air, soil, water, and plants. There are also some fungi that live naturally in the human body. Like many microbes, there are helpful fungi and harmful fungi.',
  'GERD':
      'Gastroesophageal reflux disease, or GERD, is a digestive disorder that affects the lower esophageal sphincter (LES), the ring of muscle between the esophagus and stomach. Many people, including pregnant women, suffer from heartburn or acid indigestion caused by GERD.',
  'Gastroenteritis':
      'Gastroenteritis is an inflammation of the digestive tract, particularly the stomach, and large and small intestines. Viral and bacterial gastroenteritis are intestinal infections associated with symptoms of diarrhea , abdominal cramps, nausea , and vomiting .',
  'Heart attack':
      'The death of heart muscle due to the loss of blood supply. The loss of blood supply is usually caused by a complete blockage of a coronary artery, one of the arteries that supplies blood to the heart muscle.',
  'Hepatitis B':
      "Hepatitis B is an infection of your liver. It can cause scarring of the organ, liver failure, and cancer. It can be fatal if it isn't treated. It's spread when people come in contact with the blood, open sores, or body fluids of someone who has the hepatitis B virus.",
  'Hepatitis C':
      'Inflammation of the liver due to the hepatitis C virus (HCV), which is usually spread via blood transfusion (rare), hemodialysis, and needle sticks. The damage hepatitis C does to the liver can lead to cirrhosis and its complications as well as cancer.',
  'Hepatitis D':
      'Hepatitis D, also known as the hepatitis delta virus, is an infection that causes the liver to become inflamed. This swelling can impair liver function and cause long-term liver problems, including liver scarring and cancer. The condition is caused by the hepatitis D virus (HDV).',
  'Hepatitis E':
      'A rare form of liver inflammation caused by infection with the hepatitis E virus (HEV). It is transmitted via food or drink handled by an infected person or through infected water supplies in areas where fecal matter may get into the water. Hepatitis E does not cause chronic liver disease.',
  'Hypertension':
      'Hypertension (HTN or HT), also known as high blood pressure (HBP), is a long-term medical condition in which the blood pressure in the arteries is persistently elevated. High blood pressure typically does not cause symptoms.',
  'Hyperthyroidism':
      "Hyperthyroidism (overactive thyroid) occurs when your thyroid gland produces too much of the hormone thyroxine. Hyperthyroidism can accelerate your body's metabolism, causing unintentional weight loss and a rapid or irregular heartbeat.",
  'Hypoglycemia':
      " Hypoglycemia is a condition in which your blood sugar (glucose) level is lower than normal. Glucose is your body's main energy source. Hypoglycemia is often related to diabetes treatment. But other drugs and a variety of conditions — many rare — can cause low blood sugar in people who don't have diabetes.",
  'Hypothyroidism':
      'Hypothyroidism, also called underactive thyroid or low thyroid, is a disorder of the endocrine system in which the thyroid gland does not produce enough thyroid hormone.',
  'Impetigo':
      "Impetigo (im-puh-TIE-go) is a common and highly contagious skin infection that mainly affects infants and children. Impetigo usually appears as red sores on the face, especially around a child's nose and mouth, and on hands and feet. The sores burst and develop honey-colored crusts.",
  'Jaundice':
      'Yellow staining of the skin and sclerae (the whites of the eyes) by abnormally high blood levels of the bile pigment bilirubin. The yellowing extends to other tissues and body fluids. Jaundice was once called the "morbus regius" (the regal disease) in the belief that only the touch of a king could cure it',
  'Malaria':
      'An infectious disease caused by protozoan parasites from the Plasmodium family that can be transmitted by the bite of the Anopheles mosquito or by a contaminated needle or transfusion. Falciparum malaria is the most deadly type.',
  'Migraine':
      "A migraine can cause severe throbbing pain or a pulsing sensation, usually on one side of the head. It's often accompanied by nausea, vomiting, and extreme sensitivity to light and sound. Migraine attacks can last for hours to days, and the pain can be so severe that it interferes with your daily activities.",
  'Osteoarthristis':
      'Osteoarthritis is the most common form of arthritis, affecting millions of people worldwide. It occurs when the protective cartilage that cushions the ends of your bones wears down over time.',
  'Paralysis (brain hemorrhage)':
      'Intracerebral hemorrhage (ICH) is when blood suddenly bursts into brain tissue, causing damage to your brain. Symptoms usually appear suddenly during ICH. They include headache, weakness, confusion, and paralysis, particularly on one side of your body.',
  'Peptic ulcer diseae':
      'Peptic ulcer disease (PUD) is a break in the inner lining of the stomach, the first part of the small intestine, or sometimes the lower esophagus. An ulcer in the stomach is called a gastric ulcer, while one in the first part of the intestines is a duodenal ulcer.',
  'Pneumonia':
      'Pneumonia is an infection in one or both lungs. Bacteria, viruses, and fungi cause it. The infection causes inflammation in the air sacs in your lungs, which are called alveoli. The alveoli fill with fluid or pus, making it difficult to breathe.',
  'Psoriasis':
      "Psoriasis is a common skin disorder that forms thick, red, bumpy patches covered with silvery scales. They can pop up anywhere, but most appear on the scalp, elbows, knees, and lower back. Psoriasis can't be passed from person to person. It does sometimes happen in members of the same family.",
  'Tuberculosis':
      'Tuberculosis (TB) is an infectious disease usually caused by Mycobacterium tuberculosis (MTB) bacteria. Tuberculosis generally affects the lungs, but can also affect other parts of the body. Most infections show no symptoms, in which case it is known as latent tuberculosis.',
  'Typhoid':
      'An acute illness characterized by fever caused by infection with the bacterium Salmonella typhi. Typhoid fever has an insidious onset, with fever, headache, constipation, malaise, chills, and muscle pain. Diarrhea is uncommon, and vomiting is not usually severe.',
  'Urinary tract infection':
      'Urinary tract infection: An infection of the kidney, ureter, bladder, or urethra. Abbreviated UTI. Not everyone with a UTI has symptoms, but common symptoms include a frequent urge to urinate and pain or burning when urinating.',
  'Varicose veins':
      'A vein that has enlarged and twisted, often appearing as a bulging, blue blood vessel that is clearly visible through the skin. Varicose veins are most common in older adults, particularly women, and occur especially on the legs.',
  'hepatitis A':
      "Hepatitis A is a highly contagious liver infection caused by the hepatitis A virus. The virus is one of several types of hepatitis viruses that cause inflammation and affect your liver's ability to function."
};

class processing extends StatefulWidget {
  //processing({Key key, @required this.symp}) : super(key: key);
  final String symp1, symp2, symp3, symp4, symp5;

  const processing(
      {Key key,
      @required this.symp1,
      @required this.symp2,
      this.symp3,
      this.symp4,
      this.symp5})
      : super(key: key);

  @override
  _processingState createState() => _processingState();
}

Future<DisPred> createDis(String symp1, String symp2, String symp3,
    String symp4, String symp5) async {
  var api_url = Uri.parse("https://aatmsahayflaskapi.herokuapp.com/");

  print("${symp1}");
  print("${symp2}");
  print("${symp3}");
  print("${symp4}");
  print("${symp5}");
  Map<String, dynamic> request_symp = {
    "symp1": symp1,
    "symp2": symp2,
    "symp3": symp3,
    "symp4": symp4,
    "symp5": symp5
  };
  var response = await http.post(
    api_url,
    body: jsonEncode(request_symp),
  );
  print(response.statusCode);
  if (response.statusCode == 200) {
    final String responseString = response.body;
    return disPredFromJson(responseString);
  } else {
    return null;
  }
}

Future<bool> isConnected() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  }
  return false;
}

class _processingState extends State<processing> {
  DisPred _dis = null;
  String pred_dis;
  bool _load = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: Text("Predicting on the basis of \nselected symptoms"),
              toolbarHeight: 100,
            ),
            body: SingleChildScrollView(
                child: Container(
                    color: Colors.white,
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        _load == true
                            ? SpinKitWave(
                                color: Colors.teal,
                                size: 100,
                              )
                            : Text(
                                "${pred_dis = maxProb(_dis)}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 50,
                                    shadows: [
                                      Shadow(
                                          offset: Offset(3, 3),
                                          color: Colors.black,
                                          blurRadius: 10),
                                      Shadow(
                                          offset: Offset(-3, -3),
                                          color: Colors.white.withOpacity(0.0),
                                          blurRadius: 10)
                                    ],
                                    color: Colors.grey.shade300),
                              ),
                        SizedBox(height: 50),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary:
                                  _load == true ? Colors.teal : Colors.grey),
                          onPressed: () async {
                            if (await isConnected() == false) {
                              return connection_err(context);
                            } else {
                              final DisPred dis = await createDis(
                                  widget.symp1,
                                  widget.symp2,
                                  widget.symp3,
                                  widget.symp4,
                                  widget.symp5);
                              if (dis == null) {
                                return req_err(context);
                              }
                              setState(() {
                                _dis = dis;
                                _load = false;
                              });
                            }
                          },
                          child: Container(
                              height: 50,
                              width: 150,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "    Show Results   ",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Icon(Icons.search_sharp)
                                ],
                              )),
                        ),
                        SizedBox(height: 50),
                        _load == true
                            ? Container(
                                decoration: new BoxDecoration(
                                    //  shape: BoxShape.circle,
                                    ),
                                height: 250,
                                width: 300,
                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                      shape: NeumorphicShape.concave,
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          BorderRadius.circular(20)),
                                      depth: 100,
                                      lightSource: LightSource.topRight,
                                      color: Colors.white),
                                  child: Material(
                                    //borderRadius: BorderRadius.all(Radius.circular(50.0)),
                                    // color: Colors.amber,
                                    child: Column(
                                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        40, 17, 50, 30),
                                                child: Text('Caution',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 30,
                                                        color: Colors.teal))),
                                            Icon(
                                              Icons.warning,
                                              size: 40,
                                              color: Colors.teal[700],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                            height: 10,
                                            width: 200,
                                            child: Divider(
                                              thickness: 2,
                                              color: Colors.black,
                                            )),
                                        Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                40, 10, 40, 10),
                                            child: Text(
                                                "\"Results are shown in\nprediction are on the basis of data we have,\nDon't hesitate for concerning Doctors\"",
                                                style: TextStyle(
                                                    fontSize: 21,
                                                    color: Colors.teal[300])))
                                      ],
                                    ),
                                  ),
                                ))
                            : Container(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                color: Colors.white,
                                width: 350,
                                child: Neumorphic(
                                    style: NeumorphicStyle(
                                        shape: NeumorphicShape.convex,
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(20)),
                                        depth: 10,
                                        lightSource: LightSource.topLeft,
                                        shadowDarkColor: Colors.green,
                                        color: Colors.white),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 15, 0, 15),
                                      child: Row(
                                        children: <Widget>[
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Icon(
                                            Icons.info,
                                            size: 35,
                                            color: Colors.green,
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Expanded(
                                              child: Text(
                                            "${dis_desc[pred_dis]}",
                                            textAlign: TextAlign.justify,
                                            softWrap: true,
                                            overflow: TextOverflow.visible,
                                            style: GoogleFonts.ubuntuCondensed(
                                                fontSize: 20,
                                                color: Colors.teal,
                                                fontWeight: FontWeight.bold),
                                          )),
                                          SizedBox(
                                            width: 30,
                                          )
                                        ],
                                      ),
                                    ))),
                        SizedBox(
                          height: 100,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: _load == false ? Colors.teal : Colors.grey,
                            onPrimary: Colors.white,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                          onPressed: () {
                            if (_load == false) {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return precaution(dis: pred_dis);
                              }));
                            }
                          },
                          child: Container(
                              height: 50,
                              width: 150,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "    Precautions    ",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Icon(Icons.medical_services)
                                ],
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    )))));
  }
}

void req_err(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Post request error"),
    content: Text(" Response of post request is NULL"),
  );

  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}

void connection_err(BuildContext context) {
  var alertDialog = AlertDialog(
    title: Text("Internet issue"),
    content: Text("Make sure you connected to network/Internet"),
  );

  showDialog(context: context, builder: (BuildContext context) => alertDialog);
}

String maxProb(dise) {
  DisPred dis = dise;
  if (dis.modelKnn == dis.modelNb || dis.modelKnn == dis.modelRdf) {
    return dis.modelKnn;
  } else if (dis.modelNb == dis.modelRdf) {
    return dis.modelNb;
  } else
    return dis.modelRdf;
}

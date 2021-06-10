// class dis_pred {
//   String symp1, symp2, symp3, symp4, symp5;

//   dis_pred({this.symp1, this.symp2, this.symp3, this.symp4, this.symp5});
// }

// from quicktype
// To parse this JSON data, do
//
//     final disPred = disPredFromJson(jsonString);

import 'dart:convert';

DisPred disPredFromJson(String str) => DisPred.fromJson(json.decode(str));

String disPredToJson(DisPred data) => json.encode(data.toJson());

class DisPred {
  DisPred({
    this.modelKnn,
    this.modelNb,
    this.modelRdf,
  });

  String modelKnn;
  String modelNb;
  String modelRdf;

  factory DisPred.fromJson(Map<String, dynamic> json) => DisPred(
        modelKnn: json["model_knn"],
        modelNb: json["model_nb"],
        modelRdf: json["model_rdf"],
      );

  Map<String, dynamic> toJson() => {
        "model_knn": modelKnn,
        "model_nb": modelNb,
        "model_rdf": modelRdf,
      };
}

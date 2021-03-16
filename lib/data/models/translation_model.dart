class TranslationModel {
  int id;
  int fishSpecieId;
  String name;
  String locale;

  TranslationModel({this.id, this.fishSpecieId, this.name, this.locale});

  TranslationModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fishSpecieId = json['fish_specie_id'];
    name = json['name'];
    locale = json['locale'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fish_specie_id'] = this.fishSpecieId;
    data['name'] = this.name;
    data['locale'] = this.locale;
    return data;
  }
}

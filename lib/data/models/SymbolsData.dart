class SymbolsData {
  int id;
  String name;
  String levels;
  int lastclose;
  String close;
  String zones;
  String percent;
  int rewardrisk;
  String term;

  SymbolsData(
      {this.id,
      this.name,
      this.levels,
      this.lastclose,
      this.close,
      this.zones,
      this.percent,
      this.rewardrisk,
      this.term});

  SymbolsData.fromJson(Map<String, dynamic> json) {
    // id = json['id'];
    // fishSpecieId = json['lastclose'];
    // name = json['name'];
    // levels = json['levels'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['lastclose'] = this.lastclose;
    data['name'] = this.name;
    data['levels'] = this.levels;
    return data;
  }
}

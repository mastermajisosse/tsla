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
  String holssell;
  String comment;

  SymbolsData({
    this.id,
    this.name,
    this.levels,
    this.lastclose,
    this.close,
    this.zones,
    this.percent,
    this.rewardrisk,
    this.term,
    this.holssell,
    this.comment,
  });

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

  static List<SymbolsData> dummydata = [
    SymbolsData(
      id: 1,
      name: "AMC",
      levels: "597|556",
      lastclose: 643,
      zones: "750 - 897",
      close: "down",
      term: "short-term",
      percent: "56%",
      rewardrisk: 1,
    ),
    SymbolsData(
      id: 1,
      name: "DIS",
      levels: "597|556",
      lastclose: 643,
      close: "down",
      zones: "750 - 897",
      term: "long-term",
      percent: "56%",
      rewardrisk: 3,
    ),
    SymbolsData(
      id: 1,
      name: "MSFT",
      levels: "597|556",
      lastclose: 643,
      close: "up",
      zones: "750 - 897",
      term: "mid-term",
      percent: "56%",
      rewardrisk: 2,
    ),
    SymbolsData(
      id: 1,
      name: "XELB",
      levels: "597|556",
      lastclose: 643,
      close: "down",
      zones: "750 - 897",
      term: "short-term",
      percent: "56%",
      rewardrisk: 4,
    ),
  ];
}

class Country {
  final String name;
  final String flag;
  final String coatOfArm;
  final String population;
  final List<dynamic> capital;
  final String region;
  final Map<String, dynamic>? languages;
  final String? group;
  final bool independent;
  final String area;
  final Map<String, dynamic>? dialingCode;
  final String timeZone;

  Country({
    required this.name,
    required this.flag,
    required this.coatOfArm,
    required this.population,
    this.capital = const [],
    required this.region,
    this.languages,
    this.group,
    this.independent = false,
    required this.area,
    this.dialingCode,
    required this.timeZone,
  });

  factory Country.fromJson(Map<String, dynamic> json) {
    return Country(
      name: json['name']['common'].toString(),
      flag: json['flags']['png'].toString(),
      coatOfArm: json['coatOfArms']['png'].toString(),
      population: json['population'].toString(),
      capital: json['capital'] == null || json['capital'].isEmpty
          ? []
          : json['capital'],
      region: json['region'].toString(),
      languages: json['languages'] == null || json['languages'].isEmpty
          ? null
          : json['languages'] as Map<String, dynamic>,
      independent:
          json['independent'] == null ? false : json['independent'] as bool,
      area: json['area'].toString(),
      dialingCode: json['idd'] as Map<String, dynamic>,
      timeZone: json['timeZone'].toString(),
    );
  }

  String get firstCapital => capital.isEmpty ? '' : capital.first;

  String get dialing => dialingCode == null
      ? 'No Dialing Code'
      : dialingCode!['root'].toString() +
          dialingCode!['suffixes'][0].toString();

  String get language =>
      languages == null ? 'No Language' : languages!.values.toList().join(', ');
}

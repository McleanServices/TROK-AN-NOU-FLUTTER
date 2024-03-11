class Theme {
  int? idTheme;
  String? libelle;

  contactMap() {
    var mapping = Map<String, dynamic>();
    mapping['idTheme'] = idTheme;
    mapping['libelle'] = libelle!;
    return mapping;
  }
}


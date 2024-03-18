class MaterielService {
  int? idMateriel;
  String? libelle;
  String? descriptif;
  bool? publier;
  int? idUsage; 
  int? idTheme;  

  Map<String, dynamic> materielServiceMap() {
    var mapping = Map<String, dynamic>();
    mapping['idMateriel'] = idMateriel;
    mapping['libelle'] = libelle!;
    mapping['descriptif'] = descriptif!;
    mapping['publier'] = publier!;
    mapping['idUsage'] = idUsage;
    mapping['idTheme'] = idTheme;
    return mapping;
  }
}

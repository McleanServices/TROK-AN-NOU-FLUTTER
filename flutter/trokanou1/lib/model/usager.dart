class Usager {
  int? idUsager;
  String? nom;
  String? prenom;
  String? addresse;
  int? numero;
  String? mail;
  String? photo;
  String? typeUsager;

  usagerMap() {
    var mapping = Map<String, dynamic>();
    mapping['idUsager'] = idUsager;
    mapping['nom'] = nom!;
    mapping['prenom'] = prenom!;
    mapping['addresse'] = addresse!;
    mapping['numero'] = numero;
    mapping['mail'] = mail!;
    mapping['photo'] = photo!;
    mapping['typeUsager'] = typeUsager!;
    return mapping;
  }
}

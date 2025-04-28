final String tableInfos = 'infos';

class InfosFields {
  static final List<String> values = [
    id, prenom, nom, ville, telephone, email, etablissement, formation
  ];

  static final String id = '_id';
  static final String prenom = 'prenom';
  static final String nom = 'nom';
  static final String ville = 'ville';
  static final String telephone = 'telephone';
  static final String email = 'email';
  static final String etablissement = 'etablissement';
  static final String formation = 'formation';
}

class Infos {
  final int? id;
  final String prenom;
  final String nom;
  final String ville;
  final String telephone;
  final String email;
  final String etablissement;
  final String formation;

  const Infos({
    this.id,
    required this.prenom,
    required this.nom,
    required this.ville,
    required this.telephone,
    required this.email,
    required this.etablissement,
    required this.formation,
  });

  Infos copy({
    int? id,
    String? prenom,
    String? nom,
    String? ville,
    String? telephone,
    String? email,
    String? etablissement,
    String? formation,
  }) =>
      Infos(
        id: id ?? this.id,
        prenom: prenom ?? this.prenom,
        nom: nom ?? this.nom,
        ville: ville ?? this.ville,
        telephone: telephone ?? this.telephone,
        email: email ?? this.email,
        etablissement: etablissement ?? this.etablissement,
        formation: formation ?? this.formation,
      );

  static Infos fromJson(Map<String, Object?> json) => Infos(
        id: json[InfosFields.id] as int?,
        prenom: json[InfosFields.prenom] as String,
        nom: json[InfosFields.nom] as String,
        ville: json[InfosFields.ville] as String,
        telephone: json[InfosFields.telephone] as String,
        email: json[InfosFields.email] as String,
        etablissement: json[InfosFields.etablissement] as String,
        formation: json[InfosFields.formation] as String,
      );

  Map<String, Object?> toJson() => {
        InfosFields.id: id,
        InfosFields.prenom: prenom,
        InfosFields.nom: nom,
        InfosFields.ville: ville,
        InfosFields.telephone: telephone,
        InfosFields.email: email,
        InfosFields.etablissement: etablissement,
        InfosFields.formation: formation,
      };
}

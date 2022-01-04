class User {
  String? password;
  String? phone;
  String? name;
  String? sId;
  int? kollektion;
  int? followers;
  int? following;
  int? other;
  int? iV;

  User({
    required this.password,
    required this.phone,
    this.name,
    this.sId,
    this.iV,
    this.followers,
    this.following,
    this.kollektion,
    this.other
  });

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    password = json['password'];
    phone = json['phone'];
    iV = json['__v'];
    followers = json['followers'];
    following = json['following'];
    kollektion = json['kollektion'];
    other = json['other'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['password'] = password;
    data['phone'] = phone;
    data['name'] = name;
    return data;
  }
}

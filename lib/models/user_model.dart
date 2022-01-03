class User {
  String? sId;
  String? name;
  String? password;
  String? phone;
  int? iV;

  User({this.sId, this.name, this.password, this.phone, this.iV});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    password = json['password'];
    phone = json['phone'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['password'] = password;
    data['phone'] = phone;
    data['__v'] = iV;
    return data;
  }
}
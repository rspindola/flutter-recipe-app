class User {
  int id;
  String name;
  String email;
  Null gender;
  Null avatar;
  Null phone;
  Null origin;
  Null status;
  String createdAt;

  User({
    this.id,
    this.name,
    this.email,
    this.gender,
    this.avatar,
    this.phone,
    this.origin,
    this.status,
    this.createdAt,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    gender = json['gender'];
    avatar = json['avatar'];
    phone = json['phone'];
    origin = json['origin'];
    status = json['status'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['avatar'] = this.avatar;
    data['phone'] = this.phone;
    data['origin'] = this.origin;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    return data;
  }
}

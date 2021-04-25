import 'package:recipes/app/data/model/user_model.dart';

class Auth {
  User user;
  String tokenType;
  String accessToken;
  int expiresIn;

  Auth({this.user, this.tokenType, this.accessToken, this.expiresIn});

  Auth.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    tokenType = json['token_type'];
    accessToken = json['access_token'];
    expiresIn = json['expires_in'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    data['token_type'] = this.tokenType;
    data['access_token'] = this.accessToken;
    data['expires_in'] = this.expiresIn;
    return data;
  }
}

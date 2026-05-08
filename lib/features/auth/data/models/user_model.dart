import 'package:flutter_application_1/features/auth/domin/entities/user.dart';

class UserModel {
  final String id;
  final String name;
  final String email;
  final String token;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.token,

  });

//بستقبل المعلومات
  factory UserModel.fromJson(Map<String, dynamic>? json) {
    return UserModel(
      id: json?['id'] ?? '',
      name: json?['name'] ?? '',
      email: json?['email'] ?? '',
      token: json?['token'] ?? '',

    );
  }

  User toEntity() {
    return User(id: id, email: email);
  }

//بعطي المعلومات
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }
}

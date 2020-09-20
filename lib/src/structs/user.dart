import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

class User {
  final String id;
  final String username;
  String fullName;
  String email;

  User(
      {@required this.username,
      String firstName,
      String lastName,
      @required this.email})
      : this.id = Uuid().v4() {
    this.fullName = '$firstName $lastName';
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'username': this.username,
      'fullName': this.fullName,
      'email': this.email
    };
  }
}

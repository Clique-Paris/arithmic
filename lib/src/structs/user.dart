import 'package:uuid/uuid.dart';

class User {
  final String id;
  String _username;
  String _fullName;
  String _email;
  int level;
  double point;
  User() : this.id = Uuid().v4() {
    this.level = 0;
    this.point = 0;
  }

  String get username {
    return this._username;
  }

  String get fullName {
    return this._fullName;
  }

  String get email {
    return this._email;
  }

  set changeUserName(String u) {
    this._username = u;
  }

  void changeFullName({String firstName, String lastName}) {
    this._fullName = '$firstName $lastName';
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'username': this._username,
      'fullName': this._fullName,
      'email': this._email
    };
  }
}

import 'dart:convert';

class User {
  int? id;
  String? name;
  String? password;
  int? userId;

  User({
    this.id,
    this.name,
    this.password,
    this.userId
  });

  User copyWith({
    int? id,
    String? name,
    String? password,
    int? userId
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      password: password ?? this.password,
      userId: userId ?? this.userId
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    if (id != null) {
      result.addAll({'id': id});
    }
    if (name != null) {
      result.addAll({'name': name});
    }
    if (password != null) {
      result.addAll({'password': password});
    }
    if (userId != null) {
      result.addAll({'userId': userId});
    }

    return result;
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt(),
      name: map['name'],
      password: map['password'],
      userId: map['userId']
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

/*  @override
  String toString() {
    return 'User(id: $id, name: $name, contact: $contact, bio: $bio)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User && other.id == id && other.name == name && other.contact == contact && other.bio == bio;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ contact.hashCode ^ bio.hashCode;
  }*/
}

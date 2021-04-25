import 'dart:convert';

class User {
  final String name;
  final String photoUrl;
  final int score;

  User({
    required this.name,
    required this.photoUrl,
    required this.score,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      photoUrl: map['photoUrl'],
      score: map['score'],
    );
  }

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}

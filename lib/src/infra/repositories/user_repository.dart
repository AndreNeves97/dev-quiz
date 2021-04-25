import 'package:flutter/services.dart';

import '../../domain/entities/user.dart';

class UserRepository {
  Future<User> getUser() async {
    await Future.delayed(Duration(seconds: 1));

    final response =
        await rootBundle.loadString("./lib/src/external/datasources/user.json");

    return User.fromJson(response);
  }
}

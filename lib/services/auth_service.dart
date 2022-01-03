import 'package:dog_dom/core/constants/imports.dart';

class AuthService {
  Future signUp(User user) async {
    try {
      Response res = await Dio().post(
        ipAdress,
        data: user.toJson(),
      );

      // SharedPreferences pref = await SharedPreferences.getInstance();
      // await pref.setBool('isLogged', true);
      // await pref.setString('profile', res.data.toString());
      return 'Successful';

    } catch (err) {
      print(err);
      return 'User registratsiyasida xatolik: auth service';

    }

  }

  Future<List<User>> getAllUsers() async {
    try {
      Response res = await Dio().get(ipAdress + '/users');
      return (res.data as List).map((e) => User.fromJson(e)).toList();
    } catch (err) {
      rethrow;
    }
  }
}

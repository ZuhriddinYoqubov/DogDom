import 'package:dog_dom/core/constants/imports.dart';

class AuthService {
  Future signUp(User user) async {
    try {
      Response res = await Dio().post(ipAdressReg, data: user.toJson());
      if (res.statusCode == 200) {
        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setBool('isLogged', true);
        await pref.setString('profile', res.data.toString());
        return res.statusCode.toString();
      }
      return res.statusCode.toString();
    } catch (err) {
      return 'auth service: $err';
    }
  }

  Future signIn(User user) async {
    try {
      Response res = await Dio().post(ipAdressLogin, data: user.toJson());
      if (res.statusCode == 200) {
        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setBool('isLogged', true);
        await pref.setString('profile', res.data.toString());
        return res.statusCode.toString();
      }
      return res.statusCode.toString();
    } catch (err) {
      return 'auth service: $err';
    }
  }

  Future logOut()async{
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.remove('profile');
        pref.setBool('isLogged', false);
  }

  Future<List<User>> getAllUsers() async {
    try {
      Response res = await Dio().get(ipAdressUsers);
      return (res.data as List).map((e) => User.fromJson(e)).toList();
    } catch (err) {
      rethrow;
    }
  }
}

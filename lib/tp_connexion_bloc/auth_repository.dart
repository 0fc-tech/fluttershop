class AuthRepository {
  static final AuthRepository _repository = AuthRepository._internal();
  factory AuthRepository() => _repository;
  AuthRepository._internal();

  final _regexEmail = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  Future<bool> connect(String email, String pwd) async {
    await Future.delayed(Duration(seconds: 4));
    return (_regexEmail.hasMatch(email) && pwd.length >= 6);
  }
}

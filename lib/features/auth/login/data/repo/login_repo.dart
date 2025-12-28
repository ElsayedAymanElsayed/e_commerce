abstract class LoginRepo {
  Future<void> loginUserEmailWithPassword({
    required String email,
    required String password,
  });
}

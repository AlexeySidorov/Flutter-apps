class AccountHelper {
  static bool _isAuthentication = false;
  static String userName = 'Гость';
  static String accountType = 'Не указана';
  static String avatarUser;
  static Role role = Role.guest;

  static bool isAuth() {
    return _isAuthentication;
  }

}

enum Role { none, user, company, guest }

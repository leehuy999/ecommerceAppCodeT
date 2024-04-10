/// Exception class for handling various  platform-realated errors
 class TPlatformException implements Exception{
  final String code;

  TPlatformException(this.code);

  String get message{
    switch (code) {
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'Invali login credentials. Please double-check your information';
      default:
        return 'An unexception Firebase error occurred. Please try again';
    }
  }
 }
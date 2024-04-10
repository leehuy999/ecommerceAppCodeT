/// custom  exception class to handle various Firebase autthentication-related errors
class TFirebaseAuthException implements Exception{
  /// the errors code associated with the exception
  final String code;

  /// Contructor that takes an error code
  TFirebaseAuthException(this.code);

  ///Get the corresponding error message based on the error code
  String get message{
    switch (code){
      case 'email-already-in-use' :
        return 'The email address is already registered. Please use a different email';
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email';
      case 'weak-password':
        return 'The password is weak. Please choose a stronger password';
      case 'user-disabled':
        return 'The user account has been disabled. Please contact support for assistance';
      case 'user-not-found':
        return 'Invalid login details. User not found';
      case 'wrong-password':
        return 'Incorrect password. Pleasse check your password and try again.';
      case 'invalid-verifiaction-code':
        return 'Invalid verification code. Please enter a valid code';
      case 'invalid-verifiaction-id':
        return 'Invalid verification ID. Please request a verification code';
      case 'quota-exceed':
        return 'Quata exceed. Please try again later';
      case 'email-already-exists':
        return 'The email already exists. Please use a different email';
      case 'provider-already-linked':
        return 'The account is already linked with anther provider';
      default:
        return 'An unexception Firebase error occurred. Please try again';
    }
  }
}
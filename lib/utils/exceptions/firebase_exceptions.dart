///custom exception class to handle various Firebase-related errors
class TFirebaseException implements Exception{
  /// the error code associated with the exception
  final String code;

  /// Contructor that takes an error code.
  TFirebaseException(this.code);

  ///Get the corresponding error message based on the error code.
 String get message{
   switch (code) {
     case 'unknown':
       return 'An unknown Firebase error occurred. Please try again.';
     default:
       return 'An unexception Firebase error occurred. Please try again';
   }
 }
}
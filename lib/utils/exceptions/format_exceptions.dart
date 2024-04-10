///Custom exception calss to handle various format-related errors
class TFormatException implements Exception{
  ///the associated error message
  final String message;

  ///Default constructor with a generic error message.
  const TFormatException([this.message = 'An unexcepted format errors occured. Please check your input']);

  ///Create a format exception from specific erroe message
  factory TFormatException.fromMessage (String message) {
    return TFormatException(message);
  }

  /// Get the corresponding error message.
  String get formattedMessage => message;

  ///Create a format exception from a specific error code
  factory TFormatException.fromCode(String code){
    switch(code){
      case'invalid-email-format':
        return const TFormatException('The email address format is valid. PLease enter a valid email');
    }
  }
}
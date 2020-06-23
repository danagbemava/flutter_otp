library flutter_otp;

import 'dart:math';

class FlutterOtp {
  int _otp, _minOtpValue, _maxOtpValue; //Generated OTP

  /// This function is used to generate a Random OTP in the range [1000, 9999]
  /// which can be used to send and verify. The [Random.nexInt] function is been
  /// used to do the same.
  ///
  /// UPDATE: OTP can be generated in the range desired by passing min and max
  /// params to sendOTP() function. Otherwise the Range [1000, 9999] is taken as
  /// default.

  int get otp => _otp;

  void generateOtp([int min = 1000, int max = 9999]) {
    //Generates four digit OTP by default
    _minOtpValue = min;
    _maxOtpValue = max;
    _otp = _minOtpValue + Random().nextInt(_maxOtpValue - _minOtpValue);
  }

  /// This function is used to validate the OTP entered by the user, by comparing
  /// it with the generated value [_otp]. If validates to be true then bool value
  /// true is returned. Else, false is returned.

  bool resultChecker(int enteredOtp) {
    //To validate OTP
    return enteredOtp == _otp;
  }
}

import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  static final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  static var _verificationId = "";

  static Future sendOTP(
      String phoneNumber, Function errorStep, Function nextStep) async {
    await _firebaseAuth
        .verifyPhoneNumber(
            timeout: Duration(seconds: 45),
            phoneNumber: phoneNumber,
            verificationCompleted: (phoneAuthCredential) async {
              return;
            },
            verificationFailed: (error) async {
              if (error.code == 'invalid-phone-number') {
                print('The provided phone number is not valid.');
              }
            },
            codeSent: (verificationId, forceResendingToken) async {
              _verificationId = verificationId;
              nextStep();
            },
            codeAutoRetrievalTimeout: (verificationId) async {})
        .onError((e, trace) {
      errorStep();
    });
  }

  static Future loginWithOtp(String otp) async {
    final credential = PhoneAuthProvider.credential(
        verificationId: _verificationId, smsCode: otp);

    try {
      final user = await _firebaseAuth.signInWithCredential(credential);

      if (user.user != null) {
        return true;
      } else {
        return false;
      }
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }

  static Future logOut() async {
    await _firebaseAuth.signOut();
  }

  static Future<bool> isLoggedIn() async {
    var user = await _firebaseAuth.currentUser;
    return user != null;
  }

  static Future getAuthenticatedUser() async {
    var user = await _firebaseAuth.currentUser;
    return user;
  }
}

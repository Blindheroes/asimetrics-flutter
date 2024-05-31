import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class Auth {
  FirebaseAuth _auth = FirebaseAuth.instance;
  // final GoogleSignIn _googleSignIn = GoogleSignIn();

  Stream<User?> get userStream {
    return _auth.authStateChanges();
  }

  Future loginAnonim() async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      print("login as ${userCredential.user.toString()}");
      return userCredential.user;
    } catch (e) {
      print("Error registering with email and password: ${e.toString()}");
      return null;
    }
  }

  // Future<void> signInWithGoogle() async {
  //   try {
  //     final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  //     if (googleUser == null) return;

  //     final GoogleSignInAuthentication googleAuth =
  //         await googleUser.authentication;

  //     final AuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleAuth.accessToken,
  //       idToken: googleAuth.idToken,
  //     );

  //     await _auth.signInWithCredential(credential);
  //     print("done");
  //     print("${_auth.toString()}");
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  Future logOut() async {
    try {
      print(" user loguot");
      return await _auth.signOut();
    } catch (e) {
      print("Error signing out: ${e.toString()}");
    }
  }
}

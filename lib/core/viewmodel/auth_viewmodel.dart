import 'package:ecommerce/view/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late String email, password;
  Rx<User?> _user = Rx<User?>(FirebaseAuth.instance.currentUser);
  get user => _user.value?.email;
  googleSignIn() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return;
      }
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      await _auth.signInWithCredential(credential).then((e) {
        print(e.user?.displayName);
        print(e.user?.email);
        print(e.user?.photoURL);
      });
    } catch (e) {
      print(e);
    }
  }

  signInWithEmailAndPassword() async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      _user = _auth.currentUser!.obs;
      print(_user.value?.email);
      print(_auth.currentUser?.email);
      Get.offAll(HomeScreen());
    } catch (e) {
      print(e);
      Get.snackbar("Error Login Account", e.toString());
    }
  }
}

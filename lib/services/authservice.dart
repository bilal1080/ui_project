import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:flutter_project1/Screens/login.dart';
import 'package:flutter_project1/Screens/postList.dart';

class AuthService {
  //determine if the user is authenticated
  handleAuth() {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.hasData) {
            return PostList();
          } else
            return Login();
        });
  }

  //signput function
  signout() {
    FirebaseAuth.instance.signOut();
  }

  //signout function
  // ignore: non_constant_identifier_names
  SignIn(String email, String password, context) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print("signIn accur");
    }).catchError((e) {
      print(e.toString());
    });
  }

  // ignore: non_constant_identifier_names
  SignUp(String email,String password){
   return FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
  }
/////////////////////////////////////////////
  fbSignIn() async {
    final fb = FacebookLogin();

// Log in
    final res = await fb.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);

// Check result status
    switch (res.status) {
      case FacebookLoginStatus.success:
        // Logged in

        // Send access token to server for validation and auth
        final FacebookAccessToken? accessToken = res.accessToken;
        final AuthCredential authCredential =
            FacebookAuthProvider.credential(accessToken!.token);
        // ignore: unused_local_variable
        final result =
            await FirebaseAuth.instance.signInWithCredential(authCredential);

        // Get profile data
        final profile = await fb.getUserProfile();
        print('Hello, ${profile!.name}! You ID: ${profile.userId}');

        // Get user profile image url
        final imageUrl = await fb.getProfileImageUrl(width: 100);
        print('Your profile image: $imageUrl');

        // Get email (since we request email permission)
        final email = await fb.getUserEmail();
        // But user can decline permission
        if (email != null) print('And your email is $email');

        break;
      case FacebookLoginStatus.cancel:
        // User cancel log in
        break;
      case FacebookLoginStatus.error:
        // Log in failed
        print('Error while log in: ${res.error}');
        break;
    }
  }
}

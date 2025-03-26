import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:get/get.dart';
import 'package:doctalk_ui/views/healthdashboard.dart';

final supabase = Supabase.instance.client;

Future<void> signInWithGoogle() async {
  try {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    if (googleUser == null) {
      return; // User canceled login
    }

    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthResponse res = await supabase.auth.signInWithIdToken(
      provider: OAuthProvider.google, // ✅ Corrected
      idToken: googleAuth.idToken!,
    );

    if (res.user != null) {
      Get.to(HealthDashboard());
    }
  } catch (e) {
    Get.snackbar('Error', e.toString(), backgroundColor: Colors.red);
  }
}

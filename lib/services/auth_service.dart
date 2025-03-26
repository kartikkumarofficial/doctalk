import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase/supabase.dart';

import '../auth/google_sign_in.dart';


Future<void> signInWithPhone(String phoneNumber) async {
  try {
    await supabase.auth.signInWithOtp(phone: phoneNumber);
    Get.snackbar('OTP Sent', 'Check your phone', backgroundColor: Colors.green);
  } catch (e) {
    Get.snackbar('Error', e.toString(), backgroundColor: Colors.red);
  }
}

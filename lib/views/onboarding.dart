import 'package:doctalk_ui/services/auth_service.dart';
import 'package:doctalk_ui/views/healthdashboard.dart';
import 'package:doctalk_ui/views/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:doctalk_ui/auth/google_sign_in.dart';

class OnboardingScreen extends StatefulWidget {
   OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: Get.width * 0.08),
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0F6BAE), Color(0xFF3AB28D)],
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: Get.height * 0.15),
             CircleAvatar(
               radius: 95,
               backgroundColor: Colors.white.withOpacity(0.08),
               child: CircleAvatar(
                radius: 78,
                child: ClipOval(child: Image.asset('assets/images/doc.png',)),
                           ),
             ),
            SizedBox(height: Get.height * 0.03),
             Text(
              'DocTalk',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: Get.height * 0.005),
             Text(
              'Your AI Health Assistant',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: Get.height * 0.015),
             Text(
              'Get instant medical advice and connect with healthcare professionals',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: Get.height * 0.05),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(Get.width, Get.height * 0.06),
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
              ),
              icon:  Icon(Icons.g_mobiledata),
              label:  Text('Sign in with Google'),
              onPressed: () {
                signInWithGoogle();
                // Get.to(HealthDashboard());
              },
            ),
            SizedBox(height: Get.height * 0.015),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(Get.width, Get.height * 0.06),
                foregroundColor: Colors.white,
                side:  BorderSide(color: Colors.white70),
              ),
              icon:  Icon(Icons.email),
              label:  Text('Sign in with Email'),
              onPressed: () {
                Get.to(SignupScreen());
              },
            ),
            SizedBox(height: Get.height * 0.015),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(Get.width, Get.height * 0.06),
                foregroundColor: Colors.white,
                side:  BorderSide(color: Colors.white70),
              ),
              icon:  Icon(Icons.phone),
              label:  Text('Sign in with Phone'),
              onPressed: () {
                signInWithPhone("123455226");
              },
            ),
            SizedBox(height: Get.height * 0.03),
             Text(
              'By continuing, you agree to our Terms & Privacy Policy',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
                fontFamily: 'Poppins',//
              ),
            ),
          ],
        ),
      ),
    );
  }
}

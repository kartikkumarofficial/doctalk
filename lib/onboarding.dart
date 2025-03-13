import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

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
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0F6BAE), Color(0xFF3AB28D)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height: Get.height * 0.1),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/image/doc.png')
            ),
            SizedBox(height: Get.height * 0.03),
            const Text(
              'DocTalk',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: Get.height * 0.005),
            const Text(
              'Your AI Health Assistant',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
                fontFamily: 'Poppins',
              ),
            ),
            SizedBox(height: Get.height * 0.015),
            const Text(
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
              icon: const Icon(Icons.g_mobiledata),
              label: const Text('Sign in with Google'),
              onPressed: () {},
            ),
            SizedBox(height: Get.height * 0.015),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(Get.width, Get.height * 0.06),
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.white70),
              ),
              icon: const Icon(Icons.email),
              label: const Text('Sign in with Email'),
              onPressed: () {},
            ),
            SizedBox(height: Get.height * 0.015),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(Get.width, Get.height * 0.06),
                foregroundColor: Colors.white,
                side: const BorderSide(color: Colors.white70),
              ),
              icon: const Icon(Icons.phone),
              label: const Text('Sign in with Phone'),
              onPressed: () {},
            ),
            SizedBox(height: Get.height * 0.03),
            const Text(
              'By continuing, you agree to our Terms & Privacy Policy',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white70,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

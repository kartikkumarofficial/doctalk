import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'views/onboarding.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://ahuseycmhtuycpkbqbue.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFodXNleWNtaHR1eWNwa2JxYnVlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDMwMDg1OTQsImV4cCI6MjA1ODU4NDU5NH0.uAbJBXPJgk9O33ri4WcHATo6zF6oTMhyxR83-Er3JKM',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home:OnboardingScreen(),
    );
  }
}

import 'package:doctalk_ui/health_summary_swiper.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:math';

class HealthDashboard extends StatefulWidget {
  @override
  _HealthDashboardState createState() => _HealthDashboardState();
}

class _HealthDashboardState extends State<HealthDashboard> {
  final List<String> healthTips = [
    "Stay hydrated by drinking at least 8 glasses of water a day.",
    "Get at least 7-8 hours of sleep for better health.",
    "Include fruits and vegetables in your diet for essential nutrients.",
    "Take short breaks while working to reduce eye strain.",
    "Daily exercise keeps you fit and active.",
    "Maintain good posture to avoid back pain.",
    "Limit sugar intake to prevent health issues.",
    "Practice deep breathing for better relaxation.",
    "Spend time outdoors to get enough Vitamin D.",
    "Reduce screen time before bed for better sleep.",
  ];

  String currentTip = "Tap to see a health tip!";

  void changeTip() {
    setState(() {
      currentTip = healthTips[Random().nextInt(healthTips.length)];
    });
  }

  Future<void> openCamera() async {
    final picker = ImagePicker();
    await picker.pickImage(source: ImageSource.camera);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.08),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Sarah",
                      style: TextStyle(
                        fontSize: width * 0.06,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "How are you feeling today?",
                      style: TextStyle(
                        fontSize: width * 0.04,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: width * 0.07,
                  backgroundImage: AssetImage("assets/profile.jpg"),
                ),
              ],
            ),
            SizedBox(height: height * 0.03),
            HealthSummary(),

            SizedBox(height: height * 0.03),
            Wrap(
              spacing: width * 0.05,
              runSpacing: height * 0.02,
              children: [
                _buildFeatureBox(context, "Check Symptoms", "AI-powered chat", Icons.chat, Colors.blue[100]!),
                GestureDetector(
                  onTap: openCamera,
                  child: _buildFeatureBox(context, "Scan Medicine", "Get drug info", Icons.qr_code_scanner, Colors.green[100]!),
                ),
                _buildFeatureBox(context, "Health Reports", "View records", Icons.insert_drive_file, Colors.purple[100]!),
                _buildFeatureBox(context, "Consultation", "Book doctor", Icons.local_hospital, Colors.pink[100]!),
              ],
            ),
            SizedBox(height: height * 0.03),
            GestureDetector(
              onTap: changeTip,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(width * 0.05),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue[100]!, Colors.green[100]!],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("AI Health Tip", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
                    SizedBox(height: height * 0.005),
                    Text(
                      currentTip,
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureBox(BuildContext context, String title, String subtitle, IconData icon, Color color) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: (width - (width * 0.15)) / 2,
      padding: EdgeInsets.all(width * 0.05),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.black, size: width * 0.08),
          SizedBox(height: height * 0.01),
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: width * 0.04,
            ),
          ),
          SizedBox(height: height * 0.005),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.black54,
              fontSize: width * 0.03,
            ),
          ),
        ],
      ),
    );
  }
}

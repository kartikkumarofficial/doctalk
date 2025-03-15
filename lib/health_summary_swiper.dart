import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';


class HealthSummary extends StatefulWidget {
  @override
  _HealthSummaryState createState() => _HealthSummaryState();
}

class _HealthSummaryState extends State<HealthSummary> {
  final List<Widget> healthAnalytics = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Health Summary", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Row(
          children: [
            Icon(Icons.favorite, color: Colors.red),
            SizedBox(width: 8),
            Text("Heart Rate: 72 BPM", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(Icons.opacity, color: Colors.blue),
            SizedBox(width: 8),
            Text("Hydration: 65%", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Health Summary", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Row(
          children: [
            Icon(Icons.directions_walk, color: Colors.green),
            SizedBox(width: 8),
            Text("Steps: 8,230", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(Icons.local_fire_department, color: Colors.orange),
            SizedBox(width: 8),
            Text("Calories Burned: 520 kcal", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Health Summary", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        Row(
          children: [
            Icon(Icons.bloodtype, color: Colors.purple),
            SizedBox(width: 8),
            Text("Blood Pressure: 120/80 mmHg", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Icon(Icons.thermostat, color: Colors.redAccent),
            SizedBox(width: 8),
            Text("Body Temperature: 98.6°F", style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 140,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Swiper(
        itemCount: healthAnalytics.length,
        itemBuilder: (context, index) {
          return healthAnalytics[index];
        },
        pagination: SwiperPagination(),

      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget buildBox(
    String text,
    Color color, {
    double width = 75,
    double height = 75,
  }) {
    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(2),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAE7EA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF607D8B),
        centerTitle: true,
        title: const Text(
          'Column and Row Layout',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            const SizedBox(height: 40),

            // Top Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildBox('1', Colors.redAccent),
                buildBox('2', Colors.green),
                buildBox('3', Colors.blue),
              ],
            ),

            const SizedBox(height: 85),

            // Large Container
            buildBox(
              'Large Container',
              Colors.orange,
              width: double.infinity,
              height: 95,
            ),

            const SizedBox(height: 85),

            // Bottom Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildBox('Left', Colors.purple, width: 95, height: 48),
                const SizedBox(width: 18),
                buildBox('Right', Colors.teal, width: 95, height: 48),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

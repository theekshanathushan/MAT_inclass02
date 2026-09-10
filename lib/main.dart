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
      title: 'Profile App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200], // matching the light background
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'My Profile',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // Profile Image (CircleAvatar)
            const Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Divider line
            const Divider(
              color: Colors.black,
              thickness: 1,
            ),
            const SizedBox(height: 20),
            // Step 3 will be placed here
          ],
        ),
      ),
    );
  }
}

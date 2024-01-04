import 'package:flutter/material.dart';
import 'package:notification/Services/notification_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: const Text('Local Notification',
            style: TextStyle(color: Colors.white)),
      ),
      body: Center(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal[700],
        ),
        child: const Text(
          'Show notifications',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
        onPressed: () {
          NotificationService().showNotification(
              title: 'New Message', body: 'This is a new message');
        },
      )),
    );
  }
}

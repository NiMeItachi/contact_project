import 'package:contact/call_page.dart';
import 'package:contact/video_call_page.dart';
import 'package:contact/contact_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ContactPage(),
      routes: {
        CallPage.id: (context) => const CallPage(),
        VideoCallPage.id: (context) => const VideoCallPage(),
        ContactPage.id: (context) => const ContactPage(),
      },
    );
  }
}

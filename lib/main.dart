import 'package:flutter/material.dart';
import 'package:handapp/feedback.dart';
import 'package:handapp/login.dart';
import 'package:handapp/user_reg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FeedbackPage()
    );
  }
}

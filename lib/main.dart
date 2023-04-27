import 'package:flutter/material.dart';
import 'package:ott_app/view/screens/home_page.dart';

void main() {
  runApp(const OTTApp());
}

class OTTApp extends StatefulWidget {
  const OTTApp({Key? key}) : super(key: key);

  @override
  State<OTTApp> createState() => _OTTAppState();
}

class _OTTAppState extends State<OTTApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

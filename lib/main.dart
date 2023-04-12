import 'package:flutter/material.dart';
import 'package:flutter_application_widget_example/examples/example_button.dart';

import 'examples/example_image.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const ImageExample(title: 'Flutter Demo Home Page'),
    );
  }
}

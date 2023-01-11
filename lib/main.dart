import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'constrained_box_example.dart';

void main() {
  runApp(const ApectRatioApp());
}

class ApectRatioApp extends StatelessWidget {
  const ApectRatioApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      tools: const [
        DeviceSection(),
      ],
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        title: 'Responsive and adaptive UI in Flutter',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('ConstrainedBox'),
          ),
          body: const ConstrainedBoxExample(),
        ),
      ),
    );
  }
}

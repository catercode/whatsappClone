import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:whatapp/views/home_view.dart';
import 'package:whatapp/views/loo.dart';

import 'views/splash_screen.dart';

void main() => runApp(
      DevicePreview(
        enabled: false,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true, // Set to true
      locale: DevicePreview.locale(context),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
      home: const SplashScreen(),
    );
  }
}

// ignore_for_file: annotate_overrides
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:whatapp/views/home_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    try {
      Timer(const Duration(seconds: 3), () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => const HomeView()));
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(flex: 3, child: Text("")),
          Expanded(
            flex: 8,
            child: Center(
              child: Image.asset('assets/images/whatsapp.png',
                  width: 100.0, height: 100.0),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Expanded(
              flex: 1,
              child: Text(
                'WhatsApp',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
              )),
        ],
      ),
    );
  }
}

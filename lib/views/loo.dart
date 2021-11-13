import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatapp/views/home_view.dart';

class SplashScreenn extends StatefulWidget {
  const SplashScreenn({Key? key}) : super(key: key);

  @override
  _SplashScreennState createState() => _SplashScreennState();
}

class _SplashScreennState extends State<SplashScreenn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70.0,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(0, 129, 105, .8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1.1, 1.1),
                            // blurRadius: 1.0,
                          )
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "WhatApp",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.search,
                              ),
                              Icon(
                                Icons.menu,
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 129, 105, .8),
                  ),
                  child: const TabBar(tabs: [
                    Tab(text: 'CHATS'),
                    Tab(text: 'STATUS'),
                    Tab(text: 'CALLS')
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

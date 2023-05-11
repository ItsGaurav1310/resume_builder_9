import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_builder_app/Screens/build_options.dart';

import 'Screens/contact_info.dart';
import 'Screens/home_page.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //     statusBarColor: Colors.red, systemNavigationBarColor: Colors.orange));
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(useMaterial3: true),
      routes: {
        '/': (context) => Splash_Screen(),
        'Home_Page': (context) => HomePage(),
        'build_options': (context) => Build_options(),
        'contact_info': (context) => ContactPage(),
      },
    ),
  );
}

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('Home_Page');
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              child: Image.asset("lib/utils/Assets/logo/logo.png"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text("Made in 💓 with India")
        ],
      ),
    );
  }
}

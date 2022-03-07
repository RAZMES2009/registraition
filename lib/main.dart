import 'package:flutter/material.dart';

import './login_screen.dart';
import './success_register_screen.dart';
import './widgets/main_screen_top.dart';
import './widgets/main_screen_bottom.dart';

void main() {
  runApp(const _MyApp());
}

class _MyApp extends StatelessWidget {
  const _MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.deepOrange,
          secondary: Colors.orangeAccent,
        ),
      ),
      home: Scaffold(
          appBar: AppBar(elevation: 0),
          body: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Column(
                children: [MainScreenTop(key, false), const MainScreenBottom()],
              ),
            ],
          )),
          routes: {
            '/login':(context) => const LoginScreen(),
            '/succes-register':(context) => const SuccesRegisterScreen(),
          },
    );
  }
}

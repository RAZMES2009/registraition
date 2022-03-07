import 'package:flutter/material.dart';

import './widgets/login_bottom_screen.dart';
import './widgets/main_screen_top.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0),
        body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Column(
              children: [MainScreenTop(key, true), const LoginBottomScreen()],
            ),
          ],
        ));
  }
}

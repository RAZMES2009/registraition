import 'package:flutter/material.dart';

import '../models/user.dart';

class LoginBottomScreen extends StatefulWidget {
  const LoginBottomScreen({Key? key}) : super(key: key);

  @override
  State<LoginBottomScreen> createState() => _LoginBottomScreenState();
}

class _LoginBottomScreenState extends State<LoginBottomScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    void _enterAccount() {
      final String _enteredEmail = _emailController.text;
      final String _enteredpassword = _passwordController.text;

      // i don't know yet how to validate email address and password in user class

    }

    return SizedBox(
      width: _mediaQuery.size.width * 0.9,
      height: _mediaQuery.size.height * 0.6,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Card(
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined)),
              controller: _emailController,
              onSubmitted: (_) => _enterAccount,
            ),
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
          Card(
            child: TextField(
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.key)),
              controller: _passwordController,
              onSubmitted: (_) => _enterAccount,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: _mediaQuery.size.width * 0.9,
            height: _mediaQuery.size.height * 0.05,
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ))),
                onPressed: _enterAccount,
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                )),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../models/user.dart';

class MainScreenBottom extends StatefulWidget {
  const MainScreenBottom({Key? key}) : super(key: key);

  @override
  State<MainScreenBottom> createState() => _MainScreenBottomState();
}

class _MainScreenBottomState extends State<MainScreenBottom> {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();

  final List<User> _Users = [];

  void _addNewUser(
    String userId,
    String fullName,
    String email,
    String phoneNumber,
    String password,
  ) {
    final _newUser = User(
        userId: email,
        fullName: fullName,
        email: email,
        phoneNumber: phoneNumber,
        password: password);

    setState(() {
      _Users.add(_newUser);
    });

    Navigator.of(context).pushNamed('/succes-register', arguments: fullName);
  }

  void _submitedData() {
    if (_fullNameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _phoneController.text.isEmpty ||
        _passwordController.text.isEmpty) {
      return;
    }

    final _enteredFullName = _fullNameController.text;
    final _enteredEmail = _emailController.text;
    final _enteredPhone = _phoneController.text;
    final _enteredPassword = _passwordController.text;

    _addNewUser(_enteredEmail, _enteredFullName, _enteredEmail, _enteredPhone,
        _enteredPassword);
  }

  void _transitionLogin() {
    Navigator.of(context).pushNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
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
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Full name',
                prefixIcon: Icon(Icons.account_circle_outlined),
              ),
              controller: _fullNameController,
              onSubmitted: (_) => _submitedData(),
            ),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Card(
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.email_outlined)),
              controller: _emailController,
              onSubmitted: (_) => _submitedData(),
            ),
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          ),
          Card(
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Phone number',
                  prefixIcon: Icon(Icons.phone)),
              controller: _phoneController,
              onSubmitted: (_) => _submitedData(),
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
              onSubmitted: (_) => _submitedData(),
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
                onPressed: _submitedData,
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 18),
                )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already a member?'),
              TextButton(
                  onPressed: _transitionLogin, child: const Text('Login'))
            ],
          )
        ],
      ),
    );
  }
}

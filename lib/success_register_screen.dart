import 'package:flutter/material.dart';

class SuccesRegisterScreen extends StatelessWidget {
  const SuccesRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome')),
      body: Center(
        child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.05,
            child: Card(
                child: Center(
              child: Text(
                'Welcome $routeArg',
              ),
            ))),
      ),
    );
  }
}

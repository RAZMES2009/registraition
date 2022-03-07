import 'package:flutter/material.dart';

class MainScreenTop extends StatelessWidget {
  final bool isLogin;

  const MainScreenTop(Key? key, this.isLogin) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: _mediaQuery.size.height * 0.3,
          decoration: BoxDecoration(
            borderRadius:
                const BorderRadius.only(bottomLeft: Radius.circular(150)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.secondary
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.cloud_queue,
                color: Colors.white,
                size: 80,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  isLogin
                      ? const Text(
                          'Login',
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        )
                      : const Text(
                          'Register',
                          style: TextStyle(fontSize: 23, color: Colors.white),
                        ),
                  const SizedBox(
                    width: 50,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

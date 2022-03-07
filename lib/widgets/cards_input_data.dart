import 'package:flutter/material.dart';

class CardsInputData extends StatelessWidget {
  const CardsInputData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return Column(
      children: [
        Card(
          child: const TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Full name',
                prefixIcon: Icon(Icons.account_circle_outlined)),
          ),
          elevation: 3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)),
        ),
                Card(
          child: const TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Email',
                prefixIcon: Icon(Icons.email_outlined)),
          ),
          elevation: 3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)),
        ),
                Card(
          child: const TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Full name',
                prefixIcon: Icon(Icons.phone)),
          ),
          elevation: 3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)),
        ),
                Card(
          child: const TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Full name',
                prefixIcon: Icon(Icons.key)),
          ),
          elevation: 3,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)),
        ),
      ],
    );
  }
}
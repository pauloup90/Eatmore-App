import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  const Email({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(9),
            hintText: ' Enter email or username'),
      ),
    );
  }
}

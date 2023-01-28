import 'package:flutter/material.dart';

import '../../models/color/colors.dart';
import '../homepage/homepage.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: 225,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                  const HomePage()));
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  20,
                )),
            backgroundColor: CustomColor.color1),
        child: const Center(child: Text('Log In')),
      ),
    );
  }
}

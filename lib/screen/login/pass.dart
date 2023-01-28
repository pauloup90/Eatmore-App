import 'package:flutter/material.dart';

class Pass extends StatelessWidget {
  const Pass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.all(9),
              hintText: ' Password',
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Colors.grey, fontSize: 13),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 28,
        ),
      ],
    );
  }
}

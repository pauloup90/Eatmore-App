import 'package:eatmoreapp/screen/login/loginscreen.dart';
import 'package:flutter/material.dart';
import '../../models/color/colors.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.colorLog,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRect(
                    child: Image.asset(
                      'images/Mask Group 7.png',
                      height: 279,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRect(
                    child: Image.asset('images/Ellipse 344.png',
                        height: 300, fit: BoxFit.cover),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: Center(
                      child: Image.asset(
                        'images/Eatmore Logo.png',
                        width: 150.32,
                        height: 100.14,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 138,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 40,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border: Border.all(
                                              color: CustomColor.color4)),
                                      child: SizedBox(
                                        height: 30,
                                        width: 130,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const LogIn()));
                                          },
                                          style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                20,
                                              )),
                                              backgroundColor:
                                                  CustomColor.color1),
                                          child: const Center(
                                              child: Text('Log In')),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 100.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            border: Border.all(
                                                color: CustomColor.color4)),
                                        child: SizedBox(
                                          height: 30,
                                          width: 130,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const SignUp()));
                                            },
                                            style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                  20,
                                                )),
                                                backgroundColor: Colors.white),
                                            child: const Center(
                                                child: Text(
                                              'Sign Up',
                                              style: TextStyle(
                                                  color: CustomColor.color1),
                                            )),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.all(9),
                                        hintText: ' Enter email or username'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.all(9),
                                        hintText: ' Password'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: const InputDecoration(
                                      contentPadding: EdgeInsets.all(9),
                                      hintText: ' Confirm password',
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
                                  height: 50,
                                ),
                                SizedBox(
                                  height: 44,
                                  width: 225,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                          20,
                                        )),
                                        backgroundColor: CustomColor.color1),
                                    child: const Center(child: Text('Sign Up')),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Center(
                                  child: Text(
                                    'OR',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            width: 1.1,
                                            color: CustomColor.color4),
                                      ),
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.white,
                                        child: Image.asset(
                                          'images/facebook.png',
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                            width: 1.1,
                                            color: CustomColor.color4),
                                      ),
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.white,
                                        child: Image.asset(
                                          'images/twitter.png',
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(
                                          width: 1.1,
                                          color: CustomColor.color4,
                                        ),
                                      ),
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor: Colors.white,
                                        child: Image.asset(
                                          'images/1004px-Google__G__Logo.svg.png',
                                          height: 30,
                                          width: 30,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'images/Vegitables.png',
                    fit: BoxFit.cover,
                    width: 280,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

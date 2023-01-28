import 'package:flutter/material.dart';
import '../../models/color/colors.dart';
import '../login/loginscreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LogIn()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    CustomColor.color1,
                    CustomColor.color2,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),

           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Center(
                  child: Image.asset(
                    'images/Eatmore Logo.png',
                    width: 204.32,
                    height: 100.14,
                  ),
                ),
                const Spacer(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(width: 80,),
                      Image.asset(
                        'images/Vegitables.png',
                        fit: BoxFit.cover,
                        width: 370,
                        height: 170,
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
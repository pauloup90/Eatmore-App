// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import '../../models/color/colors.dart';
import 'modules/burgers.dart';
import 'modules/catrgories.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

enum BurgerType {
  Zinger,
  Classek,
}

enum Selcted { Burgers, Pizza, chicken }

Selcted selcted = Selcted.Burgers;
BurgerType burgerType = BurgerType.Zinger;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.colorLog,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: CustomColor.colorLog,
                        ),
                        child: Image.asset(
                          color: CustomColor.color3,
                          'images/Group 37.png',
                          height: 20,
                          width: 28,
                        )),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: CustomColor.colorLog,
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(width: 3.5, color: Colors.white)),
                          child: Image.asset(
                            'images/Mask Group 1.png',
                            height: 40,
                            width: 40,
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 10),
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: 'Choose the',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: CustomColor.color3,
                    ),
                  ),
                  TextSpan(
                    text: '\nFood you love',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: CustomColor.color3,
                        fontSize: 19),
                  ),
                ])),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  height: 40,
                  width: 346,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 10, left: 17),
                        hintText: 'Search for a food item',
                        floatingLabelAlignment: FloatingLabelAlignment.center,
                        border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //1
              const Categories(),
              //2
              const Burgers()
            ],
          ),
        ),
      ),
    );
  }
}

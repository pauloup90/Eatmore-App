import 'package:flutter/material.dart';

import '../../../models/color/colors.dart';
import '../homepage.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Column (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            'Categories',
            style: TextStyle(
              color: CustomColor.color3,
              fontSize: 13,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selcted = Selcted.Burgers;
                      });
                    },
                    child: Container(
                      width: 110,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            width: 1,
                            color: selcted == Selcted.Burgers
                                ? CustomColor.color1 : Colors.white),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Image.asset('images/Group 17.png',
                                height: 26,
                                width: 26,
                                color: selcted == Selcted.Burgers
                                    ? CustomColor.color1
                                    : Colors.grey),
                          ),
                          Center(
                            child: Text(
                              'Burgers',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: selcted == Selcted.Burgers
                                      ? CustomColor.color1
                                      : Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selcted = Selcted.Pizza;
                      });
                    },
                    child: Container(
                      width: 110,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                            color: selcted == Selcted.Pizza
                                ? CustomColor.color1 : Colors.white),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        //  border: Border.all(width: 1,color:CustomColor.color1)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Image.asset(
                              'images/fast-food.png',
                              color: selcted == Selcted.Pizza
                                  ? CustomColor.color1
                                  : Colors.grey,
                              height: 26,
                              width: 26,
                            ),
                          ),
                          Center(
                            child: Text(
                              'Pizza',
                              style: TextStyle(
                                fontSize: 12,
                                color: selcted == Selcted.Pizza
                                    ? CustomColor.color1
                                    : Colors.grey,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        selcted = Selcted.chicken;
                      });
                    },
                    child: Container(
                      width: 110,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            width: 1,
                            color: selcted == Selcted.chicken
                                ? CustomColor.color1
                                : Colors.white),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Image.asset(
                              'images/chicken.png',
                              color: selcted == Selcted.chicken
                                  ? CustomColor.color1
                                  : Colors.grey,
                              height: 26,
                              width: 26,
                            ),
                          ),
                          Center(
                            child: Text(
                              'chicken',
                              style: TextStyle(
                                fontSize: 12,
                                color: selcted == Selcted.chicken
                                    ? CustomColor.color1
                                    : Colors.grey,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,),
      ],
    );
  }
}

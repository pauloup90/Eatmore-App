import 'package:flutter/material.dart';
import '../../../models/color/colors.dart';
import '../homepage.dart';

class Burgers extends StatefulWidget {
   const Burgers({Key? key}) : super(key: key);

  @override
  State<Burgers> createState() => _BurgersState();
}

class _BurgersState extends State<Burgers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Text(
            'Burgers',
            style: TextStyle(
              color: CustomColor.color3,
              fontSize: 13,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      burgerType = BurgerType.Zinger;
                    });
                  },
                  child: Container(
                      height: 200,
                      width: 173,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          gradient: burgerType == BurgerType.Zinger
                              ? const LinearGradient(
                            colors: [
                              CustomColor.color1,
                              CustomColor.color1,
                              CustomColor.color2,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          )
                              : null),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          ClipRRect(
                            child: Image.asset(
                              'images/Group 26.png',
                              height: 88,
                              width: 120,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Zinger Burger',
                                  style: TextStyle(
                                      color: burgerType ==
                                          BurgerType.Classek
                                          ? Colors.black
                                          : Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .start,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 13,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '12',
                                  style: TextStyle(
                                      fontSize: 34,
                                      color: burgerType ==
                                          BurgerType.Classek
                                          ? Colors.black
                                          : Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      burgerType = BurgerType.Classek;
                    });
                  },
                  child: Container(
                    height: 200,
                    width: 173,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      gradient: burgerType == BurgerType.Classek
                          ? const LinearGradient(
                        colors: [
                          CustomColor.color1,
                          CustomColor.color1,
                          CustomColor.color2,
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                          : null,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        ClipRRect(
                          child: Image.asset(
                            'images/hamburger.png',
                            height: 88,
                            width: 120,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Zinger Burger',
                                style: TextStyle(
                                    color: burgerType == BurgerType.Classek
                                        ? Colors.white
                                        : Colors.black),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Icon(
                                    Icons.star,
                                    size: 13,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 13,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 13,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 13,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                '12',
                                style: TextStyle(
                                    fontSize: 34,
                                    color: burgerType == BurgerType.Classek
                                        ? Colors.white
                                        : Colors.black),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 5,
              backgroundColor: CustomColor.color1,
            ),
            SizedBox(
              width: 6,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: Colors.grey,
            ),
            SizedBox(
              width: 6,
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: Colors.grey,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: CustomColor.colorLog,
              ),
              child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: CustomColor.color1,
                      border: Border.all(width: 3.5, color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: SizedBox(
                        height: 10,
                        width: 10,
                        child: Image.asset(
                          'images/Union 1.png',
                        )),
                  )),
            ),
          ],
        ),
      ],
    );
  }
}

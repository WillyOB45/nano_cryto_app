import 'package:flutter/material.dart';
import 'package:nano_crypto_app/src/widgets/circletiles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _notificationCount = 0;

  void _notifyCount() {
    setState(() {
      _notificationCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),

          // first section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green.shade900),
                  child: const Stack(
                    children: [
                      Positioned(
                          top: 5,
                          left: 5,
                          child: Icon(
                            Icons.person,
                            size: 40,
                          )),
                      Positioned(
                          top: 30,
                          left: 35,
                          child: Icon(
                            Icons.add,
                            size: 20,
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Column(
                  children: [
                    Text(
                      "Good Morning,",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Emmanuel",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 160,
                ),
                GestureDetector(
                  onTap: () => _notifyCount,
                  child: Stack(
                    children: [
                      const Positioned(
                          child: Icon(
                        Icons.notifications,
                        size: 30,
                      )),
                      Positioned(
                          child: Container(
                        alignment: Alignment.center,
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green.shade900),
                        child: Text(
                          _notificationCount.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10),
                        ),
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 30,
          ),

          // second section
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 210,
              width: 370,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // gradient: LinearGradient(
                  //     begin: Alignment.topLeft,
                  //     end: Alignment.bottomRight,
                  //     colors: [
                  //       Colors.green.shade900,
                  //       Colors.green.shade700,
                  //       Colors.green.shade600
                  //     ]),
                  color: Colors.green.shade900),
              child: Stack(
                children: [
                  const Positioned(
                      top: 10,
                      left: 20,
                      child: Row(
                        children: [
                          Text(
                            "Holding Value",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.visibility,
                            size: 20,
                          )
                        ],
                      )),
                  Positioned(
                      top: 50,
                      left: 30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "\$25,000.09",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 35),
                          ),
                          Text(
                            "-2891.01%",
                            style: TextStyle(
                                color: Colors.orange.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                        ],
                      )),
                  Positioned(
                      top: 30,
                      right: 15,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        alignment: Alignment.center,
                        height: 25,
                        width: 60,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadiusDirectional.all(
                                Radius.circular(15))),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "USDT",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      )),
                  Positioned(
                      right: 10,
                      bottom: 25,
                      child: Row(
                        children: [
                          CircleTiles(iconData: Icons.arrow_upward_sharp),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleTiles(iconData: Icons.arrow_downward_sharp),
                          const SizedBox(
                            width: 10,
                          ),
                          CircleTiles(iconData: Icons.swap_horiz_sharp),
                        ],
                      )),
                  const Positioned(
                      bottom: 5,
                      right: 30,
                      child: Row(
                        children: [
                          Text(
                            "Send",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Recieve",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "P2P",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

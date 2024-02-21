import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(3, -0.3),
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: const BoxDecoration(
                          color: Colors.deepPurple, shape: BoxShape.circle),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-3, -0.3),
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple, shape: BoxShape.circle),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, -1.2),
                    child: Container(
                      height: 300,
                      width: 600,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 241, 198, 25)),
                    ),
                  ),
                  BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
                      child: Container(color: Colors.transparent)),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Pokhara',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300)),
                        const SizedBox(height: 8),
                        const Text('Good Morning',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        Image.asset('assets/1.png'),
                        const Center(
                            child: Text(
                          '20°C',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 55,
                              fontWeight: FontWeight.w600),
                        )),
                        const Center(
                            child: Text(
                          'ThunderStrom',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w500),
                        )),
                        const SizedBox(
                          height: 8,
                        ),
                        const Center(
                          child: Text(
                            'Wednesday 21 - 9:18 am',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w300),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}

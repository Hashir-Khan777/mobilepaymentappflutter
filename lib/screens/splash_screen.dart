import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/constants/color_contants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorContants.primary,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/logo.png'),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xf05626c4)),
                        width: 156,
                        height: 61,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      height: 55,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            ColorContants.secondary,
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Intant pay',
                          style: TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                    bottom: 20,
                  ),
                  child: const Text(
                    'Your Perfect Payment Partner',
                    style: TextStyle(
                      color: ColorContants.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    navigationDot(color: ColorContants.white),
                    navigationDot(),
                    navigationDot(),
                    navigationDot(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

navigationDot({
  width = 15.0,
  height = 15.0,
  color = ColorContants.secondary,
}) {
  return Container(
    width: width,
    height: height,
    margin: const EdgeInsets.only(right: 4, left: 4),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/constants/color_contants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorContants.primary,
      appBar: AppBar(
        toolbarHeight: 85,
        leadingWidth: 70,
        backgroundColor: const Color(0xf01F222A),
        elevation: 10,
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/user.png'),
            radius: 20,
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  filled: true,
                  fillColor: const Color(0xf0343645),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xf0343645),
                  radius: 27,
                  child: IconButton(
                    iconSize: 40,
                    color: const Color(0xf097A3AB),
                    icon: const Icon(
                      Icons.notifications_none_rounded,
                    ),
                    onPressed: () {},
                  ),
                ),
                const Positioned(
                  top: 25,
                  right: 9,
                  child: Icon(
                    Icons.circle,
                    size: 15,
                    color: Color(0xf04D5DFA),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

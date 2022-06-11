import 'package:flutter/material.dart';
import 'package:mobilepaymentapp/constants/color_contants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorContants.primary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 13.94),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Stack(
              children: [
                Image.asset(
                  'assets/background.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.width * 0.37 - 100,
                  left: MediaQuery.of(context).size.width * 0.35 - 100,
                  child: Image.asset('assets/mobile.png'),
                ),
                Positioned(
                  bottom: MediaQuery.of(context).size.width * 0.37 + 75,
                  left: MediaQuery.of(context).size.width * 0.35 - 115,
                  child: Image.asset('assets/design.png'),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.25 - 100,
                  left: MediaQuery.of(context).size.width * 0.35 - 115,
                  child: const Text(
                    'LOGIN WITH YOUR\nMOBILE PHONE\nNUMBER',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                SizedBox(
                  height: 57,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 0,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      prefixText: '+92',
                      prefixStyle: const TextStyle(
                        color: Color(0xf04D5DFA),
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                      hintText: 'Enter Mobile Number',
                      hintStyle: const TextStyle(
                        color: Color(0xf0858891),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      filled: true,
                      fillColor: const Color(0xf0EDEFFF),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 7,
                  ),
                  child: const Text(
                    '+92',
                    style: TextStyle(
                      color: Color(0xf04D5DFA),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 47,
            margin: const EdgeInsets.only(top: 19, bottom: 17),
            child: ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Verify',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Text(
            'Your personal details are safe with us',
            style: TextStyle(
              color: Color(0xf07C82BA),
              fontSize: 16,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 9),
            child: const Text(
              'Read our Privacy Policy and Terms and Conditions',
              style: TextStyle(
                color: Color(0xf07C82BA),
                fontSize: 13,
              ),
            ),
          )
        ],
      ),
    );
  }
}

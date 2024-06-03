import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(alignment: Alignment.bottomCenter, children: [
          const Image(
            image: AssetImage('assets/images/background_splash.png'),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Color(0xFFF6F5F5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/images/splash_icon.png'),
                  height: 80,
                ),
                const Text(
                  "Non-Contact\n Deliveries",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2D0C57)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: Text(
                    "When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF9586A8),
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0BCE83),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: Text(
                      'order now'.toUpperCase(),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 200,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                  ),
                  child: Text(
                    'dismiss'.toUpperCase(),
                  ),
                )
              ],
            ),
          ),
        ])
      ],
    ));
  }
}

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imagePath = 'assets/images/top_login.png';
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 96),
              child: Container(
                height: 315,
                width: 450,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100)),
                  image: DecorationImage(image: AssetImage(imagePath)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

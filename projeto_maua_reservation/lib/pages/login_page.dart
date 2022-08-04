import 'dart:html';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imagePath = 'assets/images/top_login.png';
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                // foto do topo
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(imagePath)),
                  ),
                ),
              ],
            ),
            // corpo (principal)
            // Stack(
            //   alignment: Alignment.topCenter,
            //   children: [
            //     // parte branca
            //     Container(
            //       height: 500,
            //       width: 450,
            //       decoration: const BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.all(Radius.circular(50)),
            //       ),
            //     ),
            //     Padding(
            //       padding: const EdgeInsets.only(top: 32),
            //       child: Container(
            //         width: 400,
            //         height: 200,
            //         decoration: const BoxDecoration(
            //           color: Color.fromARGB(70, 167, 167, 167),
            //           borderRadius: BorderRadius.all(Radius.circular(50)),
            //         ),
            //         child: Padding(
            //           padding: const EdgeInsets.symmetric(
            //               horizontal: 16, vertical: 32),
            //           child: Column(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               TextField(
            //                 keyboardType: TextInputType.emailAddress,
            //                 decoration: InputDecoration(
            //                   labelText: 'Email',
            //                   enabledBorder: OutlineInputBorder(
            //                     borderSide: BorderSide(color: Colors.blue),
            //                   ),
            //                 ),
            //               ),
            //               TextField(
            //                 obscureText: true,
            //                 decoration: InputDecoration(
            //                   labelText: 'Senha',
            //                   border: OutlineInputBorder(),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromARGB(255, 7, 132, 248),
          child: Center(
            child: Image.network(
              "https://media-exp1.licdn.com/dms/image/C4D03AQGtAetUGzvj_Q/profile-displayphoto-shrink_200_200/0/1549850502850?e=1653523200&v=beta&t=kGzPrxz3623IGqmPjiolV8P7hRbGm2X9Nn1yZ4Ahp4k",
              width: 200,
            ),
          ),
        ),
      ),
    ),
  );
}

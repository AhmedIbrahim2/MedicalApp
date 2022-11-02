// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:medical_app/home.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(

            // ignore: prefer_const_constructors
            image: DecorationImage(
                image: const AssetImage(
                  "assets/image.jpg",
                ),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // ignore: prefer_const_constructors
            Text(
              "Find Your Speicalist",
              // ignore: prefer_const_constructors
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            Text(
              "            Now it's easy to read your prescription \n             and  We will notify you of Medication dates",
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 16),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            custombutton(size, context),
            SizedBox(
              height: size.height / 30,
            )
          ],
        ),
      ),
    );
  }

  Widget custombutton(Size size, BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Home();
      })),
      child: Container(
        height: size.height / 15,
        width: size.width / 2.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(255, 115, 100, 1),
        ),
        alignment: Alignment.center,
        // ignore: prefer_const_constructors
        child: Text(
          "Get Started",
          // ignore: prefer_const_constructors
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

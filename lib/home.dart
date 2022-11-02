// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:medical_app/prescription.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
            height: size.height,
            width: size.width,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.menu,
                      color: Color.fromRGBO(55, 82, 178, 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 80,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/catt.webp",
                              ),
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height / 30,
              ),
              ElevatedButton.icon(
                  onPressed: (() => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Prescription();
                      }))),
                  icon: Icon(Icons.medical_information),
                  label: Text("Prescriptions")),
            ])),
      ),
    );
  }
}

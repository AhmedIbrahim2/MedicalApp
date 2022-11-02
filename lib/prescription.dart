// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class Prescription extends StatefulWidget {
  const Prescription({super.key});

  @override
  State<Prescription> createState() => _PrescriptionState();
}

class _PrescriptionState extends State<Prescription> {
  File? image;
  File? image1;
  final imagepicker = ImagePicker();

  uploadimage() async {
    var pickedimage = await imagepicker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedimage != null) {
        image = File(pickedimage.path);
      } else {}
    });
  }

  imagefromgallary() async {
    var pickedimage = await imagepicker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedimage != null) {
        image1 = File(pickedimage.path);
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Prescription"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: uploadimage,
                  child: Text(
                    "Upload Prescription",
                    style: TextStyle(fontSize: 30, color: Colors.black),
                  )),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            image == null
                ? Text(
                    "No chosen Image ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  )
                : Image.file(image!),
            SizedBox(
              height: size.height / 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ElevatedButton(
                  onPressed: imagefromgallary,
                  child: Text(
                    " Prescription From Gallary",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  )),
            ),
            SizedBox(
              height: size.height / 30,
            ),
            image1 == null
                ? Text(
                    "No chosen Image ",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  )
                : Image.file(image1!)
          ],
        ),
      ),
    );
  }
}

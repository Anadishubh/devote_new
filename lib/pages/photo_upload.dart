import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/button_constant.dart';
import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class PhotoUpload extends StatefulWidget {
  const PhotoUpload({super.key});

  @override
  State<PhotoUpload> createState() => _PhotoUploadState();
}

class _PhotoUploadState extends State<PhotoUpload> {
  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Complete Your Profile",
          style: FontConstant.styleSemiBold(
              fontSize: 18, color: AppColors.constColor),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: screenHeight * 0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg3.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: const BorderRadius.all(Radius.circular(15))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Image.asset("assets/images/upload.png"),
                    ),
                    const Text("Upload Square size photograph in"),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 25),
                      child: Text("jpg or png format."),
                    ),
                    SizedBox(
                      width: 200,
                      child: CustomButton(
                          text: "Upload Photos",
                          onPressed: () {
                            Get.toNamed('/pc');
                          },
                          color: AppColors.primaryColor,
                          textStyle: FontConstant.styleSemiBold(
                              fontSize: 15, color: AppColors.constColor)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "SKIP",
                      style: FontConstant.styleSemiBold(
                          fontSize: 15, color: AppColors.black),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

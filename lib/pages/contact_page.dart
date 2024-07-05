import 'package:devotee_matrimony/constants/CustomTextFeild.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/button_constant.dart';
import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Contact Details",
          style: FontConstant.styleSemiBold(fontSize: 18, color: Colors.white),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/icons/arrow.png'),
          onPressed: () {
            Get.offAndToNamed('/profile2');
          },
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: screenHeight * 0.45,
            width: screenWidth,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg3.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.09,
                left: 22,
                right: 22,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset('assets/images/contact.png'),
                  ),
                  const SizedBox(height: 40),
                  const CustomTextField(labelText: 'Phone number*'),
                  const SizedBox(height: 15),
                  const CustomTextField(labelText: 'Email address*'),
                  const SizedBox(height: 15),
                  const CustomTextField(labelText: 'Instagram'),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CustomButton(
                      text: 'CONTINUE',
                      onPressed: () {
                        Get.offAndToNamed('/location');
                      },
                      color: AppColors.primaryColor,
                      textStyle: FontConstant.styleRegular(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomButton(
                      text: 'Skip',
                      onPressed: () {
                        Get.offAndToNamed('/dashboard');
                      },
                      color: Colors.transparent,
                      textStyle: FontConstant.styleRegular(
                          fontSize: 20, color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

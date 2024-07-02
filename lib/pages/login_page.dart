import 'package:devotee_matrimony/constants/button_constant.dart';
import 'package:devotee_matrimony/constants/color_constant.dart';
import 'package:devotee_matrimony/constants/font_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.45),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/rectangle.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                bottom: screenHeight * 0.6, left: screenWidth * 0.1),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg1.png'),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: screenHeight * 0.51),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg2.png'),
                  fit: BoxFit.contain),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: screenHeight * 0.05),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/purple.png'), scale: 1.25),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: screenHeight * 0.05),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/white.png'), scale: 1.25),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: screenHeight * 0.05),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/wedding.png'), scale: 1.2),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: screenHeight * 0.62),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/logo.png'), scale: 1.2),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Text(
                  'Hare Krishna !',
                  style: FontConstant.styleBold(
                      fontSize: 24, color: AppColors.constColor),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Find your Devotional Match Today',
                style: FontConstant.styleRegular(
                    fontSize: 14, color: AppColors.constColor),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: CustomButton(
                  text: 'LOGIN WITH OTP',
                  onPressed: () {
                    Get.toNamed('/mobile');
                  },
                  color: AppColors.constColor,
                  textStyle: FontConstant.styleRegular(
                      fontSize: 18, color: AppColors.primaryColor),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: CustomButton(
                  text: 'LOGIN WITH EMAIL ID',
                  onPressed: () {
                    Get.toNamed('/mobile');
                  },
                  color: AppColors.constColor,
                  textStyle: FontConstant.styleRegular(
                      fontSize: 18, color: AppColors.primaryColor),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 18),
                child: Text(
                  textAlign: TextAlign.center,
                  'If you are outside of India, You can use email id for login',
                  style: FontConstant.styleRegular(
                      fontSize: 18, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

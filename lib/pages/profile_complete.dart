import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/button_constant.dart';
import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class ProfileComplete extends StatefulWidget {
  const ProfileComplete({super.key});

  @override
  State<ProfileComplete> createState() => _ProfileCompleteState();
}

class _ProfileCompleteState extends State<ProfileComplete> {
  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Profile Completeness",
          style: FontConstant.styleSemiBold(
              fontSize: 18, color: AppColors.constColor),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/icons/arrow.png'),
          onPressed: () {
            Get.offAndToNamed('/photo');
          },
        ),
      ),
      body: Stack(children: [
        Container(
          height: screenHeight * 0.4,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg3.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "Your Profile is 40% Complete",
                  style: FontConstant.styleSemiBold(
                      fontSize: 17, color: AppColors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 10, left: 8, right: 8),
                child: SizedBox(
                  width: double.infinity,
                  height: 8,
                  child: LinearProgressIndicator(
                    value: 0.4,
                    backgroundColor: Colors.grey.shade100,
                    color: const Color(0xff583689),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "Make Your profile 100% complete by adding\nbelow details and get more response.",
                  textAlign: TextAlign.center,
                  style: FontConstant.styleSemiBold(
                      fontSize: 14, color: AppColors.black),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 24, left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                        height: 60,
                        width: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image(
                            height: 40,
                            width: 40,
                            image: AssetImage("assets/images/user.png"),
                          ),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      //  mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ADD PERSONAL DETAILS",
                          style: FontConstant.styleSemiBold(
                              fontSize: 16, color: AppColors.black),
                        ),
                        Text(
                          "Let's propects know what you look likes",
                          style: FontConstant.styleRegular(
                              fontSize: 13, color: AppColors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "+ Add Details",
                            style: FontConstant.styleSemiBold(
                                fontSize: 15, color: AppColors.primaryColor),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 40, left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                      width: 60,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image(
                          width: 40,
                          height: 40,
                          image: AssetImage("assets/images/education.png"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ADD Education & OCCUPATION\nDETAILS",
                          style: FontConstant.styleSemiBold(
                              fontSize: 16, color: AppColors.black),
                        ),
                        Text(
                          "Let's propects know what you look likes",
                          style: FontConstant.styleRegular(
                              fontSize: 13, color: AppColors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "+ Add Details",
                            style: FontConstant.styleSemiBold(
                                fontSize: 15, color: AppColors.primaryColor),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40, left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image(
                            height: 40,
                            width: 40,
                            image: AssetImage("assets/images/family.png")),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      //  mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ADD FAMILY DETAILS",
                          style: FontConstant.styleSemiBold(
                              fontSize: 16, color: AppColors.black),
                        ),
                        Text(
                          "Let's propects know what you look likes",
                          style: FontConstant.styleRegular(
                              fontSize: 13, color: AppColors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "+ Add Details",
                            style: FontConstant.styleSemiBold(
                                fontSize: 15, color: AppColors.primaryColor),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40, left: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                      width: 60,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image(
                          height: 40,
                          width: 40,
                          image: AssetImage('assets/images/money.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      //  mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ADD ANNUAL INCOME",
                          style: FontConstant.styleSemiBold(
                              fontSize: 16, color: AppColors.black),
                        ),
                        Text(
                          "Let's propects know what you look likes",
                          style: FontConstant.styleRegular(
                              fontSize: 13, color: AppColors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            "+ Add Details",
                            style: FontConstant.styleSemiBold(
                                fontSize: 15, color: AppColors.primaryColor),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40,left: 26,right: 26),
                child: CustomButton(
                    text: "GO TO DASHBOARD",
                    onPressed: () {
                      Get.offAndToNamed('/dashboard');
                    },
                    color: AppColors.primaryColor,
                    textStyle: FontConstant.styleSemiBold(
                        fontSize: 15, color: AppColors.constColor)),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/CustomTextFeild.dart';
import '../constants/button_constant.dart';
import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class Occupation extends StatefulWidget {
  const Occupation({super.key});

  @override
  State<Occupation> createState() => _OccupationState();
}

class _OccupationState extends State<Occupation> {
  TextEditingController occupation = TextEditingController();
  TextEditingController currentjoblocation = TextEditingController();
  TextEditingController companyname = TextEditingController();
  TextEditingController currentjob = TextEditingController();
  TextEditingController currentctc = TextEditingController();
  TextEditingController workexperience = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Occupation",
          style: FontConstant.styleSemiBold(
              fontSize: 18, color: AppColors.constColor),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/icons/arrow.png'),
          onPressed: () {
            Navigator.pop(context);
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
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Image.asset("assets/images/occupation.png"),
                ),
                Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Occupation",
                      style: FontConstant.styleRegular(
                          fontSize: 16, color: AppColors.black),
                    )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CustomTextField(controller: occupation),
                ),
                Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Current Job Location",
                      style: FontConstant.styleRegular(
                          fontSize: 16, color: AppColors.black),
                    )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CustomTextField(controller: currentjoblocation),
                ),
                Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Company Name",
                      style: FontConstant.styleRegular(
                          fontSize: 16, color: AppColors.black),
                    )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CustomTextField(controller: companyname),
                ),
                Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Current Job",
                      style: FontConstant.styleRegular(
                          fontSize: 16, color: AppColors.black),
                    )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CustomTextField(controller: currentjob),
                ),
                Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Working Experience",
                      style: FontConstant.styleRegular(
                          fontSize: 16, color: AppColors.black),
                    )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CustomTextField(controller: workexperience),
                ),
                Container(
                    padding: const EdgeInsets.only(bottom: 5),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Current CTC",
                      style: FontConstant.styleRegular(
                          fontSize: 16, color: AppColors.black),
                    )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: CustomTextField(controller: currentctc),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: CustomButton(
                    text: "FINISH",
                    onPressed: () {
                      Get.toNamed('/photo');
                    },
                    color: AppColors.primaryColor,
                    textStyle: FontConstant.styleRegular(
                        fontSize: 20, color: AppColors.constColor),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

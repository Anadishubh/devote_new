import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/button_constant.dart';
import '../constants/color_constant.dart';
import '../constants/font_constant.dart';
import '../constants/profile_constant.dart';

class Profile1Page extends StatefulWidget {
  const Profile1Page({super.key});

  @override
  State<Profile1Page> createState() => _Profile1PageState();
}

class _Profile1PageState extends State<Profile1Page> {
  int _selectedIndex = -1;
  int _selectedIndex1 = -1;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Let's Build Your Profile",
          style: FontConstant.styleMedium(fontSize: 20, color: Colors.white),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/icons/arrow.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.2),
              child: const Image(image: AssetImage('assets/images/bg3.png')),
            ),
            Container(
              height: screenHeight,
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'This Profile is for',
                    style: FontConstant.styleMedium(
                        fontSize: 16, color: Colors.black),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 430,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 16 / 9,
                      ),
                      itemCount: profiles.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                          child: Card(
                            color: _selectedIndex == index
                                ? AppColors.primaryLight
                                : AppColors.background,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: _selectedIndex == index
                                    ? Border.all(
                                        color: AppColors.primaryColor, width: 2)
                                    : null,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 20,
                                    child: profiles[index].image,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    profiles[index].topic,
                                    style: FontConstant.styleMedium(
                                        fontSize: 14,
                                        color: AppColors.primaryColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Text(
                    'Gender',
                    style: FontConstant.styleMedium(
                        fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 100,
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 16 / 9,
                      ),
                      itemCount: genders.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedIndex1 = index;
                            });
                          },
                          child: Card(
                            color: _selectedIndex1 == index
                                ? AppColors.primaryLight
                                : AppColors.background,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: _selectedIndex1 == index
                                    ? Border.all(
                                        color: AppColors.primaryColor, width: 2)
                                    : null,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 20,
                                    child: genders[index].image,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    genders[index].gender,
                                    style: FontConstant.styleMedium(
                                        fontSize: 14,
                                        color: AppColors.primaryColor),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18,top: 20),
                    child: CustomButton(
                      text: 'CONTINUE',
                      onPressed: () {
                        Get.toNamed('/profile2');
                      },
                      color: AppColors.primaryColor,
                      textStyle:
                      FontConstant.styleRegular(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../constants/color_constant.dart';
import '../constants/font_constant.dart';
import 'home_body.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedText = "";
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: AppColors.background,
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
          Column(
            children: [
              Stack(children: [
                Container(
                  padding: const EdgeInsets.only(top: 60),
                  height: 150,
                  decoration: const BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18),
                          bottomRight: Radius.circular(18))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: GestureDetector(
                            onTap: () =>
                                {scaffoldKey.currentState?.openDrawer()},
                            child: SvgPicture.asset("assets/images/menu.svg")),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Spacer(),
                      Text(
                        "Dashboard",
                        style: FontConstant.styleSemiBold(
                            fontSize: 18, color: AppColors.constColor),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => {Get.toNamed('/searchresult')},
                        child: Padding(
                          padding: const EdgeInsets.only(right: 5, top: 5),
                          child: SvgPicture.asset("assets/images/searchd.svg"),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, top: 5, right: 15),
                        child:
                            SvgPicture.asset("assets/images/notification.svg"),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 110, left: 15, right: 15),
                  height: 70,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: AppColors.constColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "25",
                            style: FontConstant.styleRegular(
                                fontSize: 22, color: AppColors.primaryColor),
                          ),
                          Text(
                            "   Requests  ",
                            style: FontConstant.styleRegular(
                                fontSize: 14, color: AppColors.black),
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 1,
                        color: Colors.grey.shade200,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "10",
                            style: FontConstant.styleRegular(
                                fontSize: 22, color: AppColors.primaryColor),
                          ),
                          Text(
                            "   Messages   ",
                            style: FontConstant.styleRegular(
                                fontSize: 14, color: AppColors.black),
                          )
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 1,
                        color: Colors.grey.shade200,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "50",
                            style: FontConstant.styleRegular(
                                fontSize: 22, color: AppColors.primaryColor),
                          ),
                          Text(
                            "Notifications",
                            style: FontConstant.styleRegular(
                                fontSize: 14, color: AppColors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
              const Expanded(
                child: SingleChildScrollView(
                  child: HomeBody(),
                ),
              )
            ],
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: AppColors.drawerBackground,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 140,
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
              ),
              decoration:
                  const BoxDecoration(color: AppColors.drawerBackground),
              child: Column(
                children: [
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        Container(
                          width: 70.0,
                          height: 70.0,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/avatar.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 70.0,
                          height: 70.0,
                          alignment: Alignment.bottomRight,
                          child: Container(
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.primaryColor),
                              child: SvgPicture.asset(
                                  "assets/images/edit_icon.svg")),
                        )
                      ]),
                      const SizedBox(width: 5),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            " Prashant Yadav",
                            style: FontConstant.styleMedium(
                                fontSize: 15, color: AppColors.constColor),
                          ),
                          Row(
                            children: [
                              Image.asset("assets/images/Protect.png"),
                              Text(
                                "Verified",
                                style: FontConstant.styleMedium(
                                    fontSize: 12, color: AppColors.constColor),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Image.asset("assets/images/Crown.png"),
                              ),
                              Text(
                                "Platanium",
                                style: FontConstant.styleMedium(
                                    fontSize: 12, color: AppColors.constColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () => {scaffoldKey.currentState?.closeDrawer()},
                        child: Container(
                          padding: const EdgeInsets.all(3),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.constColor),
                              shape: BoxShape.circle),
                          child: SvgPicture.asset("assets/images/cross.svg"),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Row(
                      children: [
                        Expanded(
                          child: Stack(children: [
                            Container(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              height: 15,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    4.0), // Adjust the radius as needed
                                child: LinearProgressIndicator(
                                  value: 0.6,
                                  backgroundColor: Colors.grey.shade100,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                            Container(
                                height: 15,
                                padding: const EdgeInsets.only(left: 15, right: 5),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Profile Status - 80%",
                                  style: FontConstant.styleRegular(
                                      fontSize: 10,
                                      color: AppColors.constColor),
                                ))
                          ]),
                        ),
                        SvgPicture.asset("assets/images/edit_icon.svg")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/dashboard_icon.svg',
                width: 22.0, // Set the desired width
                height: 22.0, // Set the desired height
              ),
              title: Text(
                'Dashboard',
                style: FontConstant.styleRegular(
                    fontSize: 15, color: AppColors.constColor),
              ),
              // onTap: () => {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => Dashboard(),
              //       ))
              // },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/profile_icon.svg',
                width: 22.0, // Set the desired width
                height: 22.0, // Set the desired height
              ),
              title: Text(
                'My Profile',
                style: FontConstant.styleRegular(
                    fontSize: 15, color: AppColors.constColor),
              ),
              // onTap: () => {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => LivePsychologist(),
              //       ))
              // },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/package_icon.svg',
                width: 22.0, // Set the desired width
                height: 22.0, // Set the desired height
              ),
              title: Text(
                'MY Packages',
                style: FontConstant.styleRegular(
                    fontSize: 15, color: AppColors.constColor),
              ),
              // onTap: () => {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => YogaPractitioner(),
              //       ))
              // },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/payment_icon.svg',
                width: 22.0, // Set the desired width
                height: 22.0, // Set the desired height
                fit: BoxFit.cover,
              ),
              title: Text(
                'My Payments',
                style: FontConstant.styleRegular(
                    fontSize: 15, color: AppColors.constColor),
              ),
              // onTap: () => {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => Profile(),
              //       ))
              // },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/plan_icon.svg',

                width: 24.0, // Set the desired width
                height: 22.0, // Set the desired height
              ),
              title: Text(
                'My Plan',
                style: FontConstant.styleRegular(
                    fontSize: 15, color: AppColors.constColor),
              ),
              // onTap: () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => MyTransaction(),
              //       ));
              // }
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/contact_icon.svg',
                width: 22.0, // Set the desired width
                height: 22.0, // Set the desired height
              ),
              title: Text(
                'Connect Matches',
                style: FontConstant.styleRegular(
                    fontSize: 15, color: AppColors.constColor),
              ),
              onTap: () {
                Navigator.pop(context);
                // Add navigation logic here
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/chat_icon.svg',
                width: 22.0, // Set the desired width
                height: 22.0, // Set the desired height
              ),
              title: Text(
                'My Chat',
                style: FontConstant.styleRegular(
                    fontSize: 15, color: AppColors.constColor),
              ),
              onTap: () {
                Navigator.pop(context);
                // Add navigation logic here
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/support_icon.svg',
                width: 22.0, // Set the desired width
                height: 22.0, // Set the desired height
              ),
              title: Text(
                'Support',
                style: FontConstant.styleRegular(
                    fontSize: 15, color: AppColors.constColor),
              ),
              onTap: () {
                Navigator.pop(context);
                // Add navigation logic here
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/feedback_icon.svg',
                width: 22.0, // Set the desired width
                height: 22.0, // Set the desired height
              ),
              title: Text(
                'Feedback',
                style: FontConstant.styleRegular(
                    fontSize: 15, color: AppColors.constColor),
              ),
              onTap: () {
                Navigator.pop(context);
                // Add navigation logic here
              },
            ),
            ListTile(
              leading: SvgPicture.asset(
                'assets/images/privacy_icon.svg',
                width: 22.0, // Set the desired width
                height: 22.0, // Set the desired height
              ),
              title: Text(
                'Privacy Policy',
                style: FontConstant.styleRegular(
                    fontSize: 15, color: AppColors.constColor),
              ),
              onTap: () {
                Get.back();
                // Add navigation logic here
              },
            ),
            GestureDetector(
              onTap: () {
                Get.offAndToNamed('/login');
              },
              child: Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                alignment: Alignment.center,
                height: 40,
                color: AppColors.drawerBackground,
                child: Container(
                  height: 40,
                  // width: 110,
                  decoration: const BoxDecoration(
                    color: AppColors.constColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Logout",
                    style: FontConstant.styleSemiBold(
                        fontSize: 15, color: AppColors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}

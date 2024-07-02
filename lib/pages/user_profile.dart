import 'package:flutter/material.dart';
import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLight,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Profile",
          style: FontConstant.styleSemiBold(
              fontSize: 18, color: AppColors.constColor),
        ),
      ),
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.green,
              child: Image.asset(
                "assets/images/hero.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 220, left: 15, right: 15),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.constColor,
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      child: Image.asset(
                        "assets/images/hero.jpg",
                        fit: BoxFit.cover,
                        height: 90,
                        width: 90,
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ram Potheneni",
                        style: FontConstant.styleRegular(
                            fontSize: 13, color: Colors.grey),
                      ),
                      Text(
                        "ID-090382",
                        style: FontConstant.styleRegular(
                            fontSize: 13, color: Colors.grey),
                      ),
                      Text(
                        "You are a subscribed user",
                        style: FontConstant.styleRegular(
                            fontSize: 13, color: Colors.grey),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3, bottom: 3),
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            color: AppColors.primaryColor,
                            //   borderRadius:
                            //     BorderRadius.all(Radius.circular(10))
                          ),
                          child: Text(
                            "Upgrade Plan",
                            style: FontConstant.styleSemiBold(
                                fontSize: 13, color: AppColors.constColor),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: AppColors.constColor,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.shade200)),
                      child: const Icon(
                        Icons.people,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Text(
                      "Matches",
                      style: FontConstant.styleSemiBold(
                          fontSize: 12, color: AppColors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: AppColors.constColor,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.shade200)),
                      child: const Icon(
                        Icons.thumb_up,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Text(
                      "Shortlisted",
                      style: FontConstant.styleSemiBold(
                          fontSize: 12, color: AppColors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: AppColors.constColor,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.shade200)),
                      child: const Icon(
                        Icons.person,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Text(
                      "Profile View",
                      style: FontConstant.styleSemiBold(
                          fontSize: 12, color: AppColors.black),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: AppColors.constColor,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey.shade200)),
                      child: const Icon(
                        Icons.message,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    Text(
                      "Chat",
                      style: FontConstant.styleSemiBold(
                          fontSize: 12, color: AppColors.black),
                    )
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 20, bottom: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.notifications,
                      color: AppColors.primaryColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Notification",
                        style: FontConstant.styleSemiBold(
                            fontSize: 13, color: AppColors.black),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primaryColor,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 10, bottom: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.subtitles,
                      color: AppColors.primaryColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Subscription Plans",
                        style: FontConstant.styleSemiBold(
                            fontSize: 13, color: AppColors.black),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primaryColor,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 10, bottom: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.settings,
                      color: AppColors.primaryColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Settings",
                        style: FontConstant.styleSemiBold(
                            fontSize: 13, color: AppColors.black),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primaryColor,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 10, bottom: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.terminal,
                      color: AppColors.primaryColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Term & Condition",
                        style: FontConstant.styleSemiBold(
                            fontSize: 13, color: AppColors.black),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primaryColor,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 10, bottom: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.logout,
                      color: AppColors.primaryColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Logout",
                        style: FontConstant.styleSemiBold(
                            fontSize: 13, color: AppColors.black),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: AppColors.primaryColor,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
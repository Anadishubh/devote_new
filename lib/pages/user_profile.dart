import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.primaryColor, Colors.green],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Image.asset(
                    "assets/images/hero.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 180,
                  left: 15,
                  right: 15,
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.constColor,
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            child: Image.asset(
                              "assets/images/hero.jpg",
                              fit: BoxFit.cover,
                              height: 80,
                              width: 80,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Ram Potheneni",
                              style: FontConstant.styleRegular(
                                  fontSize: 16, color: Colors.black),
                            ),
                            Text(
                              "ID-090382",
                              style: FontConstant.styleRegular(
                                  fontSize: 14, color: Colors.grey),
                            ),
                            Text(
                              "You are a subscribed user",
                              style: FontConstant.styleRegular(
                                  fontSize: 14, color: Colors.grey),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 5),
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Text(
                                "Upgrade Plan",
                                style: FontConstant.styleSemiBold(
                                    fontSize: 14, color: AppColors.constColor),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildProfileOption(
                    icon: Icons.people,
                    label: "Matches",
                    onTap: () {},
                  ),
                  buildProfileOption(
                    icon: Icons.thumb_up,
                    label: "Shortlisted",
                    onTap: () {},
                  ),
                  buildProfileOption(
                    icon: Icons.person,
                    label: "Profile View",
                    onTap: () {},
                  ),
                  buildProfileOption(
                    icon: Icons.message,
                    label: "Chats",
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            buildListTile(
              icon: Icons.notifications,
              label: "Notification",
              onTap: () {},
            ),
            buildListTile(
              icon: Icons.subtitles,
              label: "Subscription Plans",
              onTap: () {},
            ),
            buildListTile(
              icon: Icons.settings,
              label: "Settings",
              onTap: () {},
            ),
            buildListTile(
              icon: Icons.terminal,
              label: "Term & Condition",
              onTap: () {},
            ),
            buildListTile(
              icon: Icons.logout,
              label: "Logout",
              onTap: () {
                Get.offAndToNamed('/login');
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileOption({required IconData icon, required String label, required Function onTap}) {
    return InkWell(
      onTap: () => onTap(),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.constColor,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade200),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Icon(
              icon,
              color: AppColors.primaryColor,
              size: 30,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: FontConstant.styleSemiBold(
                fontSize: 14, color: AppColors.black),
          ),
        ],
      ),
    );
  }

  Widget buildListTile({required IconData icon, required String label, required Function onTap}) {
    return InkWell(
      onTap: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColors.primaryColor,
              size: 30,
            ),
            const SizedBox(width: 15),
            Text(
              label,
              style: FontConstant.styleSemiBold(
                  fontSize: 16, color: AppColors.black),
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: AppColors.primaryColor,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
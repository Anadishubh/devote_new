import 'package:devotee_matrimony/constants/color_constant.dart';
import 'package:devotee_matrimony/constants/font_constant.dart';
import 'package:devotee_matrimony/pages/home.dart';
import 'package:devotee_matrimony/pages/search_page.dart';
import 'package:devotee_matrimony/pages/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  PageController controller = PageController(initialPage: 4);
  var selected = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: const [
          Center(
            child: Text('chat'),
          ),
          UserProfile(),
          Center(
            child: Text('liked'),
          ),
          SearchPage(),
          Home(),
        ],
      ),
      bottomNavigationBar: StylishBottomBar(
        notchStyle: NotchStyle.circle,
        backgroundColor: AppColors.primaryColor,
        option: AnimatedBarOptions(
          iconSize: 30,
          barAnimation: BarAnimation.fade,
          iconStyle: IconStyle.Default,
        ),
        items: [
          BottomBarItem(
            icon: const Icon(Icons.chat_outlined),
            title: Text(
              'Chat',
              style:
                  FontConstant.styleSemiBold(fontSize: 12, color: Colors.white),
            ),
            backgroundColor: Colors.white,
          ),
          BottomBarItem(
            icon: const Icon(Icons.person_outline),
            title: Text(
              'Profile',
              style:
                  FontConstant.styleSemiBold(fontSize: 12, color: Colors.white),
            ),
            backgroundColor: Colors.white,
          ),
          BottomBarItem(
            icon: const Icon(Icons.favorite_border),
            title: Text(
              'Liked',
              style:
                  FontConstant.styleSemiBold(fontSize: 12, color: Colors.white),
            ),
            backgroundColor: Colors.white,
          ),
          BottomBarItem(
            icon: const Icon(Icons.search),
            title: Text(
              'Search',
              style:
                  FontConstant.styleSemiBold(fontSize: 12, color: Colors.white),
            ),
            backgroundColor: Colors.white,
          ),
        ],
        fabLocation: StylishBarFabLocation.center,
        hasNotch: true,
        currentIndex: selected,
        onTap: (index) {
          setState(() {
            selected = index;
            controller.jumpToPage(index);
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          setState(() {
            controller.jumpToPage(4);
          });
        },
        backgroundColor: const Color(0xff583689),
        child: const Icon(
          Icons.home_outlined,
          size: 30,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

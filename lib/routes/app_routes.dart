import 'package:devotee_matrimony/pages/dashboard.dart';
import 'package:devotee_matrimony/pages/education_page.dart';
import 'package:devotee_matrimony/pages/family_page.dart';
import 'package:devotee_matrimony/pages/login_page.dart';
import 'package:devotee_matrimony/pages/mobile_page.dart';
import 'package:devotee_matrimony/pages/occupation.dart';
import 'package:devotee_matrimony/pages/otp_page.dart';
import 'package:devotee_matrimony/pages/photo_upload.dart';
import 'package:devotee_matrimony/pages/profile1_page.dart';
import 'package:devotee_matrimony/pages/profile2_page.dart';
import 'package:devotee_matrimony/pages/profile_complete.dart';
import 'package:devotee_matrimony/pages/profile_details.dart';
import 'package:devotee_matrimony/pages/search_page.dart';
import 'package:devotee_matrimony/pages/search_result.dart';
import 'package:get/get.dart';
import '../pages/splash_screen.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String otp = '/otp';
  static const String mobile = '/mobile';
  static const String profile1 = '/profile1';
  static const String profile2 = '/profile2';
  static const String education = '/education';
  static const String family = '/family';
  static const String search = '/search';
  static const String profileDtls = '/profiledtls';
  static const String occupation = '/occupation';
  static const String photo = '/photo';
  static const String profileComplete = '/pc';
  static const String dashboard = '/dashboard';
  static const String searchResult = '/searchResult';


  static final List<GetPage> routes = [
    GetPage(
      name: splash,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: login,
      page: () => const LoginPage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: otp,
      page: () => const Otp(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: mobile,
      page: () => const MobilePage(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: profile1,
      page: () => const Profile1Page(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: profile2,
      page: () => const Profile2(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: education,
      page: () => const EducationPage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: family,
      page: () => const FamilyPage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: search,
      page: () => const SearchPage(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: profileDtls,
      page: () => const ProfileDetailsScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: occupation,
      page: () => const Occupation(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: photo,
      page: () => const PhotoUpload(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: profileComplete,
      page: () => const ProfileComplete(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: dashboard,
      page: () => const Dashboard(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
    GetPage(
      name: searchResult,
      page: () => const SearchResult(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 400),
    ),
  ];
}

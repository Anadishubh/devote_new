import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile {
  final String topic;
  final Image image;

  Profile({
    required this.topic,
    required this.image,
  });
}

final List<Profile> profiles = [
  Profile(
    topic: "Myself",
    image: Image.asset('assets/images/icons/user.png'),
  ),
  Profile(
      topic: "My Relative",
      image: Image.asset('assets/images/icons/relative.png')),
  Profile(topic: "My Son", image: Image.asset('assets/images/icons/Headm.png')),
  Profile(
      topic: "My Daughter",
      image: Image.asset('assets/images/icons/headf.png')),
  Profile(
      topic: "My Brother", image: Image.asset('assets/images/icons/male.png')),
  Profile(
      topic: "My Sister", image: Image.asset('assets/images/icons/female.png')),
  Profile(
      topic: "Marriage Burrow",
      image: Image.asset('assets/images/icons/org.png')),
  Profile(
      topic: "My Friend", image: Image.asset('assets/images/icons/friend.png')),
];

class Gender {
  final String gender;
  final Image image;

  Gender({required this.gender, required this.image});
}

final List<Gender> genders = [
  Gender(
    gender: "Male",
    image: Image.asset('assets/images/icons/male.png'),
  ),
  Gender(
    gender: "Female",
    image: Image.asset('assets/images/icons/female.png'),
  ),
];

class Looking {
  final String gender;
  final Image image;

  Looking({required this.gender, required this.image});
}

final List<Looking> looking = [
  Looking(
    gender: "Groom",
    image: Image.asset('assets/images/icons/male.png'),
  ),
  Looking(
    gender: "Bride",
    image: Image.asset('assets/images/icons/female.png'),
  ),
];


class HeightController extends GetxController {
  var selectedItem = RxnString();

  static List<String> heightTypes() {
    List<String> heights = [];
    for (int feet = 3; feet <= 7; feet++) {
      for (int inches = 0; inches < 12; inches++) {
        if (inches == 0) {
          heights.add('$feet ft');
        } else {
          heights.add('$feet ft $inches inch');
        }
      }
    }
    return heights;
  }

  void selectItem(String? value) {
    selectedItem.value = value;
  }
}

class MartialController extends GetxController {
  var selectedItem = RxnString();

  static List<String> martialStatus() {
    List<String> status = [
      'Never Married',
      'Married',
      'Widow/Widower',
      'Divorced',
      'Separated'
    ];
    return status;
  }

  void selectItem(String? value) {
    selectedItem.value = value;
  }
}

class ReligionController extends GetxController {
  var selectedItem = RxnString();

  static List<String> religionStatus() {
    List<String> religion = [
      "Hindu",
      "Islam",
      "Christian",
      "Sikh",
      "Jain",
      "Other",
    ];
    return religion;
  }

  void selectItem(String? value) {
    selectedItem.value = value;
  }
}

class CasteController extends GetxController {
  var selectedItem = RxnString();

  static List<String> casteStatus() {
    List<String> castes = [
      "Brahmin",
      "Kshatriya",
      "Vaishya",
      "Shudra",
      "Jat",
      "Gujjar",
      "Yadav",
      "Baniya",
      "Thakur",
      "Rajput",
      "Kayastha",
      "Agarwal",
      "Maratha",
      "Reddy",
      "Patel",
      "Kamma",
      "Nair",
      "Saini",
      "Lingayat",
      "Ezhava",
      "Other",
    ];
    return castes;
  }

  void selectItem(String? value) {
    selectedItem.value = value;
  }
}

class CountryController extends GetxController {
  var selectedItem = RxnString();

  static List<String> countryList() {
    List<String> country = [
      "India",
      "United States",
      "United Kingdom",
      "Canada",
      "Australia",
      "New Zealand",
      "Singapore",
      "United Arab Emirates",
      "Saudi Arabia",
      "Qatar",
      "Other",
    ];
    return country;
  }

  void selectItem(String? value) {
    selectedItem.value = value;
  }
}

class StateController extends GetxController {
  var selectedItem = RxnString();

  static List<String> stateRegion() {
    List<String> regions = [
      "Andhra Pradesh",
      "Arunachal Pradesh",
      "Assam",
      "Bihar",
      "Chhattisgarh",
      "Goa",
      "Gujarat",
      "Haryana",
      "Himachal Pradesh",
      "Jharkhand",
      "Karnataka",
      "Kerala",
      "Madhya Pradesh",
      "Maharashtra",
      "Manipur",
      "Meghalaya",
      "Mizoram",
      "Nagaland",
      "Odisha",
      "Punjab",
      "Rajasthan",
      "Sikkim",
      "Tamil Nadu",
      "Telangana",
      "Tripura",
      "Uttar Pradesh",
      "Uttarakhand",
      "West Bengal",
      "Andaman and Nicobar Islands",
      "Chandigarh",
      "Delhi",
      "Puducherry",
    ];
    return regions;
  }

  void selectItem(String? value) {
    selectedItem.value = value;
  }
}


class ComplexionController extends GetxController {
  var selectedItem = RxnString();

  static List<String> complexionColors() {
    return [
      'Fair',
      'Medium',
      'Olive',
      'Brown',
      'Dark',
    ];
  }

  void selectItem(String? value) {
    selectedItem.value = value;
  }
}
class QualificationController extends GetxController {
  var selectedItem = RxnString();

  static List<String> qualifications() {
    return [
      'High School',
      'Diploma',
      'Bachelor\'s Degree',
      'Master\'s Degree',
      'Doctorate',
      'Other',
    ];
  }

  void selectItem(String? value) {
    selectedItem.value = value;
  }
}
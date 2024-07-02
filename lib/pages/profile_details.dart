import 'package:devotee_matrimony/constants/color_constant.dart';
import 'package:devotee_matrimony/constants/font_constant.dart';
import 'package:flutter/material.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Profile Details',
          style: FontConstant.styleMedium(fontSize: 18, color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.filter_list_alt,
              color: Colors.white,
            ),
            onPressed: () {
              // Add filter functionality
            },
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(),
            BasicDetails(),
          ],
        ),
      ),
    );
  }
}

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({super.key});

  @override
  _ProfileHeaderState createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 390,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/girl1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.9),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 5,
          left: 18,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Janvi Singla (ID:M1311901)',
                style: FontConstant.styleSemiBold(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Software Professional - Graduate',
                    style: FontConstant.styleSemiBold(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 120),
                  GestureDetector(
                    onTap: toggleFavorite,
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              Text(
                '26 Years | 5ft 5 inch',
                style: FontConstant.styleSemiBold(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ],
    );
  }
}

class BasicDetails extends StatelessWidget {
  const BasicDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Profile created by myself',
                style: FontConstant.styleBold(fontSize: 12, color: Colors.black),
              ),
              const SizedBox(width: 5),
              Text(
                '|',
                style: FontConstant.styleBold(fontSize: 12, color: Colors.black),
              ),
              const SizedBox(width: 5),
              Text(
                'Last Login: 3 minutes ago',
                style: FontConstant.styleBold(fontSize: 12, color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            'Basic Details:',
            style: FontConstant.styleSemiBold(
              fontSize: 18,
              color: AppColors.primaryColor,
            ),
          ),
          const SizedBox(height: 8),
          const BasicDetailsGrid(),
        ],
      ),
    );
  }
}

class BasicDetailsGrid extends StatelessWidget {
  const BasicDetailsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      spacing: 16,
      runSpacing: 16,
      children: [
        DetailRow(
          icon: Icons.male,
          title: 'Gender',
          value: 'Female',
        ),
        DetailRow(
          icon: Icons.cake,
          title: 'Birth Date',
          value: '19 Oct, 1985',
        ),
        DetailRow(
          icon: Icons.favorite_border,
          title: 'Religion',
          value: 'Hindu',
        ),
        DetailRow(
          icon: Icons.favorite,
          title: 'Marital Status',
          value: 'Never Married',
        ),
        DetailRow(
          icon: Icons.school,
          title: 'Study',
          value: 'Master degree in MSc',
        ),
        DetailRow(
          icon: Icons.language,
          title: 'Language',
          value: 'English, Hindi, Punjabi, French',
        ),
        DetailRow(
          icon: Icons.location_on,
          title: 'Lived In',
          value: 'Delhi/NCR',
        ),
        DetailRow(
          icon: Icons.work,
          title: 'Occupation',
          value: 'Finance Professional',
        ),
      ],
    );
  }
}

class DetailRow extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const DetailRow({
    required this.icon,
    required this.title,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width / 2) - 24,
      child: Row(
        children: [
          Icon(icon, color: Colors.pink),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: FontConstant.styleRegular(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  value,
                  style: FontConstant.styleRegular(
                    fontSize: 12,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
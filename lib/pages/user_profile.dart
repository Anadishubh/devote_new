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
      backgroundColor: AppColors.background,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Profile',
          style: FontConstant.styleSemiBold(fontSize: 18, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey[200],
                    child:
                        Icon(Icons.person, size: 80, color: Colors.grey[400]),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('+ Add Image',
                        style: TextStyle(color: Colors.purple)),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide()
                      )
                    ),
                    height: 50,
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone_android,
                          color: Colors.orange,
                        ),
                        Text(
                          'Edit Mobile No.',
                          style: FontConstant.styleRegular(
                              fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(),
                      ),
                    ),
                    height: 50,
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.orange,
                        ),
                        Text(
                          'Edit Email ID',
                          style: FontConstant.styleRegular(
                              fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Your profile is 40% Complete'),
            LinearProgressIndicator(
              value: 0.4,
              backgroundColor: Colors.grey[200],
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.purple),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Make your profile 100% complete by adding below details and get more responses.',
                textAlign: TextAlign.center,
              ),
            ),
            const ListTile(
              title: Text('Basic Details'),
              trailing: Icon(Icons.edit, color: Colors.pink),
            ),
            _buildDetailRow('Posted by', 'Self'),
            _buildDetailRow('Title', 'Mr'),
            _buildDetailRow('Name', 'Harpreet Singh'),
            _buildDetailRow('Surname', 'Rayat'),
            _buildDetailRow('Date of Birth', '05 July 2025'),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value),
        ],
      ),
    );
  }
}

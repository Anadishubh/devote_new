import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/button_constant.dart';
import '../constants/color_constant.dart';
import '../constants/font_constant.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final TextEditingController _otpController = TextEditingController();
  final List<TextEditingController> _otpControllers = List.generate(4, (index) => TextEditingController());

  @override
  void dispose() {
    _otpController.dispose();
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'Verify',
          style: FontConstant.styleSemiBold(fontSize: 18, color: Colors.white),
        ),
        leading: IconButton(
          icon: Image.asset('assets/images/icons/arrow.png'),
          onPressed: () {
            Get.offAndToNamed('/mobile');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: screenHeight * 0.4,
              width: screenWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: screenWidth * 0.36,
              right: screenWidth * 0.36,
              child: Image.asset('assets/images/otp.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Code is sent to +91 *******876',
                      style: FontConstant.styleRegular(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(4, (index) => _buildOtpTextField(index)),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't receive OTP?",
                        style: FontConstant.styleRegular(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: (){},
                        child: Text(
                          "Send Again",
                          style: FontConstant.styleRegular(
                            fontSize: 13,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Resend in 00:15',
                    style: FontConstant.styleRegular(
                      fontSize: 16,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: CustomButton(
                      text: 'VERIFY',
                      onPressed: () {
                        Get.offAndToNamed('/profile1');
                      },
                      color: AppColors.primaryColor,
                      textStyle: FontConstant.styleRegular(
                        fontSize: 20,
                        color: Colors.white,
                      ),
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

  Widget _buildOtpTextField(int index) {
    return SizedBox(
      width: 60,
      height: 510,
      child: TextFormField(
        controller: _otpControllers[index],
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counter: const Offstage(),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: AppColors.primaryColor),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 1)
        ),
        onChanged: (value) {
          if (value.length == 1 && index < 3) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty && index > 0) {
            FocusScope.of(context).previousFocus();
          }
        },
      ),
    );
  }
}
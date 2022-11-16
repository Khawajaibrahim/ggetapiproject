import 'package:getapiproject/Screens/sign_inScreen.dart';
import 'package:getapiproject/Widgets/custom_button.dart';
import 'package:getapiproject/controllers/logout_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () => Get.find<LogoutController>().logout(),
          child: CustomButton(
            Label: 'Logout',
            color: Colors.blue,
            txtColor: Colors.white,
            bgColor: Colors.blue,
            Height: 52.h,
            Width: 342.w,
            Fweight: FontWeight.w400,
            Fsize: 18.sp,
            bradius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}

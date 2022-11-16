import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SocialButton extends StatelessWidget {
  String text;
  String image;
  SocialButton({
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      width: 342.w,
      decoration: BoxDecoration(border: Border.all(color: Colors.blue), borderRadius: BorderRadius.circular(8)),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Image.asset(image),
        Text(text, style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18.sp),),        
      ],),
    );
  }
}
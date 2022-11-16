import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustDrawer extends StatefulWidget {
  const CustDrawer({Key? key}) : super(key: key);

  @override
  State<CustDrawer> createState() => _CustDrawerState();
}

class _CustDrawerState extends State<CustDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff172331),
      child: Column(
        children: [
          SizedBox(height: 61.h,),
          CircleAvatar(
              radius: 60.r,
          ),
          SizedBox(height: 7.h,),
          Text('Shahrukh Khan',style: TextStyle(fontWeight:FontWeight.w600 ,fontSize:18.sp,color: Colors.white ),),
          SizedBox(height: 2.h,),
          Text('United Agency Inc. (5559)',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:12.sp,color: Colors.white ),),

          SizedBox(height: 34.h,),
          Row(
            children: [
              SizedBox(width: 20.w,),
              Image.asset('assets/images/dashboard.png'),
              SizedBox(width: 11.w,),
              Text('Dashboard',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:15.sp,color: Colors.white ),),

            ],
          ),

          SizedBox(height: 34.h,),
          Row(
            children: [
              SizedBox(width: 20.w,),
              Image.asset('assets/images/dash2.png'),
              SizedBox(width: 11.w,),
              Text('Property Search',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:15.sp,color: Colors.white ),),

            ],
          ),

          SizedBox(height: 34.h,),
          Row(
            children: [
              SizedBox(width: 20.w,),
              Image.asset('assets/images/dash3.png'),
              SizedBox(width: 11.w,),
              Text('Property Comps',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:15.sp,color: Colors.white ),),

            ],
          ),

          SizedBox(height: 34.h,),
          Row(
            children: [
              SizedBox(width: 20.w,),
              Image.asset('assets/images/dash4.png'),
              SizedBox(width: 11.w,),
              Text('OFAC Terrorist List',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:15.sp,color: Colors.white ),),

            ],
          ),

          SizedBox(height: 34.h,),
          Row(
            children: [
              SizedBox(width: 20.w,),
              Image.asset('assets/images/dash5.png'),
              SizedBox(width: 11.w,),
              Text('Charging Stations',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:15.sp,color: Colors.white ),),

            ],
          ),

          SizedBox(height: 34.h,),
          Row(
            children: [
              SizedBox(width: 20.w,),
              Image.asset('assets/images/dash6.png'),
              SizedBox(width: 11.w,),
              Text('Settings',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:15.sp,color: Colors.white ),),

            ],
          ),

          SizedBox(height: 34.h,),
          Row(
            children: [
              SizedBox(width: 20.w,),
              Image.asset('assets/images/dash7.png'),
              SizedBox(width: 11.w,),
              Text('Support',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:15.sp,color: Colors.white ),),

            ],
          ),

          SizedBox(height: 34.h,),
          Row(
            children: [
              SizedBox(width: 20.w,),
              Image.asset('assets/images/dash8.png'),
              SizedBox(width: 11.w,),
              Text('About Us',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:15.sp,color: Colors.white ),),

            ],
          ),

          SizedBox(height: 34.h,),
          Row(
            children: [
              SizedBox(width: 20.w,),
              Image.asset('assets/images/dash9.png'),
              SizedBox(width: 11.w,),
              Text('Logout',style: TextStyle(fontWeight:FontWeight.w500 ,fontSize:15.sp,color: Colors.white ),),

            ],
          ),

          SizedBox(height: 34.h,),
        ],

      ),
    );
  }
}

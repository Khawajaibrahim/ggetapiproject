import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  String Label;
  Color color;
  Color txtColor;
  Color bgColor;
  var Height;
  var Width;
  FontWeight Fweight;
  var Fsize;
  var bradius;
  CustomButton({
    required this.Label,
    required this.color,
    required this.txtColor,
    required this.bgColor,
    required this.Height,
    required this.Width,
    required this.Fweight,
    required this.Fsize,
    required this.bradius,
  });

 @override
  Widget build(BuildContext context) {
    return Container(
      height: Height,
      width: Width,
      
      decoration: BoxDecoration(border: Border.all(color: color), borderRadius: bradius, color: bgColor),
        child: Center(child: Text(Label, style: TextStyle(fontWeight: Fweight, fontSize: Fsize, color: txtColor), )),        
    );
  }
}
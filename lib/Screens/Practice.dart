import 'package:flutter/material.dart';

import 'CustDrawer.dart';
class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        drawer: CustDrawer(),
      body:SafeArea(child: Container())
    );
  }
}

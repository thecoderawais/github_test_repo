import 'package:alerts_app_ui_sample/utils/TempDataSample.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/T6Models.dart';
import '../utils/Colors.dart';
import '../utils/Extension.dart';
import '../utils/Widget.dart';
import '../utils/Widget/SliderWidget.dart';

class T6ImageSlider extends StatefulWidget {
  static String tag = '/T6ImageSlider';

  @override
  T6ImageSliderState createState() => T6ImageSliderState();
}

class T6ImageSliderState extends State<T6ImageSlider> {
  int selectedPos = 1;
  List<T6Slider> mSliderList;

  @override
  void initState() {
    super.initState();
    selectedPos = 1;
    mSliderList = getSliders();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(t6app_background);
    return Scaffold(
      backgroundColor: t6app_background,
      body: Container(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TopBar(
              titleName: "Image Slider",
            ),
            SizedBox(
              height: 16,
            ),
            T6SliderWidget(mSliderList),
          ],
        ),
      ),
    );
  }
}

import 'package:alerts_app_ui_sample/utils/TempDataSample.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/T6Models.dart';
import '../utils/Colors.dart';
import '../utils/Constant.dart';
import '../utils/Extension.dart';
import '../utils/Strings.dart';
import '../utils/Widget.dart';

class T6List extends StatefulWidget {
  static String tag = '/T6List';

  @override
  T6ListState createState() => T6ListState();
}

class T6ListState extends State<T6List> {
  int selectedPos = 1;
  List<ListAlertItemModel> mListings;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mListings = getList();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(t6app_background);
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: t6app_background,
      body: Column(
        children: <Widget>[
          TopBar(
            titleName: t6_lbl_listing,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: mListings.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      width: width,
                      decoration: boxDecoration(
                          radius: 16, showShadow: true, bgColor: t6white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          //Image and Type
                          Stack(
                            alignment: Alignment.topRight,
                            children: <Widget>[
                              //Image
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(16.0),
                                  topRight: Radius.circular(16.0),
                                ),
                                child: CachedNetworkImage(
                                  imageUrl: mListings[index].image,
                                  height: 200,
                                  width: width,
                                  fit: BoxFit.cover,
                                ),
                              ),

                              //Type
                              Container(
                                margin: EdgeInsets.only(top: 10, right: 10),
                                decoration: boxDecoration(
                                    radius: 10,
                                    showShadow: false,
                                    bgColor: t6white),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: text(mListings[index].time),
                                ),
                              )
                            ],
                          ),

                          //Text: Name and Type
                          Padding(
                            padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                text(mListings[index].title,
                                    textColor: t6textColorPrimary,
                                    fontSize: textSizeLargeMedium,
                                    fontFamily: fontMedium),
                                text(mListings[index].time),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

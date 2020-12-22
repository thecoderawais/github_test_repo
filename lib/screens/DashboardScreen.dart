import 'package:alerts_app_ui_sample/utils/TempDataSample.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/T6Models.dart';
import '../utils/Colors.dart';
import '../utils/Constant.dart';
import '../utils/Extension.dart';
import '../utils/Strings.dart';
import '../utils/Widget.dart';
import '../utils/Widget/SliderWidget.dart';

class T6Dashboard extends StatefulWidget {
  static String tag = '/T6Dashboard';

  @override
  T6DashboardState createState() => T6DashboardState();
}

class T6DashboardState extends State<T6Dashboard> {
  ScrollController _scrollController = new ScrollController();
  List<T6Slider> mSliderList;
  List<ListAlertItemModel> mActivity;
  List<ListAlertItemModel> mListings;

  @override
  void initState() {
    super.initState();
    mSliderList = getSampleLatestAlertsList();
    mActivity = getSampleCategories();
    mListings = getSampleAlertsList();
  }

  @override
  Widget build(BuildContext context) {
    changeStatusColor(t6white);

    return Scaffold(
      backgroundColor: t6form_background,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //Card 1: Hi username, Notification Icon, How was your day?
                  Container(
                    color: t6white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          //Hi and Notification icon
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              text(t6_lbl_hi_carnegie,
                                  textColor: t6colorPrimary),
                              Icon(
                                Icons.notifications_active,
                                color: t6icon_color,
                              )
                            ],
                          ),

                          //Text How was your day..??
                          text(t6_lbl_how_was_your_day,
                              textColor: t6textColorPrimary,
                              fontFamily: fontMedium)
                        ],
                      ),
                    ),
                  ),

                  //Empty Space
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //Latest Alerts
                  //Text Latest Alerts
                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16),
                    child: text(lbl_latest_alerts,
                        textColor: t6colorPrimary, fontFamily: fontMedium),
                  ),
                  SizedBox(
                    height: 16,
                  ),

                  //Slider
                  T6SliderWidget(mSliderList),

                  SizedBox(
                    height: 16,
                  ),

                  //Categorized Alerts

                  //Text Categorized Alerts
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: text(lbl_categorized_alerts,
                        textColor: t6colorPrimary, fontFamily: fontMedium),
                  ),
                  SizedBox(
                    height: 16,
                  ),

                  //Categories (Horizontal ListView)
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.3,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: mActivity.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Categories(mActivity[index], index);
                        }),
                  ),

                  SizedBox(
                    height: 16,
                  ),

                  ListView.builder(
                      controller: _scrollController,
                      scrollDirection: Axis.vertical,
                      itemCount: mListings.length,
                      reverse: true,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return AlertsList(mListings[index], index);
                      }),
                  //List
                  // Container(
                  //   child: T6List(),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),

      //Bottom Navigation Bar
/*      bottomNavigationBar: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            //margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
            height: 70,
            decoration: BoxDecoration(
              color: t6white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: t6ShadowColor,
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Flexible(
                  child: tabItem(1, t6_ic_activity, t6_lbl_activity),
                  flex: 1,
                ),
                Flexible(
                  child: tabItem(2, t6_ic_list, t6_lbl_health),
                  flex: 1,
                ),
                Flexible(
                  child: tabItem(3, t6_ic_meal, t6_lbl_meals),
                  flex: 1,
                ),
                Flexible(
                  child: tabItem(4, t6_ic_work_bn, t6_lbl_work),
                  flex: 1,
                ),
                Flexible(
                  child: tabItem(5, t6_ic_sleep, t6_lbl_sleep),
                  flex: 1,
                ),
              ],
            ),
          ),
        ],
      ),*/
    );
  }
}

//Categories Chips...
class Categories extends StatelessWidget {
  ListAlertItemModel model;

  Categories(ListAlertItemModel model, int pos) {
    this.model = model;
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: 16, right: 4, bottom: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: boxDecoration(
              radius: 10,
              showShadow: true,
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: SvgPicture.asset(
                model.image,
                height: w * 0.08,
                width: w * 0.08,
                color: t6icon_color,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          text(
            model.title,
          )
        ],
      ),
    );
  }
}

class AlertsList extends StatelessWidget {
  List<ListAlertItemModel> mListings;
  ListAlertItemModel item;

  AlertsList(this.item, int index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: boxDecoration(radius: 16, showShadow: true, bgColor: t6white),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
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
                child: Image.asset(
                  item.image,
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
              ),

              //Type
              Container(
                margin: EdgeInsets.only(top: 10, right: 10),
                decoration: boxDecoration(
                    radius: 10, showShadow: false, bgColor: t6white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: text(item.time),
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
                text(item.title,
                    textColor: t6textColorPrimary,
                    fontSize: textSizeLargeMedium,
                    fontFamily: fontMedium),
                text(item.info),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:alerts_app_ui_sample/screens/DashboardScreen.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/Colors.dart';
import '../utils/Constant.dart';
import '../utils/Extension.dart';
import '../utils/Images.dart';
import '../utils/Strings.dart';
import '../utils/Widget.dart';

class T6SignIn extends StatefulWidget {
  static String tag = '/T6SignIn';

  @override
  T6SignInState createState() => T6SignInState();
}

class T6SignInState extends State<T6SignIn> {
  @override
  Widget build(BuildContext context) {
    changeStatusColor(t6form_background);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: t6form_background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: height,
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  //App Icon
                  alignment: Alignment.center,
                  child: CachedNetworkImage(
                    imageUrl: t6_ic_logo,
                    width: width / 2.2,
                  ),
                ),

                //Empty Space
                SizedBox(
                  height: 30,
                ),

                //Text Username
                text(t6_lbl_user_name, textColor: t6textColorPrimary),
                SizedBox(
                  height: 8,
                ),
                //EditText Username
                T6EditTextStyle(
                  t6_username,
                ),
                SizedBox(
                  height: 16,
                ),

                //Text Mobile Number
                text(t6_lbl_mobile_number, textColor: t6textColorPrimary),
                //Empty Space
                SizedBox(
                  height: 8,
                ),
                //EditText Mobile Number
                T6EditTextStyle(
                  t6_mobileno,
                ),

                //Empty
                SizedBox(
                  height: 10,
                ),

                //Forgot Password...
                Container(
                    alignment: Alignment.topRight,
                    child: text(t6_lbl_forgot_password)),

                //Empty Space
                SizedBox(
                  height: 16,
                ),

                //SignIn Button
                T6Button(
                  textContent: t6_lbl_sign_in,
                  onPressed: () {
                    Navigator.pushNamed(context, T6Dashboard.tag);
                  },
                ),
                //Empty Space
                SizedBox(
                  height: 10,
                ),

                //SignUp Message and Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    text(t6_lbl_new_to_this_experience),
                    SizedBox(
                      width: 4,
                    ),

                    //SignUp Button
                    GestureDetector(
                        child: Text(t6_lbl_sign_up,
                            style: TextStyle(
                                fontSize: textSizeMedium,
                                decoration: TextDecoration.underline,
                                color: t6form_google)),
                        onTap: () {
                          Navigator.pushNamed(context, '/T6SignUp');
                        })
                  ],
                ),

                //Empty Space
                SizedBox(
                  height: 10,
                ),

                //Text: OR WITH
                Container(
                    alignment: Alignment.center,
                    child: text(t6_lbl_or_with,
                        textAllCaps: true, textColor: t6colorPrimary)),

                //Empty Space
                SizedBox(
                  height: 10,
                ),

                //Social Media Login Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //Google
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: t6form_google),
                      width: width / 7.5,
                      height: width / 7.5,
                      padding: EdgeInsets.all(width / 28),
                      child: SvgPicture.asset(
                        t6_google_fill,
                        color: t6white,
                      ),
                    ),

                    //Empty Space
                    SizedBox(
                      width: 20,
                    ),

                    //Facebook
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: t6form_facebook),
                      width: width / 7.5,
                      height: width / 7.5,
                      padding: EdgeInsets.all(width / 28),
                      child: SvgPicture.asset(
                        t6_facebook_fill,
                        color: t6white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

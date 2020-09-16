import 'package:enfermedades/helper/courseModel.dart';
import 'package:enfermedades/helper/light_color.dart';
import 'package:enfermedades/screens/disease_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecomendedPage extends StatelessWidget {
  RecomendedPage({Key key}) : super(key: key);

  Widget _header(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.sp),
          bottomRight: Radius.circular(50.sp)),
      child: Container(
          height: 220.h,
          width: 1.wp,
          decoration: BoxDecoration(
            color: LightColor.orange,
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: 10,
                  right: -120,
                  child: _circularContainer(300, LightColor.lightOrange2)),
              Positioned(
                  top: -60,
                  left: -65,
                  child: _circularContainer(1.wp * .5, LightColor.darkOrange)),
              Positioned(
                  top: -230,
                  right: -30,
                  child: _circularContainer(1.wp * .7, Colors.transparent,
                      borderColor: Colors.white38)),
              Positioned(
                  top: 50,
                  left: 0,
                  child: Container(
                      width: 1.wp,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Stack(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              color: Colors.white,
                              size: 75.sp,
                            ),
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Recomended",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 50.sp,
                                    fontWeight: FontWeight.w500),
                              ))
                        ],
                      ))),
            ],
          )),
    );
  }

  Widget _circularContainer(double height, Color color,
      {Color borderColor = Colors.transparent, double borderWidth = 2}) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: Border.all(color: borderColor, width: borderWidth),
      ),
    );
  }

  Widget _courseList() {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => DiseaseScreen())),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _courceInfo(CourseList.list[0],
                      background: LightColor.seeBlue),
                  Divider(
                    thickness: 1,
                    endIndent: 20,
                    indent: 20,
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget _card({
    Color primaryColor = Colors.redAccent,
    String imgPath,
  }) {
    return Container(
        height: 190,
        width: 1.wp * .34,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  offset: Offset(0, 5),
                  blurRadius: 10,
                  color: Color(0x12000000))
            ]),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: FittedBox(
              fit: BoxFit.cover,
              child: Image(image: AssetImage("assets/images/hotel2.jpg"))),
        ));
  }

  Widget _courceInfo(CourseModel model, {Color background}) {
    return Container(
        height: 290.h,
        width: 1.wp - 20,
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: .7,
              child: _card(primaryColor: background),
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20.h),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Text(model.name,
                            style: TextStyle(
                                color: LightColor.purple,
                                fontSize: 26.sp,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                Text(model.university,
                    style: TextStyle(
                      fontSize: 22.sp,
                      color: LightColor.grey,
                    )),
                SizedBox(height: 25.h),
                Text(model.description,
                    style: TextStyle(
                        fontSize: 22.sp, color: LightColor.extraDarkPurple)),
                SizedBox(height: 25.h),
                Row(
                  children: <Widget>[
                    _chip(model.tag1, LightColor.darkOrange, height: 10.h),
                    SizedBox(
                      width: 20.w,
                    ),
                    _chip(model.tag2, LightColor.seeBlue, height: 10.h),
                  ],
                )
              ],
            ))
          ],
        ));
  }

  Widget _chip(String text, Color textColor,
      {double height = 0, bool isPrimaryCard = false}) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: height),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.sp)),
        color: textColor.withAlpha(isPrimaryCard ? 200 : 50),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: isPrimaryCard ? Colors.white : textColor, fontSize: 22.sp),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[_header(context), Expanded(child: _courseList())],
      ),
    ));
  }
}

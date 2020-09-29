import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Enlaces",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () => Navigator.pop(context)),
        ),
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                    "Si deseas encontrar más infomación sobre los diferentes tipos de enfermedades, visita las siguientes páginas:",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 32.sp)),
                SizedBox(height: 45.h),
                GestureDetector(
                  onTap: () async {
                    if (await canLaunch(
                        "https://rarediseases.info.nih.gov/espanol/enfermedades")) {
                      await launch(
                          "https://rarediseases.info.nih.gov/espanol/enfermedades");
                    }
                  },
                  child: Container(
                    height: 400.h,
                    width: 350.w,
                    child: Card(
                        child: Padding(
                      padding: EdgeInsets.all(30.sp),
                      child: Image.asset(
                        "assets/images/logo2.png",
                        fit: BoxFit.scaleDown,
                      ),
                    )),
                  ),
                ),
                SizedBox(height: 20.h),
                GestureDetector(
                    onTap: () async {
                      if (await canLaunch(
                          "https://www.omim.org/")) {
                        await launch(
                            "https://www.omim.org/");
                      }
                    },
                    child: Container(
                      height: 400.h,
                      width: 350.w,
                      child: Card(
                          child: Padding(
                        padding: EdgeInsets.all(30.sp),
                        child: Image.asset(
                          "assets/images/logo3.jpg",
                          fit: BoxFit.scaleDown,
                        ),
                      )),
                    )),
              ],
            ),
          ),
        )));
  }
}

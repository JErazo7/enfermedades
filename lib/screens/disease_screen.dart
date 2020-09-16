import 'package:enfermedades/helper/light_color.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class DiseaseScreen extends StatefulWidget {
  @override
  _DiseaseScreenState createState() => _DiseaseScreenState();
}

class _DiseaseScreenState extends State<DiseaseScreen> {
  FlickManager flickManager;

  @override
  void initState() {
    super.initState();

    flickManager = FlickManager(
        videoPlayerController:
            VideoPlayerController.asset("assets/images/1595699810.mp4"));
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 750, height: 1334, allowFontScaling: false);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 440.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.0.sp),
                        bottomRight: Radius.circular(40.0.sp)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40.0.sp),
                          bottomRight: Radius.circular(40.0.sp)),
                      child: FlickVideoPlayer(
                        flickManager: flickManager,
                      )),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Expanded(
                child: Container(
                    height: 290.h,
                    width: 1.wp - 20,
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20.h),
                        Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Expanded(
                                child: Text("Enfermedad",
                                    style: TextStyle(
                                        color: LightColor.purple,
                                        fontSize: 46.sp,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25.h),
                        Text(
                            "This specialization from leading researchers at university of washington introduce to you to the exciting high-demand field of machine learning This specialization from leading researchers at university of washington introduce to you to the exciting high-demand field of machine learning ",
                            style: TextStyle(
                                fontSize: 26.sp,
                                color: LightColor.extraDarkPurple)),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}

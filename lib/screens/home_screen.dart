import 'package:enfermedades/screens/people_screen.dart';
import 'package:enfermedades/screens/recomended_page.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  int _currentTab = 0;

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
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 10.h, bottom: 15.h),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 40.w),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.sp),
                      ),
                    ),
                    child: ListTile(
                      title: Text('Categorías'),
                      leading: Icon(Icons.people),
                      onTap: () {
                        flickManager.flickVideoManager.videoPlayerController
                            .pause();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RecomendedPage()));
                      },
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blueAccent,
                        size: 40.sp,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          if (value == 1) {
            flickManager.flickVideoManager.videoPlayerController.pause();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PeopleScreen()));
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 50.sp,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              size: 50.sp,
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

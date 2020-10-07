import 'package:enfermedades/helper/light_color.dart';
import 'package:enfermedades/models/categoria_model.dart';
import 'package:enfermedades/screens/infor_screen.dart';
import 'package:enfermedades/screens/people_screen.dart';
import 'package:enfermedades/screens/enfermedades_screen.dart';
import 'package:enfermedades/widgets/header.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FlickManager flickManager;
  final listaCategoria = Categoria.list;

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent, // Color for Android
        statusBarBrightness:
            Brightness.dark // Dark == white status bar -- for IOS.
        ));
    //Aquí se carga el video
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.network(
            "https://firebasestorage.googleapis.com/v0/b/gym-tracker-a85f6.appspot.com/o/intro.mp4?alt=media&token=72e1269d-6f29-4c06-8187-25db2eec1f81"));
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
      body: Column(
        children: <Widget>[
          Header(
            title:
                "Alteraciones y enfermedades genéticas\nprevalentes en Ecuador",
            isBack: false,
            fontSize: 36.sp,
          ),
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
              padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
              itemCount: listaCategoria.length,
              itemBuilder: (BuildContext context, int index) {
                final categoria = listaCategoria[index];
                return Container(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 40.w),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.sp),
                    ),
                  ),
                  child: ListTile(
                    title: Text(categoria.nombre),
                    leading: Icon(Icons.description),
                    onTap: () {
                      flickManager.flickVideoManager.videoPlayerController
                          .pause();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  EnfermedadesScreen(categoria: categoria)));
                    },
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: LightColor.darkOrange,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          if (value == 1) {
            flickManager.flickVideoManager.videoPlayerController.pause();
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => InfoScreen()));
          } else if (value == 2) {
            flickManager.flickVideoManager.videoPlayerController.pause();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PeopleScreen()));
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.info_outline,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

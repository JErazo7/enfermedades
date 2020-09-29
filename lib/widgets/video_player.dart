import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VideoPlayerLocal extends StatelessWidget {
  final FlickManager _flickManager;
  const VideoPlayerLocal({Key key, @required flickManager})
      : _flickManager = flickManager,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                flickManager: _flickManager,
              )),
        ),
      ],
    );
  }
}

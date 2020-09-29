import 'package:enfermedades/helper/light_color.dart';
import 'package:enfermedades/models/categoria_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';

class EnfermedadScreen extends StatelessWidget {
  final Enfermedad enfermedad;

  const EnfermedadScreen({Key key, @required this.enfermedad})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: rootBundle.loadString(enfermedad.textPath),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return SafeArea(
                child: Container(
                  height: 1.hp - ScreenUtil.statusBarHeight,
                  child: ListView(
                    children: [
                      Column(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                height: 540.h,
                                width: 1.wp,
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
                                    child: Hero(
                                        tag: enfermedad.imagen,
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: Image(
                                              image: AssetImage(
                                                  enfermedad.imagen)),
                                        ))),
                              ),
                              IconButton(
                                icon: Icon(Icons.arrow_back_ios),
                                padding: EdgeInsets.symmetric(vertical: 30.h),
                                iconSize: 55.sp,
                                color: Colors.white,
                                onPressed: () => Navigator.pop(context),
                              )
                            ],
                          ),
                          SizedBox(height: 40.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(enfermedad.nombre,
                                  softWrap: true,
                                  style: TextStyle(
                                      color: LightColor.purple,
                                      fontSize: 46.sp,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(height: 25.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: MarkdownBody(data: snapshot.data),
                          ),
                          SizedBox(height: 25.h),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}

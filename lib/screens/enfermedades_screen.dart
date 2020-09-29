import 'package:enfermedades/helper/light_color.dart';
import 'package:enfermedades/models/categoria_model.dart';
import 'package:enfermedades/screens/disease_screen.dart';
import 'package:enfermedades/widgets/header.dart';
import 'package:enfermedades/widgets/video_player.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class EnfermedadesScreen extends StatefulWidget {
  final Categoria categoria;

  EnfermedadesScreen({Key key, @required this.categoria}) : super(key: key);

  @override
  _EnfermedadesScreenState createState() => _EnfermedadesScreenState();
}

class _EnfermedadesScreenState extends State<EnfermedadesScreen> {
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

  Widget _enfermendadList() {
    return ListView.builder(
        itemCount: widget.categoria.enfermedades.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => DiseaseScreen())),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _enfermedadInfo(widget.categoria.enfermedades[index],
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
              fit: BoxFit.fill, child: Image(image: AssetImage(imgPath))),
        ));
  }

  Widget _enfermedadInfo(Enfermedad model, {Color background}) {
    return Container(
        height: 295.h,
        width: 1.wp - 20,
        child: Row(
          children: <Widget>[
            AspectRatio(
              aspectRatio: .7,
              child: _card(primaryColor: background, imgPath: model.imagen),
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
                        child: Text(model.nombre,
                            style: TextStyle(
                                color: LightColor.purple,
                                fontSize: 26.sp,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ),
                Text(model.subcategoria,
                    style: TextStyle(
                      fontSize: 22.sp,
                      color: LightColor.grey,
                    )),
                SizedBox(height: 25.h),
                Text(model.resumen,
                    style: TextStyle(
                        fontSize: 22.sp, color: LightColor.extraDarkPurple)),
                SizedBox(height: 25.h),
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
        children: <Widget>[
          Header(
            isBack: true,
            title: 'Enfermedades ${widget.categoria.nombre}',
            fontSize: 36.sp,
            color1: LightColor.purple,
            color2: LightColor.lightpurple,
            color3: LightColor.darkpurple,
          ),
          VideoPlayerLocal(
            flickManager: flickManager,
          ),
          Expanded(child: _enfermendadList())
        ],
      ),
    ));
  }
}

import 'package:enfermedades/helper/light_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatelessWidget {
  final String _title;
  final bool _isBack;
  final double _fontSize;
  final Color _color1;
  final Color _color2;
  final Color _color3;

  const Header(
      {Key key,
      @required title,
      @required isBack,
      fontSize = 20.0,
      color1 = LightColor.orange,
      color2 = LightColor.lightOrange2,
      color3 = LightColor.darkOrange})
      : _title = title,
        _isBack = isBack,
        _fontSize = fontSize,
        _color1 = color1,
        _color2 = color2,
        _color3 = color3,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
          height: 220.h,
          width: 1.wp,
          decoration: BoxDecoration(
            color: _color1,
          ),
          child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  top: 10,
                  right: -120,
                  child: _circularContainer(300, _color2)),
              Positioned(
                  top: -60,
                  left: -65,
                  child: _circularContainer(1.wp * .5, _color3)),
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
                      child: Row(
                        children: <Widget>[
                          Visibility(
                            visible: _isBack,
                            child: Expanded(
                              child: GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: Icon(
                                  Icons.keyboard_arrow_left,
                                  color: Colors.white,
                                  size: 75.sp,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Text(
                              _title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: _fontSize,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Visibility(
                              visible: _isBack,
                              child: Expanded(child: SizedBox()))
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
}

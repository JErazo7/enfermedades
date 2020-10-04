import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PeopleScreen extends StatelessWidget {
  const PeopleScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Sobre nosotros",
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
                Image.asset("assets/images/escudo.png", height: 300.h),
                SizedBox(height: 40.h),
                Text("Universidad Central del Ecuador",
                    style: TextStyle(
                        fontSize: 38.sp, fontWeight: FontWeight.bold)),
                Text("Facultad de Ciencias Médicas",
                    style: TextStyle(
                        fontSize: 34.sp, fontWeight: FontWeight.bold)),
                Text("Carrera de Médicina",
                    style: TextStyle(
                        fontSize: 32.sp, fontWeight: FontWeight.bold)),
                Text("Cátedra de Genética",
                    style: TextStyle(
                        fontSize: 28.sp, fontWeight: FontWeight.bold)),
                SizedBox(height: 80.h),
                Text("Estudiantes:",
                    style: TextStyle(
                        fontSize: 28.sp, fontWeight: FontWeight.bold)),
                SizedBox(height: 20.h),
                Text("Buenaño Moreta Marlon Xavier", style: TextStyle(fontSize: 28.sp)),
                Text("Chávez Enriquez Jefferson David", style: TextStyle(fontSize: 28.sp)),
                Text("Condolo Guaillas Kerly Janina", style: TextStyle(fontSize: 28.sp)),
                Text("Fernández Poma Gabriela Germania", style: TextStyle(fontSize: 28.sp)),
                Text("García Vilaña Karolyn Amanda", style: TextStyle(fontSize: 28.sp)),
                SizedBox(height: 40.h),
                Text("Docente:",
                    style: TextStyle(
                        fontSize: 28.sp, fontWeight: FontWeight.bold)),
                SizedBox(height: 20.h),
                Text("Dr. Lopez", style: TextStyle(fontSize: 28.sp)),
                Text("PS.", style: TextStyle(fontSize: 28.sp)),
              ],
            ),
          ),
        )));
  }
}

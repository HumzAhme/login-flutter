import 'dart:html';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage_proj/loginn.dart';
import 'package:lottie/lottie.dart';
import 'package:http/http.dart';
//import 'dart:ui.Shader';

//-image not merged with background
//-change the relative setting of height width and rest stuff as per the mobiles' height width
//light colored 'hintText' & subsequent input [DONE]  TextField(style: GoogleFonts.gabriela(color: Color.fromARGB(255, 176, 237, 232)),),

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // var dlar = 67.45;//these aren't GLOBAL, the BOTTOM ones are.
    // var sgn = '\$';
    // var lnk =
    //     'https://raw.githubusercontent.com/flutter/website/main/examples/layout/lakes/step6/images/lake.jpg';
    // var jkt = 'Red Jacket';
    // var siz = 'Size : XXL';
    return MaterialApp(
        title: 'Flutter Interfacing',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(234, 29, 6, 120),
          primaryColor: Color.fromRGBO(234, 29, 6, 120),
        ),
        home: const MyWidget()

        // home: Scaffold(
        //   //     appBar: AppBar(),
        //   body: ListView(
        //     children: [
        //       Lgin,
        //       lginup,
        //     ],
        //   ),
        // ),
        );
  }
}

//
//
//
//

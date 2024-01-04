import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loginpage_proj/animatio.dart';
import 'package:loginpage_proj/animatio2.dart';
import 'package:loginpage_proj/snimation_component.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ShaderMask(shaderCallback: (rect){return shader},
              // child:
              // Container(
              //   decoration: BoxDecoration(
              //       image: DecorationImage(
              //     image: AssetImage('assets/imagz/shnp.png'),
              //   )),
              // ),
              //),
              // Padding(
              //   padding: const EdgeInsets.only(top: 44.0),
              //   child: SizedBox(
              //     height: 233,
              //     //  width: 224,
              //     child: Image.asset(
              //       'assets/imagz/shnp.jpg',
              //       //fit: BoxFit.,
              //     ),
              //   ),
              // ),
              const AnimationComponent(),
              Divider(
                indent: 73,
                endIndent: 73,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text(
                  'Welcome Back!',
                  style: GoogleFonts.kadwa(
                    color: Color.fromARGB(255, 241, 232, 232),
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 28.0,
                  bottom: 28,
                ),
                child: Text(
                  'Please Login into your existing account',
                  style: GoogleFonts.habibi(
                    color: Color.fromARGB(255, 241, 232, 232),
                    //fontWeight: FontWeight.w100,
                    fontSize: 14,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23.0, right: 23),
                child: Container(
                    //  width: 300,
                    child: Column(
                  children: [
                    TextField(
                      style: GoogleFonts.gabriela(
                          color: Color.fromARGB(255, 176, 237, 232)),
                      //keyboardType: TextInputType....,
                      controller: emaltext,
                      decoration: InputDecoration(
                        hintText: 'Enter Email',
                        hintStyle: GoogleFonts.gabriela(
                            fontSize: 13.0,
                            color: Color.fromARGB(255, 176, 237, 232)),

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Color.fromRGBO(23, 255, 182, 0.702)),
                            borderRadius: BorderRadius.circular(31)),
                        //
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(234, 235, 207, 0.702)),
                            borderRadius: BorderRadius.circular(31)),
                        prefixIcon: Icon(
                          Icons.email_sharp,
                          color: const Color.fromARGB(255, 74, 209, 227),
                        ),
                        suffixIcon: IconButton(
                          color: const Color.fromARGB(255, 74, 209, 227),
                          icon: Icon(
                            Icons.supervised_user_circle_sharp,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    TextField(
                      style: GoogleFonts.gabriela(
                          color: Color.fromARGB(255, 176, 237, 232)),
                      controller: pastxt,
                      obscureText: true,
                      //obscuringCharacter: '^',
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: GoogleFonts.gabriela(
                            fontSize: 13.0,
                            color: Color.fromARGB(255, 176, 237, 232)),

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2,
                                color: Color.fromRGBO(23, 255, 182, 0.702)),
                            borderRadius: BorderRadius.circular(31)),
                        //
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color.fromRGBO(234, 235, 207, 0.702)),
                            borderRadius: BorderRadius.circular(31)),
                        prefixIcon: Icon(
                          Icons.password_sharp,
                          color: Color.fromARGB(255, 74, 209, 227),
                        ),
                        suffixIcon: IconButton(
                          color: const Color.fromARGB(255, 74, 209, 227),
                          icon: Icon(
                            Icons.remove_red_eye_sharp,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23.0, right: 23),
                      child: SizedBox(
                        height: 23,
                      ),
                    ),
                    SizedBox(
                      width: 500,
                      height: 54,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              textStyle: GoogleFonts.gabriela(
                                //instead of TextStyle()
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                              backgroundColor:
                                  const Color.fromARGB(255, 105, 240, 226)),
                          onPressed: () {
                            String uemal = emaltext.text.toString();
                            String upas = pastxt.text;
                            print('$uemal + $upas');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const logined()));
                          },
                          child: Text('Login')),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String uemal2 = emaltext.text.toString();

var emaltext = TextEditingController();
var pastxt = TextEditingController();

Widget Lgin = Center(
  child: Container(
    //width: 385,
    height: 677,
    //color: Color.fromARGB(234, 29, 6, 120),

    decoration: BoxDecoration(
        //color: Color.fromARGB(234, 135, 106, 250),

        ),
    child: Column(
      children: [
        // ShaderMask(shaderCallback: (rect){return shader},
        // child:
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/imagz/shnp.png'),
          )),
        ),
        //),
        Padding(
          padding: const EdgeInsets.only(top: 44.0),
          child: SizedBox(
            height: 233,
            //  width: 224,
            child: Image.asset(
              'assets/imagz/shnp.jpg',
              //fit: BoxFit.,
            ),
          ),
        ),
        Divider(
          indent: 73,
          endIndent: 73,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Text(
            'Welcome Back!',
            style: GoogleFonts.kadwa(
              color: Color.fromARGB(255, 241, 232, 232),
              fontWeight: FontWeight.w700,
              fontSize: 20,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 28.0,
            bottom: 28,
          ),
          child: Text(
            'Please Login into your existing account',
            style: GoogleFonts.habibi(
              color: Color.fromARGB(255, 241, 232, 232),
              //fontWeight: FontWeight.w100,
              fontSize: 14,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 23.0, right: 23),
          child: Container(
              //  width: 300,
              child: Column(
            children: [
              TextField(
                style: GoogleFonts.gabriela(
                    color: Color.fromARGB(255, 176, 237, 232)),
                //keyboardType: TextInputType....,
                controller: emaltext,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  hintStyle: GoogleFonts.gabriela(
                      fontSize: 13.0,
                      color: Color.fromARGB(255, 176, 237, 232)),

                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Color.fromRGBO(23, 255, 182, 0.702)),
                      borderRadius: BorderRadius.circular(31)),
                  //
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Color.fromRGBO(234, 235, 207, 0.702)),
                      borderRadius: BorderRadius.circular(31)),
                  prefixIcon: Icon(
                    Icons.email_sharp,
                    color: const Color.fromARGB(255, 74, 209, 227),
                  ),
                  suffixIcon: IconButton(
                    color: const Color.fromARGB(255, 74, 209, 227),
                    icon: Icon(
                      Icons.supervised_user_circle_sharp,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              SizedBox(
                height: 23,
              ),
              TextField(
                style: GoogleFonts.gabriela(
                    color: Color.fromARGB(255, 176, 237, 232)),
                controller: pastxt,
                obscureText: true,
                //obscuringCharacter: '^',
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: GoogleFonts.gabriela(
                      fontSize: 13.0,
                      color: Color.fromARGB(255, 176, 237, 232)),

                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 2, color: Color.fromRGBO(23, 255, 182, 0.702)),
                      borderRadius: BorderRadius.circular(31)),
                  //
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1,
                          color: Color.fromRGBO(234, 235, 207, 0.702)),
                      borderRadius: BorderRadius.circular(31)),
                  prefixIcon: Icon(
                    Icons.password_sharp,
                    color: Color.fromARGB(255, 74, 209, 227),
                  ),
                  suffixIcon: IconButton(
                    color: const Color.fromARGB(255, 74, 209, 227),
                    icon: Icon(
                      Icons.remove_red_eye_sharp,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 23.0, right: 23),
                child: SizedBox(
                  height: 23,
                ),
              ),
              SizedBox(
                width: 500,
                height: 54,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        textStyle: GoogleFonts.gabriela(
                          //instead of TextStyle()
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                        backgroundColor:
                            const Color.fromARGB(255, 105, 240, 226)),
                    onPressed: () {
                      String uemal = emaltext.text.toString();
                      String upas = pastxt.text;
                      print('$uemal + $upas');

// Navigator.push( context,
//     MaterialPageRoute(builder: (context) => const logined());
                    },
                    child: Text('Loginn')),
              ),
            ],
          )),
        ),
      ],
    ),
  ),
);

Widget lginup = Center();

class logined extends StatefulWidget {
  const logined({super.key});

  @override
  State<logined> createState() => _loginedState();
}

class _loginedState extends State<logined> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimationComponent2(),
            Center(
              child: Text(
                ' Logined Successfully!',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

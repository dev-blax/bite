import 'package:bites_07/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 2), (){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [ Color.fromARGB(255, 239, 241, 247), Color.fromARGB(255, 255, 255, 255)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft
            )
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/b07_logo.png', height: 100,),

            SizedBox(height: 10,),

            Center(
              child: Text('Bites 07', style: GoogleFonts.ubuntu(fontSize: 30, color: Color(0xff741314)), ),
            )
          ],
        ),
      ),
    );
  }
}
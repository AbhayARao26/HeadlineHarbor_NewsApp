import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:my_news_app/view/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });

  }
  
  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1 ;

    return  Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('images/intro.png',
          fit: BoxFit.cover,
            height:  height * .25,
          ),
          SizedBox(height: height * 0.04,),
          const SpinKitChasingDots(
            color: Colors.blue ,
              size: 40,
          )

        ],
      ),
    );
  }
}
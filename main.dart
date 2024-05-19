import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '/applocale.dart';
import 'dart:async';
import 'home_page.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      localizationsDelegates: const [
        AppLocale.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [
        Locale("en", "EN"),
        Locale("ar", "AR"),
      ],

      localeResolutionCallback: (currentLang, supportLang) {
        if (currentLang != null) {
          for (Locale locale in supportLang) {
            if (locale.languageCode == currentLang.languageCode) {
              // mySharedPreferences.setString("lang",currentLang.languageCode) ;
              return currentLang;
            }  }  }
        return supportLang.first;
      }, );

  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    // TODO: implement initState
    super.initState();
    // calling startSplashScreenTimer method,to start the timer
    startSplashScreenTimer();
  }
  // Because we using Timer and it is a Future Object, we used async keyword
  startSplashScreenTimer() async {
    var _duration = const Duration(seconds: 5);
    return Timer(_duration, navigationToNextPage);
  }
  void navigationToNextPage() async {
    Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => HomePage()),
          (Route<dynamic> route) => false,//
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Container(
                child: Image.asset('assets/images/Ana.png'),
              ),

              const SizedBox(height: 50,),
              CircularProgressIndicator( backgroundColor: Colors.pink[300], ),
              Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 50),
                  child:const Text('Abdulelah Algarazy',
                    style: TextStyle(color: Colors.amber, fontSize: 25),) )
            ]  ), ), );}
}
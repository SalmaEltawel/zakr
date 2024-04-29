import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zakr/config/routes/routes.dart';
import 'package:zakr/features/home/details/hadeth_details.dart';
import 'package:zakr/features/home/details/sura_details.dart';
import 'package:zakr/features/home/screens/home_screen.dart';
import 'package:zakr/features/home/screens/splash_screen.dart';

import 'core/radio_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      initialRoute:SplashScreen.routeName,
      routes: {
        SplashScreen.routeName:(context)=>SplashScreen(),
        HomeScreen.routeName:(context)=>HomeScreen(),
        SuraDetails.routeName:(context)=>SuraDetails(),
        HadethDetails.routeName:(context)=>HadethDetails(),




      }


    );
  }
}

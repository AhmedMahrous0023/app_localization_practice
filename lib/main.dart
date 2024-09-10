import 'package:app_cubit_localization/Helper/app_localization.dart';
import 'package:app_cubit_localization/Presentaion/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
            home:const  HomeScreen(),
      locale: const Locale('ar'),
      supportedLocales:const  [
        Locale('en'),
        Locale('ar')
      ],
      localizationsDelegates:const [
        AppLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      localeResolutionCallback: (deviceLocal,supportedLocales){
        for (var locale in supportedLocales){
          if (deviceLocal!=null && deviceLocal.languageCode==locale.languageCode){
            return deviceLocal ;
          }
          return supportedLocales.first ;
        }
        return null ;
      },
    );
  }
}
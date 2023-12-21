
import 'package:example/my_app.dart';
import 'package:example/screens/home/home_view.dart';
import 'package:example/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:gbt_essentials/gbt_essentials.dart';

Future<void> main() async {
  debug('main()');
  debug('begin initialization');

  debug('runing app (splash)');
  runApp(MyApp(home: SplashScreenView()));

  await Future.delayed(Duration(seconds: 3));

  debug('runing app (home)');
  runApp(MyApp(home: HomeView()));
}
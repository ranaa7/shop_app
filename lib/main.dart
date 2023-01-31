

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_app/cubit/cubit_class_cubit.dart';
import 'package:shop_app/screens/home_screen.dart';
import 'package:shop_app/screens/onboarding_screen.dart';
import 'package:shop_app/screens/shoplist_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final showHome=prefs.getBool("showHome")??false;
  runApp(
      MultiBlocProvider(providers: [BlocProvider(create: (context)=>ClassCubit())],child: MyApp(showHome:showHome)));
}

class MyApp extends StatelessWidget {
  final bool showHome;
  const MyApp({Key? key,required this.showHome}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:OnboardingScreen()
      // showHome?OnboardingScreen():Homescreen(),
    );
  }
}



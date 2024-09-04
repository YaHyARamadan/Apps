import 'package:flutter/material.dart';
import 'package:flutter_education_app/first_page/firstscreen.dart';
import 'package:flutter_education_app/flutter_screen/flutter_screen.dart';
import 'package:flutter_education_app/package_screen/package_week_screen.dart';
import 'package:flutter_education_app/widets_screen/widgets/app_bar_screen.dart';
import 'package:flutter_education_app/widets_screen/widgets/column_screen.dart';
import 'package:flutter_education_app/widets_screen/widgets/container_screen.dart';
import 'package:flutter_education_app/widets_screen/widgets/elevated_button_screen.dart';
import 'package:flutter_education_app/widets_screen/widgets/icon_screen.dart';
import 'package:flutter_education_app/widets_screen/widgets/image_screen.dart';
import 'package:flutter_education_app/widets_screen/widgets/row_screen.dart';
import 'package:flutter_education_app/widets_screen/widgets/scaffold_screen.dart';
import 'package:flutter_education_app/widets_screen/widget_screen.dart';
import 'package:flutter_education_app/widets_screen/widgets/text_screen.dart';
import 'dart_screen/main_screen_dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/Home",
      routes: {
        "/Home": (context) => const Firstscreen(),
        "/DartScreen": (context) => const DartScreen(),
        "/FlutterScreen": (context) => const FlutterScreen(),
        "/WidgetScreen": (context) => const WidgetScreen(),
        "/PackageWeekScreen": (context) => const PackageWeekScreen(),
        "/ScaffoldScreen": (context) => const ScaffoldScreen(),
        "/AppBarScreen": (context) => const AppBarScreen(),
        "/IconScreen": (context) => const IconScreen(),
        "/TextScreen": (context) => const TextScreen(),
        "/ColumnScreen": (context) => const ColumnScreen(),
        "/RowScreen": (context) => const RowScreen(),
        "/ContainerScreen": (context) => const ContainerScreen(),
        "/ImageScreen": (context) => const ImageScreen(),
        "/ElevatedButtonScreen": (context) => const ElevatedButtonScreen()
      },
    );
  }
}

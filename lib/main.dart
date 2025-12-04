import 'package:soccer_wave/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:soccer_wave/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
         colorScheme: ColorScheme.fromSwatch(primarySwatch: pinkSwatch)
        .copyWith(secondary: const Color.fromARGB(255, 255, 176, 221)),
      ),
      home: const LoginPage(),
    ),
    );
  }
}

MaterialColor pinkSwatch = const MaterialColor(
  0xFFFF8ADC,
  {
    50: Color(0xFFFFE6F5),
    100: Color(0xFFFFCCE9),
    200: Color(0xFFFF99D3),
    300: Color(0xFFFF66BE),
    400: Color(0xFFFF33A8),
  },
);

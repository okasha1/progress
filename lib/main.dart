import 'package:flutter/material.dart';
import 'package:progress/pages/congrats_bronze.dart';
import 'package:progress/pages/homepage.dart';
import 'package:progress/provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => AppProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.

          useMaterial3: true,
        ),
        home: const CongratsPage(),
        routes: {'/home': (context) => const MyHomePage()},
      ),
    );
  }
}

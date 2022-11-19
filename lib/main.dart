import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:music_apps/src/providers.dart';
import 'package:music_apps/src/routes.dart';
import 'package:music_apps/src/utils/palettes.dart';
import 'package:provider/provider.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(
    MultiProvider(
      providers: providers,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Palettes.background,
      systemNavigationBarColor: Palettes.background,
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'Music Apps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Palettes.text,
              displayColor: Palettes.text,
            ),
      ),
      themeMode: ThemeMode.dark,
      initialRoute: '/',
      routes: routes,
    );
  }
}

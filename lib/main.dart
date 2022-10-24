import 'package:dynamic_color/dynamic_color.dart';
import 'package:finanzapp/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final _defaultLightColorScheme = ColorScheme.fromSwatch(
    primarySwatch: Colors.red,
    backgroundColor: Colors.black,
    accentColor: Colors.red,
    cardColor: Colors.white,
    errorColor: Colors.red,
    brightness: Brightness.light,
  );

  static final _defaultDarkColorScheme = ColorScheme.fromSwatch(
    primarySwatch: Colors.green,
    accentColor: Colors.green,
    cardColor: Colors.deepPurple,
    primaryColorDark: Colors.black,
    backgroundColor: Colors.orange,
    errorColor: Colors.redAccent,
    brightness: Brightness.dark,
  );

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightColorScheme, darkColorScheme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'finanzapp',
          initialRoute: '/',
          theme: ThemeData(
            colorScheme: lightColorScheme ?? _defaultLightColorScheme,
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            textTheme: ThemeData.dark().textTheme.copyWith(
                  titleLarge: const TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            colorScheme: darkColorScheme ?? _defaultDarkColorScheme,
            iconTheme: const IconThemeData(
              color: Colors.orange,
            ),
            appBarTheme: const AppBarTheme(
              centerTitle: true,
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            useMaterial3: true,
          ),
          themeMode: ThemeMode.dark,
          routes: {
            '/': (context) => const HomePage(),
          },
        );
      },
    );
  }
}

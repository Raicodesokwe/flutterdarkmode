import 'package:darkmode/home/homepage.dart';
import 'package:darkmode/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => ThemeProvider(),
        child: Consumer<ThemeProvider>(
            builder: (context, ThemeProvider notifier, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: notifier.darkTheme
                ? darkThemeData(context)
                : lightThemeData(context),
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
        }));
  }
}

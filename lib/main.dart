import 'package:boiler_plate_app/provider/authVM.dart';
import 'package:boiler_plate_app/provider/userProvider.dart';
import 'package:boiler_plate_app/splashScreen.dart';
import 'package:boiler_plate_app/styles/styles.dart';
import 'package:boiler_plate_app/utils/NavigationService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(create: (context) => AuthenticationProvider()),
      ],
      child: MaterialApp(
        title: 'App Name',
        color: Colors.white,
        navigatorKey: NavigationService.navigatorKey,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E1E1E)),
          useMaterial3: true,
          fontFamily: 'ModernEra',
          primarySwatch: Styles.color.primaryColor,
        ),
        home: SplashScreen(),
      ),
    );
  }
}

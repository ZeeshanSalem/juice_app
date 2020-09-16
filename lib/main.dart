import 'package:flutter/material.dart';
import 'package:juici/ui/screens/main/main_screen.dart';
import 'package:juici/ui/screens/main/main_provider.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (context) => MainProvider()),
    ], child: MaterialApp(home: MainScreen()));
  }
}

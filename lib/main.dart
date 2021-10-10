import 'package:credpaltest/ui/screens/home/home.dart';
import 'package:credpaltest/utils/locator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:credpaltest/utils/progressBarManager/dialog_manager.dart';
import 'package:credpaltest/utils/progressBarManager/dialog_service.dart';
import 'package:credpaltest/utils/router/navigation_service.dart';
import 'package:credpaltest/utils/router/router.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Credpal Test',
      builder: (context, child) => Navigator(
        key: locator<ProgressService>().progressNavigationKey,
        onGenerateRoute: (settings) => MaterialPageRoute(builder: (context) {
          return  ProgressManager(child: child!);
          //DialogManager(child: child);
        }),
      ),
      theme: ThemeData(
        textTheme: GoogleFonts.robotoCondensedTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      navigatorKey: locator<NavigationService>().navigationKey,
      home: const Home(),
      onGenerateRoute: generateRoute,
    );
  }
}

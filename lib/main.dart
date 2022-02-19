import 'dart:io';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'src/pages/screens.dart';
import 'src/services/news_service.dart';
import 'src/theme.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NewsServices()),
      ],
      child: MaterialApp(
          title: 'News',
          theme: customTheme,
          initialRoute: TabsPage.routeName,
          routes: {
            TabsPage.routeName:(_)=>const TabsPage(),
          },
          debugShowCheckedModeBanner:false,
        ),
    );
  }
}

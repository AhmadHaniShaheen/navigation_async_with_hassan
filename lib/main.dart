import 'package:flutter/material.dart';
import 'package:navigation_async/controller/info_controller.dart';
import 'package:navigation_async/views/nav_push_named/info_named.dart';
import 'package:navigation_async/views/nav_push_named/show_named.dart';
import 'package:navigation_async/views/nav_with_provider/info_prov_view.dart';
import 'package:navigation_async/views/nav_with_provider/show_prov_view.dart';
import 'package:navigation_async/views/navigation_constractor/info_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<InfoController>(
      create: (context) {
        return InfoController();
      },
      child: Builder(builder: (context) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routes: {
            '/':(context)=>const InfoNamedView(),
            '/show_named_view':(context)=>const ShowNamedView(),
          },
          onUnknownRoute: (context){},
          onGenerateRoute: (context){},
          // home: const InfoProvView(),
        );
      }),
    );
  }
}

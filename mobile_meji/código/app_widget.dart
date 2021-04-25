import 'package:flutter/material.dart';
import 'package:mobile_meji/app_controller.dart';

import 'capa_page.dart';
import 'login_page.dart';
import 'cadastro_page.dart';
import 'home_page.dart';
import 'time_page.dart';

class AppWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return AnimatedBuilder(
          animation: AppController.instance,
        builder: (context, child) { 
          return MaterialApp(
            theme: ThemeData(
              primarySwatch: Colors.purple,
              brightness: AppController.instance.isDarkTheme 
              ? Brightness.dark 
              : Brightness.light,
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => CapaPage(),
              '/login': (context) => LoginPage(), 
              '/cadastro': (context) => CadastroPage(),
              '/home': (context) => HomePage(), 
              '/time': (context) => TimePage(),
            },
          );
         },
        );
    } 
}

class PerfilPage {
}  
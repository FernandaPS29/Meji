import 'package:flutter/material.dart';
import 'package:mobile_meji/app_controller.dart';
import 'package:mobile_meji/inicio_page.dart';
import 'package:mobile_meji/quizz_page.dart';
import 'package:mobile_meji/vender_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

import 'comprar_page.dart';
import 'inspiracoes_page.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedItemIndex = 0;
  final List pages = [
    InicioPage(),
    VenderPage(),
    ComprarPage(),
    InspiracoesPage(),
    QuizzPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
              primarySwatch: Colors.purple,
              brightness: AppController.instance.isDarkTheme 
              ? Brightness.dark 
              : Brightness.light,
            ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      drawer: Drawer(
        child: Column (
          children: [
            InkWell(
                child:              
              UserAccountsDrawerHeader(
                currentAccountPicture: 
                ClipRRect( 
                  borderRadius: BorderRadius.circular(40), 
                  child: Image.asset(
                    'assets/images/perfil.png'
                  ),
                ),
                accountName: Text('Aline Oliveira', style: TextStyle(fontFamily: 'Baskerville',fontSize: 20, fontWeight: FontWeight.bold),), 
                accountEmail: Text('alineoliveira@gmail.com')),
                onTap: () async {
                    Navigator.of(context).pushReplacementNamed('/configuracoes');
                },
              ),
              ListTile(
                leading: Icon (Icons.feedback),
                title: Text ('Feedback'),
                subtitle: Text ('Deixe suas sugestões!'),
                onTap: () {
                  abrirUrl();
                }
              ),
              CustomBackground(),
              ListTile(
                leading: Icon (Icons.share),
                title: Text ('Compartilhar'),
                subtitle: Text ('Ajude na nossa divulgação!'),
                onTap: () {
                  Share.share('Conheça mais sobre esse solução, acesse: https://meji.netlify.app/');
                }
              ),
          ],
        ),
      ),

        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.purple,
          unselectedItemColor: Colors.amberAccent,
          selectedItemColor: Colors.white,
          //selectedIconTheme: IconThemeData(color: Colors.blueGrey[600]),
          currentIndex: _selectedItemIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _selectedItemIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: 'Início',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Vender',
              icon: Icon(Icons.shopping_bag),
            ),
            BottomNavigationBarItem(
              label: 'Comprar',
              icon: Icon(Icons.monetization_on_sharp),
            ),
            BottomNavigationBarItem(
              label: 'Inspire-se',
              icon: Icon(Icons.emoji_objects),
            ),
            BottomNavigationBarItem(
              label: 'Trilhas',
              icon: Icon(Icons.question_answer),
            ),
          ],
        ),
        body: pages[_selectedItemIndex]
      ),
    );
  }
}

class CustomBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
                leading: Icon (Icons.brightness_4),
                title: Text ('Modo diurno e noturno'),
                subtitle: Text ('Clique para alterar'),
                //value: AppController.instance.isDarkTheme, 
                onTap: () {
                  AppController.instance.changeTheme();
                }
              );
  }
}

abrirUrl() async {
  const url = 'https://forms.gle/hENfYo7PLMqziFSm8';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
 
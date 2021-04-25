import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

import 'app_controller.dart';

class ComprarPage extends StatefulWidget {
  @override
  State<ComprarPage> createState() {
    return ComprarPageState();
  }
}

class ComprarPageState extends State<ComprarPage> {

    @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        appBar: AppBar(
        title: Text('Comprar'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView ( 
          scrollDirection: Axis.vertical,
          children: [
            Column (
              mainAxisAlignment: MainAxisAlignment.spaceBetween, 
              crossAxisAlignment: CrossAxisAlignment.center,
              children: 
              [
                Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        child: 
                        Image.asset('assets/images/comprar.png')),
                    ),
              ],
          ),
          ],
      ),
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
 
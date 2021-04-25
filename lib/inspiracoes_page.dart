import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

import 'app_controller.dart';

class InspiracoesPage extends StatefulWidget {
  @override
  State<InspiracoesPage> createState() {
    return InspiracoesPageState();
  }
}

class InspiracoesPageState extends State<InspiracoesPage> {

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
                  Share.share('Conheça essa solução, acesse: https://www.youtube.com/channel/UCTbSvQ8udubWGso7ZrSh3QQ/videos');
                }
              ),
              ListTile(
                leading: Icon (Icons.exit_to_app),
                title: Text ('Sair'),
                subtitle: Text ('Encerrar sessão'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                }
              ),
          ],
        ),
      ),
        appBar: AppBar(
        title: Text('Inspirações'),
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
  const url = 'https://forms.gle/ZUZVyB2fGmAxmKwm6';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
 
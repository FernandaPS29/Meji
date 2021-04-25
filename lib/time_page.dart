import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

import 'app_controller.dart';

class TimePage extends StatefulWidget {
  @override
  State<TimePage> createState() {
    return TimePageState();
  }
}

class TimePageState extends State<TimePage> {

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column (
          children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: 
                ClipRRect( //Para deixar redondo ou usar o ClipOval
                  borderRadius: BorderRadius.circular(40), 
                  child: Image.asset(
                    'assets/images/perfil.png'
                  ),
                ),
                accountName: Text('Aline Oliveira'), 
                accountEmail: Text('alineoliveira@gmail.com')),
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
        title: Text('Time'),
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
              children: [
                Card (
                  child: 
                  new InkWell(
                  onTap: () {
                    abrirLinkedIn(1);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row (
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 80,
                          height: 80,
                          child: ClipOval(child: Image.asset('assets/images/andrey.png'))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column (
                          children: [ 
                          Container(
                            width: MediaQuery.of(context).size.width-150,
                            child:  
                            Text('Andrey Marcondes', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Baskerville',fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width-150,
                            child:  
                            Text('Arquiteto e Ubrbanista', textAlign: TextAlign.center,),
                          ),
                          ]
                        ),
                      ),
                     ],),
                  ),
                  ),
                  ),
                  Container(height: 15,),
                  Card (
                  child: 
                  new InkWell(
                  onTap: () {
                    abrirLinkedIn(2);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row (
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 80,
                          height: 80,
                          child: ClipOval(child: Image.asset('assets/images/bianca.png'))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column (
                          children: [ 
                          Container(
                            width: MediaQuery.of(context).size.width-150,
                            child:  
                            Text('Bianca Correia', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Baskerville',fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width-150,
                            child:  
                            Text('Product designe', textAlign: TextAlign.center,),
                          ),
                          ]
                        ),
                      ),
                     ],),
                  ),
                  ),
                  ),
                  Container(height: 15,),
                  Card (
                  child: 
                  new InkWell(
                  onTap: () {
                    abrirLinkedIn(3);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row (
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 80,
                          height: 80,
                          child: ClipOval(child: Image.asset('assets/images/eduarda.png'))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column (
                          children: [ 
                          Container(
                            width: MediaQuery.of(context).size.width-150,
                            child:  
                            Text('Eduarda Antunes', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Baskerville',fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width-150,
                            child:  
                            Text('Marketing e Business', textAlign: TextAlign.center,),
                          ),
                          ]
                        ),
                      ),
                     ],),
                  ),
                  ),
                  ),
                  Container(height: 15,),
                  Card (
                  child: 
                  new InkWell(
                  onTap: () {
                    abrirLinkedIn(4);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row (
                      children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 80,
                          height: 80,
                          child: ClipOval(child: Image.asset('assets/images/fernanda.png'))),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column (
                          children: [ 
                          Container(
                            width: MediaQuery.of(context).size.width-150,
                            child:  
                            Text('Fernanda Silva', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Baskerville',fontSize: 20, fontWeight: FontWeight.bold),),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width-150,
                            child:  
                            Text('Denvolvedora Web e Mobile', textAlign: TextAlign.center,),
                          ),
                          ]
                        ),
                      ),
                     ],),
                  ),
                  ),
                  ),
                  Container(height: 15,),
            ],)
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

abrirLinkedIn(int codigo) async {

const urlAndrey = 'https://www.linkedin.com/in/andrey-marcondes-25646a179/';
const urlBianca = 'https://www.linkedin.com/in/bianca-correia/';
const urlEduarda = 'https://www.linkedin.com/in/eduarda-lopes66/';
const urlFernanda = 'https://www.linkedin.com/in/fernandapsilva29/';

  
  if (codigo == 1 && await canLaunch(urlAndrey)) {
      await launch(urlAndrey);
  } else if (codigo == 2 && await canLaunch(urlBianca)) {
      await launch(urlBianca);
  } else if (codigo == 3 && await canLaunch(urlEduarda)) {
      await launch(urlEduarda);
  } else if (codigo == 4 && await canLaunch(urlFernanda)) {
      await launch(urlFernanda);
  } 
}
 
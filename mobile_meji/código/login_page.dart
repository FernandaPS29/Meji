import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  Widget _body(){
    return SingleChildScrollView(
              child: SizedBox( //Tanto faz usar este ou o Containner
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                child: Image.asset('assets/images/logo.png'),
                ),
              Container(height: 20),
              Row (
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Image.asset('assets/images/facebook.png', width: 60),
                    Container (width: 20,),
                    Image.asset('assets/images/gmail.png', width: 60),
                  ] 
                ),
              Container(height: 20),
              Text (
                'Ou entre com seu e-mail'
              ),
              Container(height: 20),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Login',
                            style: TextStyle(fontFamily: 'Baskerville',fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                        ),
                            TextField(
                        onChanged: (text) {
                          email = text;
                        },
                        keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder()
                          ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        onChanged: (text) {
                          password = text;
                        },
                        obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            border: OutlineInputBorder()
                          ),
                      ),
                      SizedBox(height: 15),
                      ClipRRect( 
                           borderRadius: BorderRadius.circular(60),
                           child: ElevatedButton(
                           style: ElevatedButton.styleFrom(
                                //shape: CircleBorder(), Deixa um c??rculo
                                primary: Colors.amberAccent
                              ),
                          onPressed: () {
                            //if (email == 'nome' && password == '123') {
                            //  print ('Correto!');
                              //Navigator.of(context).pushReplacement(  // Para ter como voltar para a tela anterior, usar somente push
                              //MaterialPageRoute(builder: (context) => HomePage()),
                              //);
                              Navigator.of(context).pushReplacementNamed('/home'); //utilizando rotas l?? no widget - Para ter como voltar para a tela anterior usar s?? replacenamed
                            //} else {
                            //  print ('Login inv??lido!');
                            //}
                          },
                          child: Container (
                            width: double.infinity,
                              child: Text(
                                'Entrar',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: 'Baskerville',fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                                ),
                            )),
                      ),
                    ],
                    ),
                ),
              ),
              Container (height: 15,),
              InkWell(
                child: Text("N??o possui login? Cadastre-se"),
                onTap: () async {
                    Navigator.of(context).pushReplacementNamed('/cadastro');
                },
              ),
            ],),
                ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack (
        children: [
          //Container (color: Colors.red),
          SizedBox(
            height: double.infinity,
            child: Image.asset(
              'assets/images/background.png', 
              fit: BoxFit.fill)),
         // Container (
             // color: Colors.black.withOpacity(0.3)
        //  ), Para deixar opaco
          _body(),
        ],
      ) 
    );
  }
}
import 'package:flutter/material.dart';


class CapaPage extends StatefulWidget {
  @override
  _CapaPageState createState() => _CapaPageState();
}

class _CapaPageState extends State<CapaPage> {

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
                width: 200,
                height: 200,
                child: Image.asset('assets/images/logo.png'),
                ),
              Container(height: 30),
              Card(
                color: Colors.purple.withOpacity(0.5), 
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ClipRRect( 
                           borderRadius: BorderRadius.circular(60),
                           child: ElevatedButton(
                           style: ElevatedButton.styleFrom(
                                primary: Colors.amberAccent
                              ),
                          onPressed: () {
                               Navigator.of(context).pushReplacementNamed('/login'); //
                          },
                          child: Container (
                            width: double.infinity,
                              child: Text(
                                'Login',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: 'Baskerville',fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                                ),
                            )),
                      ),
                      Container(height: 20,),
                      ClipRRect( 
                           borderRadius: BorderRadius.circular(60),
                           child: ElevatedButton(
                           style: ElevatedButton.styleFrom(
                                //shape: CircleBorder(), Deixa um círculo
                                primary: Colors.amberAccent
                              ),
                          onPressed: () {
                               Navigator.of(context).pushReplacementNamed('/cadastro'); //
                          },
                          child: Container (
                            width: double.infinity,
                              child: Text(
                                'Cadastro',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontFamily: 'Baskerville',fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                                ),
                            )),
                      ),
                    ],
                    ),
                ),
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
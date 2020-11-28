import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movie App',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          //-->> Logo Superior
          Container(
            padding: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Container(
                  //padding: EdgeInsets.only(top: 5),
                  width: 180,
                  height: 90,
                  child: Image.asset(
                    'assets/logo-horizontal.png',
                  ),
                ),
              ],
            ),
          ),
          Container(
            //color: Colors.blue,
            //padding: EdgeInsets.only(top: 5),
            width: 400,
            height: 200,
            child: Image.asset(
              'assets/sofa.png',
            ),
          ),
          // -->> Contenedor grafico
          Container(
            //color: Colors.blue,
            //padding: EdgeInsets.only(top: 5),
            width: 400,
            height: 300,
            color: Colors.grey[400],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 60,
                width: 200,
                //margin: EdgeInsets.symmetric(horizontal: 50),

                child: Center(
                  child: Text(
                    'Iniciar sesión',
                    style: TextStyle(
                      color: Color.fromRGBO(18, 122, 255, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // -->> Iniciar Bottom
              Container(
                height: 63,
                width: 211,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(18, 122, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.10),
                    //topRight: Radius.circular(60.0)
                  ),
                ),
                //margin: EdgeInsets.symmetric(horizontal: 50),
                //color: Color.fromRGBO(18, 122, 255, 1),
                child: Center(
                  child: Text(
                    'Iniciar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

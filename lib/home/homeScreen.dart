import 'package:flutter/material.dart';

import '../graph_widget.dart';
import 'IniciarView.dart';
import 'iniciarSesionView.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AppBarTheme(color: Color.fromRGBO(52, 67, 86, 1));
    return Scaffold(
      body: Column(
        children: <Widget>[
          //-->> Top image logo
          Container(
            padding: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Container(
                  width: 180,
                  height: 90,
                  child: Image.asset(
                    'assets/logo-horizontal.png',
                  ),
                ),
              ],
            ),
          ),
          //End  Top image logo

          //-->> Central Image
          Container(
            width: 400,
            height: 200,
            child: Image.asset(
              'assets/sofa.png',
            ),
          ),
          // End Central Image

          // -->> Container graphic
          Container(
            //color: Colors.blue,
            //padding: EdgeInsets.only(top: 5),
            width: 400,
            height: 300,
            //color: Colors.grey[400],
            child: _graph(),
          ),
          // End Container graphic

          SizedBox(
            height: 20,
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // -->>  Iniciar sesión Bottom
                Container(
                  width: 200,
                  height: 60,
                  child: Center(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => IniciarSesionView()),
                        );
                      },
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
                ),
                // End  Iniciar sesión Bottom

                // -->>  Iniciar Bottom
                Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(18, 122, 255, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.5),
                    ),
                  ),
                  //margin: EdgeInsets.symmetric(horizontal: 50),
                  //color: Color.fromRGBO(18, 122, 255, 1),
                  child: Center(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => IniciarView()),
                        );
                      },
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
                ),
                // End  Iniciar Bottom
              ],
            ),
          )
        ],
      ),
    );
  }
}

// --> Call Graph function
Widget _graph() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Container(height: 200, child: GraphWidget()),
  );
}

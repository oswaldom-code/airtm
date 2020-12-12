import 'dart:ui';

import 'package:flutter/material.dart';
import '../utils/airtm_colors.dart';

class IniciarSesionView extends StatefulWidget {
  @override
  _IniciarSesionViewState createState() => _IniciarSesionViewState();
}

class _IniciarSesionViewState extends State<IniciarSesionView> {
  // final _controller = TextEditingController();
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            'Iniciar sesión',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          backgroundColor: AirtmColors.blue,
        ),
        body: Container(
          color: AirtmColors.blue,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                // ---> Text email
                child: Column(children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Text('Correo electrónico',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left),
                  ),
                  // End Text email

                  SizedBox(
                    height: 10,
                  ),

                  // ---> Textfield email
                  Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        autocorrect: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(20),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                        ),
                        style: TextStyle(fontSize: 20, letterSpacing: 1.5),
                      )),
                  // End Textfield email

                  SizedBox(
                    height: 30,
                  ),

                  // ---> Text password
                  Container(
                    width: double.infinity,
                    child: Text('Contraseña',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left),
                  ),
                  // End Text password

                  SizedBox(
                    height: 10,
                  ),

                  // --->> Textfield password
                  Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        textInputAction: TextInputAction.go,
                        autocorrect: false,
                        obscureText: !this._showPassword,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: this._showPassword
                                    ? AirtmColors.blue
                                    : Colors.grey,
                              ),
                              onPressed: () {
                                setState(() =>
                                    this._showPassword = !this._showPassword);
                              }),
                          contentPadding: EdgeInsets.all(20),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                        ),
                        style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1.5,
                        ),
                      )),
                  // End Textfield password

                  SizedBox(
                    height: 30,
                  ),

                  // --->> Text ¿Olvidaste tu contraseña?
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text('¿Olvidaste tu contraseña?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.left),
                  ),
                  // End Text ¿Olvidaste tu contraseña?
                ]),
              ),

              SizedBox(
                height: 80,
              ),

              /// ---> Iniciar sesion with  email and password
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AirtmColors.navyBlue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.5),
                        ),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: null),
                          );
                        },
                        child: Text(
                          'Iniciar sesión',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // End Iniciar sesion with  email and password

              // ---> SignIn Google an Facebook botoms
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    //Nota: pending task: SignIn Google an Facebook botoms
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.5),
                    ),
                  ),
                ),
              )
              // End SignIn Google an Facebook botoms
            ],
          ),
        ));
  }
}

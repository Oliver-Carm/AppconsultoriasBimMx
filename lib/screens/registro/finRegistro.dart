import 'package:app_bimmx/login.dart';
import 'package:app_bimmx/screens/registro/RegistroN3.dart';
import 'package:flutter/material.dart';

class FinRegistro extends StatefulWidget {
  static String id = "finregistro";
  @override
  _PaqueteFin createState() => _PaqueteFin();
}

class _PaqueteFin extends State<FinRegistro> {
  // GlobalKey<FormState> keyForm = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Registro'),
        backgroundColor: Color.fromRGBO(0, 0, 200, 1),
        // Color.fromRGBO(0, 0, 200, 1),
      ),

      ///////
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
//////////////////
        child: Card(
          margin: EdgeInsets.all(20),
          child: Column(
            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                color: Colors.grey.shade300,
                child: Image.asset(
                  'assets/img/biml.png',
                  height: 150,
                  width: 500,
                ),
              ),

              Container(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                alignment: Alignment.center,
                child:
                    Text("Felicidades has terminado con exito tu registro a Business in Motion, ahora puedes disfrutar de los servicios que BIM pone para ti",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        )),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    //SizedBox(height: 5),
                    Container(
                      child: SizedBox(
                        height: 130,
                        width: 300,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Lorem Ipsum is simply dumud typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/img/aceptado.png',
                      height: 130,
                      width: 500,
                    ),
                  ],
                ),
              ),

              Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: RaisedButton(
                    color: Colors.indigo,
                    padding: new EdgeInsets.fromLTRB(50, 10, 50, 10),
                    textColor: Colors.white, // foreground
                    child: Text(
                      'Iniciar Sesión',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                  )),

              ///
            ],
          ),
        ),
      ),
    );
  }
}

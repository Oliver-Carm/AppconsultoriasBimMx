import 'package:app_bimmx/screens/registro/AddCompany.dart';
import 'package:flutter/material.dart';

class RegistroN3 extends StatefulWidget {
  static String id = "registron3";
  @override
  _RegistroN3 createState() => _RegistroN3();
}

class _RegistroN3 extends State<RegistroN3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Registro'),
        backgroundColor: Color.fromRGBO(0, 0, 200, 1),
      ),
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
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
              SizedBox(height: 10),

              //////////
              Center(
                child: Text("Registro a Business in Motion",
                    style: TextStyle(
                      fontSize: 23,
                    )),
              ),
              SizedBox(height: 10),

              Card(
                margin: EdgeInsets.all(15),
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                    style: TextStyle()),
              ),
              //////////
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color.fromRGBO(
                          0, 0, 200, 1), //                   <--- border color
                      width: 1,
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                        offset: Offset(1.0, 5.0),
                      )
                    ]),
                margin: EdgeInsets.all(10),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("Paso 1"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("Paso 2"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: Color.fromRGBO(0, 0, 200, 1),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Paso 3",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                alignment: Alignment.center,
                child: Text("Registro de Empresa/Negocio",
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
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text(
                          "Nota: Es importante que proporciones información concisa para una buena interpretación ante los posibles socios.",
                          style: TextStyle(fontSize: 16, color: Colors.red)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Card(
                child: Column(
                  children: <Widget>[
                    ///////////
                    /// botones
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: RaisedButton(
                            disabledColor: Colors.blue,
                            child: Text("Atras"),
                            splashColor: Colors.blue,
                            color: Colors.amber,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Expanded(child: Container()),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          alignment: Alignment.centerRight,
                          child: RaisedButton(
                            disabledColor: Colors.blue,
                            child: Text(
                              "Siguiente",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            splashColor: Colors.amber,
                            color: Colors.blue.shade800,
                            onPressed: () {
                             setState(() {
                                   Navigator.pushNamed(context, AddCompany.id);
                                  });
                            },
                          ),
                        ),
                      ],
                    ),

                    ///
                  ],
                ),
              ),

              ///
            ],
          ),
        ),
      ),
    );
  }
}

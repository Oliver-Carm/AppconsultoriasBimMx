
import 'package:app_bimmx/screens/registro/PaqueteFin.dart';
import 'package:app_bimmx/screens/registro/SelecPago.dart';
import 'package:flutter/material.dart';

class RegistroN2 extends StatefulWidget {
  static String id = "registron2";
  @override
  _RegistroN2 createState() => _RegistroN2();
}

class _RegistroN2 extends State<RegistroN2> {
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
                        color: Color.fromRGBO(0, 0, 200, 1),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Paso 2",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text("Paso 3"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                alignment: Alignment.center,
                child: Text("Selecciona tu paquete",
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
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Paquete 1",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      child: SizedBox(
                        height: 100,
                        width: 300,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                            style: TextStyle(
                              fontSize: 16,
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
                  //  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: RaisedButton(
                color: Colors.green,
                padding: new EdgeInsets.fromLTRB(50, 10, 50, 10),
                textColor: Colors.white, // foreground
                child: Text(
                  'Adquirir',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SelectPago()),
                  );
                },
              )),

              Container(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Paquete 2",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      child: SizedBox(
                        height: 100,
                        width: 300,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                            style: TextStyle(
                              fontSize: 16,
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
                  //  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: RaisedButton(
                color: Colors.green,
                padding: new EdgeInsets.fromLTRB(50, 10, 50, 10),
                textColor: Colors.white, // foreground
                child: Text(
                  'Adquirir',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SelectPago()),
                  );
                },
              )),

              Container(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 15),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Paquete 3",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Container(
                      child: SizedBox(
                        height: 100,
                        width: 300,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.",
                            style: TextStyle(
                              fontSize: 16,
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
                  //  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: RaisedButton(
                color: Colors.green,
                padding: new EdgeInsets.fromLTRB(50, 10, 50, 10),
                textColor: Colors.white, // foreground
                child: Text(
                  'Adquirir',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SelectPago()),
                  );
                },
              )),

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
                            onPressed: () {},
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

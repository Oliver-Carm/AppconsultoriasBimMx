import 'package:app_bimmx/screens/registro/RegistroN2.dart';
import 'package:flutter/material.dart';

class RegistroN extends StatefulWidget {
  static String id = 'registrare';
  @override
  _RegistroN createState() => _RegistroN();
}

class _RegistroN extends State<RegistroN> {
  // GlobalKey<FormState> keyForm = new GlobalKey();

  TextEditingController nameCtrl = TextEditingController();
TextEditingController mailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController repeatPassCtrl = TextEditingController();
  bool passwo = true;
  bool repasswo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Registro'),
        backgroundColor: Color.fromRGBO(0, 0, 200, 1),
        // Color.fromRGBO(0, 0, 200, 1),
      ),

      /* floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},

        /// boton de contactar
        label: const Text(
          'Agregar',
          style: TextStyle(color: Colors.white),
        ),
        icon: const Icon(
          Icons.person_add,
          color: Colors.white,
        ),


        backgroundColor: Color.fromRGBO(5, 50, 143, 1),


        splashColor: Color.fromRGBO(0, 0, 200, 1),
      ),*/
      ///////
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
//////////////////
        //color: Colors.grey,

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
                        color: Color.fromRGBO(0, 0, 200, 1),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "Paso 1",
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
                          child: Text("Paso 2"),
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

              ///
              Center(
                child: Text("Registrar usuario",
                    style: TextStyle(
                      fontSize: 23,
                    )),
              ),

              ///
              Card(
                margin: EdgeInsets.all(10),
                child: TextField(
                  autocorrect: true,
                  keyboardType: TextInputType.multiline,
                  textCapitalization: TextCapitalization.sentences,
                  maxLength: 35,
                  controller: nameCtrl,
                  decoration: InputDecoration(
                      labelText: 'Nombre de usuario',
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              SizedBox(height: 10),

              ///
                 Card(
                margin: EdgeInsets.all(10),
                child: TextField(
                  controller: mailCtrl,
                  decoration: InputDecoration(
                    labelText: 'Correo electronico',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
              ),
              SizedBox(height: 10),

              Card(
                child: Column(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        obscureText: passwo,
                        controller: passwordCtrl,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  passwo = !passwo;
                                });
                              },
                              icon: passwo
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off)),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    ///////////
                    Card(
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        obscureText: repasswo,
                        controller: repeatPassCtrl,
                        decoration: InputDecoration(
                          labelText: 'Repetir contraseña',
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  repasswo = !repasswo;
                                });
                              },
                              icon: repasswo
                                  ? Icon(Icons.visibility)
                                  : Icon(Icons.visibility_off)),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

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
                              Navigator.of(context).pushNamed('login');
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegistroN2()),
                              );
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

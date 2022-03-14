import 'package:app_bimmx/login.dart';
import 'package:app_bimmx/screens/registro/RegistroN.dart';
import 'package:app_bimmx/screens/registro/finRegistro.dart';
import 'package:flutter/material.dart';

class registrar_person extends StatefulWidget {
  static String id = 'registrarp';
  @override
  _registrar_person createState() => _registrar_person();
}

class _registrar_person extends State<registrar_person> {
  // GlobalKey<FormState> keyForm = new GlobalKey();

  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController numerCtrl = new TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController repeatPassCtrl = TextEditingController();
  bool passwo = true;
  bool repasswo = true;
  String gender = 'hombre';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrar Persona y usuario '),
      ),

      
      ///////
      backgroundColor: Colors.grey.shade400,
      body: SingleChildScrollView(
//////////////////
        //color: Colors.grey,

        child: Card(
          margin: EdgeInsets.all(20),
          child: Column(
            //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(height: 10),

              //////////
              Card(
                margin: EdgeInsets.all(10),
                child: TextField(
                  autocorrect: true,
                  keyboardType: TextInputType.multiline,
                  textCapitalization: TextCapitalization.sentences,
                  controller: nameCtrl,
                  decoration: InputDecoration(
                      labelText: 'Nombre', prefixIcon: Icon(Icons.person)),
                ),
              ),
              SizedBox(height: 10),
//
              Card(
                margin: EdgeInsets.all(10),
                child: TextField(
                  autocorrect: true,
                  keyboardType: TextInputType.multiline,
                  textCapitalization: TextCapitalization.sentences,
                  controller: nameCtrl,
                  decoration: InputDecoration(
                      labelText: 'Apellido paterno',
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
//
              Card(
                margin: EdgeInsets.all(10),
                child: TextField(
                  autocorrect: true,
                  keyboardType: TextInputType.multiline,
                  textCapitalization: TextCapitalization.sentences,
                  controller: nameCtrl,
                  decoration: InputDecoration(
                      labelText: 'Apellido materno ',
                      prefixIcon: Icon(Icons.person)),
                ),
              ),

              ///
              Card(
                margin: EdgeInsets.all(10),
                child: TextField(
                  autocorrect: true,
                  keyboardType: TextInputType.number,
                  textCapitalization: TextCapitalization.sentences,
                  controller: numerCtrl,
                  decoration: InputDecoration(
                    labelText: 'Edad',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              SizedBox(height: 20),
//
              Card(
                margin: EdgeInsets.all(10),
                child: TextField(
                  autocorrect: true,
                  keyboardType: TextInputType.number,
                  textCapitalization: TextCapitalization.sentences,
                  controller: numerCtrl,
                  decoration: InputDecoration(
                    labelText: 'Numero de celular',
                    prefixIcon: Icon(Icons.phone),
                  ),
                ),
              ),
              SizedBox(height: 20),

              ///
              Card(
                  margin: EdgeInsets.all(10),
                  child: Column(children: <Widget>[
                    Text(
                      "Género",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 20),
                    RadioListTile<String>(
                      title: const Text('Hombre'),
                      value: 'hombre',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    ),
                    RadioListTile<String>(
                      title: const Text('Mujer'),
                      value: 'mujer',
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },
                    )
                  ])),
              SizedBox(height: 20),

              ///

              //////////
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
                  controller: emailCtrl,
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
                                   Navigator.pushNamed(context, FinRegistro.id);
                                  });
                            },
                          ),
                        ),
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


import 'package:app_bimmx/screens/registro/PaqueteFin.dart';
import 'package:app_bimmx/screens/registro/RegistroN2.dart';
import 'package:app_bimmx/screens/registro/finRegistro.dart';
import 'package:flutter/material.dart';

class SelectPago extends StatefulWidget {
  static String id = "selectpago";
  @override
  _RegistroN2 createState() => _RegistroN2();
}

class _RegistroN2 extends State<SelectPago> {
  // GlobalKey<FormState> keyForm = new GlobalKey();

  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController numerCtrl = new TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController repeatPassCtrl = TextEditingController();
  bool passwo = true;
  bool repasswo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Busines in Motion  App'),
        backgroundColor: Color.fromRGBO(0, 0, 200, 1),
      ),
      backgroundColor: Colors.grey.shade400,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //margin: EdgeInsets.all(10),
              margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color.fromRGBO(0, 0, 200, 1),
                          //                   <--- border color
                          width: 10,
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                            offset: Offset(1.0, 5.0),
                          )
                        ]),
                    child: Image.asset(
                      'assets/img/BIMLogo.png',
                      height: 130,
                      width: 400,
                    ),
                  ),
                ],
              ),
            ),
            //// card para formulario de pago
            Card(
              margin: EdgeInsets.all(20),
              child: Column(
                //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(height: 10),

                  //////////
                  Center(
                    child: Card(
                      margin: EdgeInsets.all(10),
                      child: Text("Selecciona metodo de pago",
                          style: TextStyle(
                              fontSize: 23, fontFamily: 'RobotoMono')),
                    ),
                  ),
                  SizedBox(height: 20),
                  ////////////////////////

                  Column(
                    children: [
                      Center(
                        child: InkWell(
                            child: Container(
                              margin: EdgeInsets.only(bottom: 15, top: 15),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(1.0, 1.0),
                                      blurRadius: 7.0,
                                      spreadRadius: 5.0),
                                ],
                              ),
                              child: Image.asset(
                                'assets/img/flutter.jpg',
                                height: 100,
                                width: 200,
                                fit: BoxFit.fill,
                              ),
                            ),
                            onTap: () {
                              //aqui se enviara a la carpeta correspondiente
                            }),
                      ),
                      SizedBox(height: 20),
//////////////////////////
                      Center(
                        child: InkWell(
                            child: Container(
                              margin: EdgeInsets.only(bottom: 15, top: 15),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black38,
                                      offset: Offset(1.0, 1.0),
                                      blurRadius: 7.0,
                                      spreadRadius: 5.0),
                                ],
                              ),
                              child: Image.asset(
                                'assets/img/flutter.jpg',
                                height: 100,
                                width: 200,
                                fit: BoxFit.fill,
                              ),
                            ),
                           /* onTap: () {
                              //aqui se enviara a la carpeta correspondiente
                             Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddCompany()),
                              );
                            }*/
                            ),
                      ),
                      SizedBox(height: 20),
                      ////////////////////
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
                                   Navigator.pushNamed(context, PaqueteFin.id);
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
                      ////////////
                    ],
                  )
                ],
              ),
            ),

            ///////////////////////////////////////////////////
          ],
        ),
      ),
    );
  }
}

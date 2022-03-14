import 'package:app_bimmx/screens/registro/registrar_person.dart';
import 'package:flutter/material.dart';

class AddCompany extends StatefulWidget {
  static String id = "addcompañia";
  @override
  _AddCompany createState() => _AddCompany();
}

class _AddCompany extends State<AddCompany> {
  // GlobalKey<FormState> keyForm = new GlobalKey();

  TextEditingController nameCtrl = TextEditingController();
  TextEditingController streetCtrl = TextEditingController();
  TextEditingController ColCtrl = TextEditingController();
  TextEditingController mobileCtrl = TextEditingController();
  TextEditingController PostalCtrl = TextEditingController();
  TextEditingController streetNCtrl = TextEditingController();
  TextEditingController streetNECtrl = TextEditingController();
  TextEditingController SizeCtrl = TextEditingController();
  TextEditingController EmployeCtrl = TextEditingController();

  var _listaTam = [
    "Seleccione el tamaño de la empresa",
    "Pequeña",
    "Mediana",
    "Grande"
  ];
  var _listaState = ["Seleccione Estado", "Michoacan", "Etc", "Etc"];
  var _listaCity = ["Seleccione Ciudad", "Hidalgo", "Etc", "Etc"];
  String gender = 'Fiscal';
  String _vistaT = "Seleccione el tamaño de la empresa";
  String _vistaS = "Seleccione Estado";
  String _vistaC = "Seleccione Ciudad";
  String _value = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(0, 0, 200, 1),
        title: Text('Business in Motion App'),
      ),

      ///////
      backgroundColor: Colors.grey.shade400,
      body: SingleChildScrollView(
//////////////////
        child: Column(
          children: [
            /////////
            /* Container(
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
            ),*/

            ///

            //
            Card(
              margin: EdgeInsets.all(20),
              child: Column(
                //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(height: 10),

//
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color.fromRGBO(0, 0, 200,
                              1), //                   <--- border color
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
                    child: Card(
                      child: Text(
                        "Registro de empresa",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  //////////
                  Card(
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      autocorrect: true,
                      keyboardType: TextInputType.multiline,
                      textCapitalization: TextCapitalization.sentences,
                      maxLength: 25,
                      controller: nameCtrl,
                      decoration: InputDecoration(
                          labelText: 'Nombre de la empresa o compañia',
                          prefixIcon: Icon(Icons.person)),
                    ),
                  ),
                  SizedBox(height: 10),
//
                  Card(
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: mobileCtrl,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Telefono',
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
//
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color.fromRGBO(0, 0, 200,
                              1), //                   <--- border color
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
                    // margin: EdgeInsets.only(left: 10),
                    //  alignment: Alignment.center,
                    child: Text(
                      "Tipo de direccion",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
//
                  Container(
                    child: Card(
                        child: Column(children: <Widget>[
                      RadioListTile<String>(
                        title: const Text('Fiscal'),
                        value: 'Fiscal',
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value!;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: const Text('Comercial'),
                        value: 'Comercial',
                        groupValue: gender,
                        onChanged: (value) {
                          setState(() {
                            gender = value!;
                          });
                        },
                      )
                    ])),
                  ),
                  SizedBox(height: 10),

                  ///
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color.fromRGBO(0, 0, 200,
                              1), //                   <--- border color
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
                    //  margin: EdgeInsets.only(left: 10),
                    //alignment: Alignment.centerLeft,
                    child: Text(
                      "Direccion",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),

                  ///
                  Card(
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      textCapitalization: TextCapitalization.sentences,
                      controller: streetCtrl,
                      decoration: InputDecoration(
                        labelText: 'Calle',
                        prefixIcon: Icon(Icons.streetview),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  ///

                  Card(
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: streetNCtrl,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Numero interior',
                        prefixIcon: Icon(Icons.house),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  ///
                  Card(
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: streetNECtrl,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Numero Exterior',
                        prefixIcon: Icon(Icons.house),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  ///
                  Card(
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      textCapitalization: TextCapitalization.sentences,
                      controller: ColCtrl,
                      decoration: InputDecoration(
                        labelText: 'Colonia',
                        prefixIcon: Icon(Icons.streetview),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),

                  ///
                  Card(
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: PostalCtrl,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Codigo Postal',
                        prefixIcon: Icon(Icons.streetview),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
//
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Color.fromRGBO(0, 0, 200,
                              1), //                   <--- border color
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
                    //     margin: EdgeInsets.only(left: 10),
                    //  alignment: Alignment.centerLeft,
                    child: Text(
                      "Industria",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),

                  ///
                  ///  Estado
                  Card(
                    margin: EdgeInsets.all(10),
                    child: DropdownButton(
                      isExpanded: true,
                      items: _listaState.map((String a) {
                        return DropdownMenuItem(value: a, child: Text(a));
                      }).toList(),
                      onChanged: (_value) {
                        setState(() {
                          _vistaS = _value.toString();
                        });
                      },
                      hint: Text(_vistaS),
                    ),
                  ),
                  SizedBox(height: 10),
//
                  /// Ciudad
                  Card(
                    margin: EdgeInsets.all(10),
                    child: DropdownButton(
                      isExpanded: true,
                      items: _listaCity.map((String a) {
                        return DropdownMenuItem(value: a, child: Text(a));
                      }).toList(),
                      onChanged: (_value) {
                        setState(() {
                          _vistaC = _value.toString();
                        });
                      },
                      hint: Text(_vistaC),
                    ),
                  ),
                  SizedBox(height: 10),

                  /// tamaño de la empresa
                  Card(
                    margin: EdgeInsets.all(10),
                    child: DropdownButton(
                      isExpanded: true,
                      items: _listaTam.map((String a) {
                        return DropdownMenuItem(value: a, child: Text(a));
                      }).toList(),
                      onChanged: (_value) {
                        setState(() {
                          _vistaT = _value.toString();
                        });
                      },
                      hint: Text(_vistaT),
                    ),
                  ),
                  SizedBox(height: 10),

                  ///

                  Card(
                    margin: EdgeInsets.all(10),
                    child: TextField(
                      controller: EmployeCtrl,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Numero de empleados',
                        prefixIcon: Icon(Icons.format_list_numbered),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),

                  /// botones
                  Row(
                    children: [
                     /* Container(
                        margin: EdgeInsets.only(left: 10),
                        child: RaisedButton(
                          disabledColor: Colors.blue,
                          child: Text("Atras"),
                          splashColor: Colors.blue,
                          color: Colors.amber,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegistroN2()),
                            );
                          },
                        ),
                      ),*/
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
                                   Navigator.pushNamed(context, registrar_person.id);
                                  });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

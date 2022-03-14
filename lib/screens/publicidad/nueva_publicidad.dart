import 'package:app_bimmx/screens/publicidad/publicidad.dart';
import 'package:flutter/material.dart';

import 'dart:io';

import 'package:image_picker/image_picker.dart';

class NuevaPublicidad extends StatefulWidget {
  static String id = 'nueva_publicidad';

  @override
  _Publicidad createState() => _Publicidad();
}

class _Publicidad extends State<NuevaPublicidad> {
  var _lis = ['Salud', 'Tecnologia', 'Educacion', 'Industria', 'Otro'];
  String _vista = 'Selecciona una categoria';
  File? imagen;
  final picker = ImagePicker();
  var pickedFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nueva publicidad'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.settings_rounded),
            ),
          ),
        ],
        backgroundColor: Colors.indigo,
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(20),
            color: Colors.indigo[50],
            child: Column(
              children: <Widget>[
                if (imagen == null)
                  Container(
                    width: 400,
                    height: 200,
                    child: Card(
                      child: Center(
                        child: Image.asset('assets/img/Logo_imagen.png'),
                      ),
                    ),
                  )
                else
                  Container(
                    decoration: BoxDecoration(color: Colors.blue, boxShadow: [
                      new BoxShadow(
                        //SOMBRA
                        color: Color(0xffA4A4A4),
                        offset: Offset(1.0, 5.0),
                        spreadRadius: 2.0,
                        blurRadius: 3.0,
                      ),
                    ]),
                    width: 400,
                    //   height: 100,
                    child: Image.file(imagen!),
                  ),
                _crearBotonImagen(),
                _crearCaracteristicas(),
                _crearPrecio(),
                _crearDescripcion(),
                _crearCategoria(),
                _crearBoton(),
              ],
            )),
      ),
    );
  }

  Future selImagen() async {
    pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        imagen = File(pickedFile.path);
      } else {
        print("No seleccionaste imagen");
      }
    });
  }

  Widget _crearBotonImagen() {
    return Container(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: RaisedButton(
          color: Colors.indigo,
          padding: new EdgeInsets.fromLTRB(40, 10, 40, 10),
          textColor: Colors.white, // foreground
          child: Text(
            'Selecciona tu Banner',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          onPressed: () {
            selImagen();
          },
        ));
  }

  Widget _crearCaracteristicas() {
    // TextEditingController _controller = new TextEditingController();
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Container(
            alignment: Alignment.centerLeft,
            child: Text("Caracterisiticas:", style: TextStyle(fontSize: 16)),
          ),
          Container(
            child: TextField(
              autocorrect: true,
              keyboardType: TextInputType.multiline,
              textCapitalization: TextCapitalization.sentences,
              maxLength: 40,
              maxLines: 1,
              decoration: InputDecoration(
                  hintText: "Escribe catacterisitcas de tu servicio..."),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearPrecio() {
    // TextEditingController _controller = new TextEditingController();
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          // SizedBox(height: 5),
          Container(
            alignment: Alignment.centerLeft,
            child: Text("Precio:", style: TextStyle(fontSize: 16)),
          ),
          Container(
            child: TextField(
              autocorrect: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Precio del servicio..."),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearDescripcion() {
    //TextEditingController _controller = new TextEditingController();
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Container(
            alignment: Alignment.centerLeft,
            child: Text("Descripcion:", style: TextStyle(fontSize: 16)),
          ),
          Container(
            child: TextField(
              autocorrect: true,
              keyboardType: TextInputType.multiline,
              textCapitalization: TextCapitalization.sentences,
              maxLength: 40,
              maxLines: 1,
              decoration:
                  InputDecoration(hintText: "Escribe una descripcion.."),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearCategoria() {
    return Container(
      color: Colors.white,
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              'Categoria:',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: DropdownButton(
              items: _lis.map(
                (String a) {
                  return DropdownMenuItem(
                    value: a,
                    child: Text(a),
                  );
                },
              ).toList(),
              onChanged: (String? _value) => {
                setState(
                  () {
                    _vista = _value!;
                  },
                ),
              },
              hint: Text(_vista),
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearBoton() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new RaisedButton(
            color: Colors.indigo,
            padding: new EdgeInsets.fromLTRB(40, 10, 40, 10),
            textColor: Colors.white, // foreground
            child: Text(
              'Guardar',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Publicidad()),
              );
            },
          ),
          new RaisedButton(
            color: Colors.red,
            padding: new EdgeInsets.fromLTRB(40, 10, 40, 10),
            textColor: Colors.white, // foreground
            child: Text(
              'Cancelar',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Publicidad()),
              );
            },
          ),
        ],
      ),
    );
  }
}

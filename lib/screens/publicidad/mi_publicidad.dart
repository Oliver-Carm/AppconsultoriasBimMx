
import 'package:app_bimmx/screens/publicidad/nueva_publicidad.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MiPublicidad extends StatefulWidget {
  static String id = 'mi_publicidad';

  @override
  _Info createState() => _Info();
}

class _Info extends State<MiPublicidad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informacion de Publicidad'),
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
      floatingActionButton: botonEditar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          color: Colors.indigo[50],
          child: Column(
            children: <Widget>[
              _crearImagenPublicidad(),
              _crearInfoCaracteristicas(),
              _crearInfoPrecio(),
              _crearInfoDescripcion(),
              _crearInfoCategoria(),
              _crearRating(),
            ],
          ),
        ),
      ),
    );
  }

  botonEditar() {
    return FloatingActionButton.extended(
      onPressed: () =>
          showDialog(context: context, builder: (context) => NuevaPublicidad()),
      label: Icon(Icons.edit),
      backgroundColor: Colors.green,
    );
  }

  Widget _crearImagenPublicidad() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.black38,
            offset: Offset(0.0, -2.0),
            blurRadius: 10.0,
            spreadRadius: -10.0)
      ]),
      // child: Card(
      child: Center(
        child: Image.asset('assets/img/Publicidad_prueba.png'),
      ),
      // ),
    );
  }

  Widget _crearInfoCaracteristicas() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            color: Colors.blueAccent,
            height: 40,
            width: 600,
            alignment: Alignment.center,
            child: Text(
              "Caracterisiticas:",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            child: SizedBox(
              height: 100,
              width: 300,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '► lorem ipsum dolor sit amet.' +
                      '\n' +
                      '► lorem ipsum dolor sit amet. ' +
                      '\n' +
                      '► lorem ipsum dolor sit amet. ',
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
    );
  }

  Widget _crearInfoPrecio() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            color: Colors.blueAccent,
            height: 40,
            width: 600,
            alignment: Alignment.center,
            child: Text(
              "Precio:",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            child: SizedBox(
              height: 70,
              width: 300,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '► 7000.' + '\n' + '► 5000.',
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
    );
  }

  Widget _crearInfoDescripcion() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            color: Colors.blueAccent,
            height: 40,
            width: 600,
            alignment: Alignment.center,
            child: Text(
              "Descripcion:",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            child: SizedBox(
              height: 100,
              width: 300,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
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
    );
  }

  Widget _crearInfoCategoria() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            color: Colors.blueAccent,
            height: 40,
            width: 600,
            alignment: Alignment.center,
            child: Text(
              "Categoria:",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Container(
            child: SizedBox(
              height: 50,
              width: 300,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Industria',
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
    );
  }

  Widget _crearRating() {
    return Container(
        color: Colors.blueAccent,
        width: 400,
        height: 70,
        child: Center(
          child: RatingBarIndicator(
            //  rating: widget.reviews[i].rate,
            rating: 3.5,
            itemCount: 5,
            itemSize: 40,
            itemBuilder: (context, _) {
              return const Icon(
                Icons.star,
                color: Colors.amber,
              );
            },
          ),
        ));
  }
}

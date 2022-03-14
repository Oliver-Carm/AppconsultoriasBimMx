
import 'package:app_bimmx/screens/publicidad/info_publicidad.dart';
import 'package:app_bimmx/screens/publicidad/product_card2.dart';
import 'package:app_bimmx/screens/publicidad/product_empresas.dart';
import 'package:flutter/material.dart';

class PubicidadCategoria extends StatefulWidget {
  static String id = 'publicidad_categoria';

  @override
  _Info createState() => _Info();
}

class _Info extends State<PubicidadCategoria> {
  int selectedIndex = 0;
  List categorias = ['Todo', 'Empresas'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: CrearBody(),
      appBar: AppBar(
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
    );
  }

  CrearBody() {
    return Container(
      child: new Column(children: <Widget>[
        CrearBarraCat(),
        SizedBox(height: 10 / 4),
        Expanded(
          child: Stack(
            children: <Widget>[
              // Our background
              Container(
                margin: EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
              ),
              CrearPublicidad()
            ],
          ),
        ),
      ]),
    );
  }

  CrearBarraCat() {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 15, 5, 15),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categorias.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: 10,
              // At end item it add extra 20 right  padding
              right: index == categorias.length - 1 ? 10 : 0,
            ),
            padding: EdgeInsets.symmetric(horizontal: 64),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? Colors.white.withOpacity(0.4)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              categorias[index],
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.5,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget CrearPublicidad() {
    if (selectedIndex == 0) {
      return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ProductCard2(
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InfoPublicidad()),
            );
          },
        ),
      );
    } else {
      return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ProductEmpresas(
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InfoPublicidad()),
            );
          },
        ),
      );
    }
  }
}

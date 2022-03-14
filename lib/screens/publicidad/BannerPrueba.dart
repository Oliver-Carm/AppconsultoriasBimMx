import 'package:carousel_slider/carousel_slider.dart';
//import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

//import 'package:carousel_slider/carousel_controller.dart';

class BannerPrueba extends StatefulWidget {
  @override
  _Banner createState() => _Banner();
}

class _Banner extends State<BannerPrueba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('banner'),
        // backgroundColor: Color.fromRGBO(5, 50, 143, 80),
        // backgroundColor: Colors.blue,
        //   backgroundColor: Colors.white,
      ),

      body: Container(
        //  color: Colors.blue,
        child: Column(children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Container(
            color: Colors.white,

            child: Column(
              children: [
                /*    Container(
                  height: 25,
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.close),

                   backgroundColor: Colors.red,
                
                    splashColor: Color.fromRGBO(0, 0, 200, 1),
                  ),
                ),*/
                CarouselSlider(
                  items: [
                    InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 15, top: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black38,
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 3.0,
                                  spreadRadius: 2.0),
                            ],
                            /* image: DecorationImage(
                                image: AssetImage('assets/img/user2.jpg'),
                                
                                fit: BoxFit.cover),*/
                          ),
                          child: Image.asset(
                            'assets/img/user2.jpg',
                            height: 100,
                            width: 400,
                            fit: BoxFit.fill,
                          ),
                        ),
                        onTap: () {
                          //aqui se enviara a la carpeta correspondiente
                        }),

                    ///
                    InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 15, top: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black38,
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 3.0,
                                  spreadRadius: 2.0),
                            ],
                          ),
                          child: Image.asset(
                            'assets/img/flutter.jpg',
                            height: 100,
                            width: 400,
                            fit: BoxFit.fill,
                          ),
                        ),
                        onTap: () {
                          //aqui se enviara a la carpeta correspondiente
                        }),
                    //
                    InkWell(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 15, top: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black38,
                                  offset: Offset(2.0, 2.0),
                                  blurRadius: 3.0,
                                  spreadRadius: 2.0),
                            ],
                          ),
                          child: Image.asset(
                            'assets/img/BimEmp2.png',
                            height: 100,
                            width: 400,
                            fit: BoxFit.fill,
                          ),
                        ),
                        onTap: () {
                          //aqui se enviara a la carpeta correspondiente
                        }),
                  ],
                  options: CarouselOptions(
                    height: 180,
                    autoPlay: true,
                    autoPlayCurve: Curves.easeInOut,
                    enlargeCenterPage: true,
                    autoPlayInterval: Duration(seconds: 3),
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
            //va aqui
          ),

          /*  Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    spreadRadius: 2.0),
              ],
              image: DecorationImage(
                  image: AssetImage('assets/img/persona.png'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 3.0,
                    spreadRadius: 2.0),
              ],
              image: DecorationImage(
                  image: AssetImage('assets/img/persona.png'),
                  fit: BoxFit.cover),
            ),
          ),*/
        ]),
      ),

      /// boton de contactar

      /*  floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},

        /// boton de contactar
        label: const Text('Contactar'),
        icon: const Icon(Icons.call),
        foregroundColor: Color.fromRGBO(5, 50, 143, 1),
        //backgroundColor: Color.fromARGB(18, 10, 143, 1),
        backgroundColor: Colors.blue[200],
        //    backgroundColor: Color.fromRGBO(5, 50, 143, 1),
        //shape: Border.all(color: Colors.black),

        splashColor: Color.fromRGBO(0, 0, 200, 1),
      ),*/
    );
  }

  Widget car() {
    return Container(
      width: double.infinity,
      height: 200,
      alignment: Alignment.bottomCenter,
      color: Colors.amber,
      child: Card(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            /* FloatingActionButton(
              onPressed: () {},

              child: Icon(Icons.close),
              foregroundColor: Color.fromRGBO(5, 50, 143, 1),
              //backgroundColor: Color.fromARGB(18, 10, 143, 1),
              backgroundColor: Colors.blue[200],
              //    backgroundColor: Color.fromRGBO(5, 50, 143, 1),
              //shape: Border.all(color: Colors.black),

              splashColor: Color.fromRGBO(0, 0, 200, 1),
            ),*/
          ],
        ),
      ),
    );
  }
}

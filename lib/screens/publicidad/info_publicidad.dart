
import 'package:app_bimmx/screens/publicidad/BannerPrueba.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';

class InfoPublicidad extends StatefulWidget {
  static String id = 'info_publicidad';

  @override
  _Info createState() => _Info();
}

class _Info extends State<InfoPublicidad> {
  final _getTexto = TextEditingController();
  double rating = 0;

  @override
  void dispose() {
    _getTexto.dispose();
    super.dispose();
  }

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
      floatingActionButton: botonChat(),
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
              _crearBanner(),
              _crearRating(),
              CarouselSlider(
                items: [_crearComentarios(), _crearComentarios2()],
                options: CarouselOptions(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  botonChat() {
    return FloatingActionButton.extended(
      onPressed: () =>
          showDialog(context: context, builder: (context) => BannerPrueba()),
      label: Icon(Icons.chat),
      backgroundColor: Colors.blueAccent,
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
        child: Image.asset('assets/img/PublicidadGeneral.png'),
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

  Widget _crearBanner() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          CarouselSlider(
            items: [
              InkWell(
                child: Container(
                  margin: EdgeInsets.only(bottom: 15, top: 15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0,
                          spreadRadius: 2.0),
                    ],
                  ),
                  child: Image.asset(
                    'assets/img/user2.jpg',
                    height: 100,
                    width: 400,
                    fit: BoxFit.fill,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InfoPublicidad(),
                    ),
                  );
                },
              ),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InfoPublicidad(),
                      ),
                    );
                  }),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InfoPublicidad(),
                      ),
                    );
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
    );
  }

  Widget _crearRating() {
    return Container(
        margin: const EdgeInsets.fromLTRB(10, 15, 10, 15),
        padding: const EdgeInsets.all(5),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              blurRadius: 10,
            )
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 15, 10, 0),
              alignment: Alignment.centerLeft,
              child: Text("Escribe un Comentario:",
                  style: TextStyle(fontSize: 16)),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: TextField(
                controller: _getTexto,
                autocorrect: true,
                keyboardType: TextInputType.multiline,
                textCapitalization: TextCapitalization.sentences,
                maxLength: 40,
                maxLines: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('$rating',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )),
                    _crearRatingShow(),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                          onPressed: () => {Comentario()},
                          icon: Icon(Icons.send),
                          color: Colors.white,
                        ))
                  ]),
            ),
          ],
        ));
  }

  Comentario() {
    if (_getTexto.text == '' || rating == 0) {
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('Escribe un comentario'),
            );
          });
    } else {
      _getTexto.clear();
      setState(() {
        rating = 0;
        _crearRatingShow();
      });
      return showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('Comentario enviado'),
            );
          });
    }
  }

  Widget _crearRatingShow() {
    return RatingBar.builder(
        initialRating: rating,
        itemSize: 35,
        minRating: 1,
        //direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
        itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
        updateOnDrag: true,
        onRatingUpdate: (rating) => setState(() {
              this.rating = rating;
            }));
  }

  Widget _crearComentarios() {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 15),
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            blurRadius: 10,
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/imagenes/user.png'),
            ),
            title: Text(
              'Roberto Trujillo',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              DateFormat('dd, MMMM yyyy').format(DateTime.now()),
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Estoy muy satisfecho por este servicio agradezco mucho la atencion que recibi, muchas gracias y ecelente trabajo.Estoy muy satisfecho por este servicio agradezco mucho la atencion que recibi, muchas gracias y ecelente trabajo.',
                //widget.reviews[i].reviewContent,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  //  widget.reviews[i].rate.toString(),
                  '3.5',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RatingBarIndicator(
                  //  rating: widget.reviews[i].rate,
                  rating: 3.5,
                  itemCount: 5,
                  itemSize: 30,
                  itemBuilder: (context, _) {
                    return const Icon(
                      Icons.star,
                      color: Colors.amber,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearComentarios2() {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 15),
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.5),
            blurRadius: 10,
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Image.asset('assets/imagenes/user.png'),
            ),
            title: Text(
              'James Hetfield',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              DateFormat('dd, MMMM yyyy').format(DateTime.now()),
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Estoy muy satisfecho por este servicio agradezco mucho la atencion que recibi, muchas gracias y ecelente trabajo.',
                //widget.reviews[i].reviewContent,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  //  widget.reviews[i].rate.toString(),
                  '4.5',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RatingBarIndicator(
                  //  rating: widget.reviews[i].rate,
                  rating: 4.5,
                  itemCount: 5,
                  itemSize: 30,
                  itemBuilder: (context, _) {
                    return const Icon(
                      Icons.star,
                      color: Colors.amber,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

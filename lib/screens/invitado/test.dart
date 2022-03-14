
import 'package:app_bimmx/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TestTest extends StatefulWidget {
  static String id = 'testtest';

  @override
  _TestTestState createState() => _TestTestState();
}

class _TestTestState extends State<TestTest> {
  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xff3f51b5),
            height: 290,
            child: Container(
              child: _buildBottomNavigationMenu(),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(5),
                  topRight: const Radius.circular(5),
                ),
              ),
            ),
          );
        });
  }

  Column _buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.list_alt),
          title: Text('Directorio empresarial'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text('Proximos eventos'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.business),
          title: Text('Conocenos'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text('Registrarse'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Salir'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Builder(
            builder: (context) => IconButton(
              icon: SvgPicture.asset(
                "assets/icons/icon.svg",
                height: 25,
              ),
              onPressed: () => _onButtonPressed(),
            ),
          ),
        ),
        backgroundColor: Colors.indigo,
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ////inicio titulo de directorio empresarial
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      //  Palette.primaryColor,
                      // Palette.primaryColor
                      Color.fromRGBO(18, 10, 143, 1),
                      Color.fromRGBO(18, 10, 143, 1)
                    ],
                  ),
                ),
                margin: const EdgeInsets.only(top: 1.0, bottom: 15.0),
                height: 60,
                width: double.infinity,
                child: Align(
                  alignment: Alignment(-0.6, 0),
                  child: Text("Directorio empresarial",
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 26)),
                ),
              ), //fin de titulo directorio empresarial
              SizedBox(
                // inicio de body directorio empresarial
                height: 240,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    ////primer directorio empresarial

                    InkWell(
                        splashColor: Color.fromRGBO(0, 0, 200, 1),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Color(0xffe0e0e0), Colors.indigo],
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(1.0, 5.0),
                                )
                              ]),
                          margin: const EdgeInsets.only(left: 10, right: 5),
                          child: Column(children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/img/user.jpg'),
                                radius: 50,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text("Reputacion",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                            ////////// reputacion
                            Expanded(
                              child: Container(
                                child: RatingBar.builder(
                                  ignoreGestures: true,
                                  initialRating: 4.5,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                            ),
                            Container(
                              width: 280,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue[800],
                                  border: Border.all(color: Colors.white)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Nombre de empresa",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                    /* Icon(
                                      Icons.contacts_outlined,
                                      size: 25,
                                      color: Colors.white,
                                    ),*/
                                  ]),
                            ),
                          ]),
                        ),
                        onTap: () {
                          //aqui se enviara a la carpeta correspondiente
                        }),

                    ////////////////////////  segundo directorio

                    InkWell(
                        splashColor: Color.fromRGBO(0, 0, 200, 1),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Color(0xffe0e0e0), Colors.indigo],
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(1.0, 5.0),
                                )
                              ]),
                          margin: const EdgeInsets.only(left: 5, right: 5),
                          child: Column(children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/img/user.jpg'),
                                radius: 50,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text("Reputacion",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                            ////////// reputacion
                            Expanded(
                              child: Container(
                                child: RatingBar.builder(
                                  ignoreGestures: true,
                                  initialRating: 5,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                            ),
                            Container(
                              width: 280,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue[800],
                                  border: Border.all(color: Colors.white)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Nombre de empresa",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                    /* Icon(
                                      Icons.contacts_outlined,
                                      size: 25,
                                      color: Colors.white,
                                    ),*/
                                  ]),
                            ),
                          ]),
                        ),
                        onTap: () {
                          //aqui se enviara a la carpeta correspondiente
                        }),

////tercer directorio

                    InkWell(
                        splashColor: Color.fromRGBO(0, 0, 200, 1),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Color(0xffe0e0e0), Colors.indigo],
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(1.0, 5.0),
                                )
                              ]),
                          margin: const EdgeInsets.only(left: 5, right: 5),
                          child: Column(children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/img/user.jpg'),
                                radius: 50,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text("Reputacion",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                            ////////// reputacion
                            Expanded(
                              child: Container(
                                child: RatingBar.builder(
                                  ignoreGestures: true,
                                  initialRating: 4,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                            ),
                            Container(
                              width: 280,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue[800],
                                  border: Border.all(color: Colors.white)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Nombre de empresa",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                    /* Icon(
                                      Icons.contacts_outlined,
                                      size: 25,
                                      color: Colors.white,
                                    ),*/
                                  ]),
                            ),
                          ]),
                        ),
                        onTap: () {
                          //aqui se enviara a la carpeta correspondiente
                        }),

                     // cuarto directorio
                    InkWell(
                        splashColor: Color.fromRGBO(0, 0, 200, 1),
                        child: Container(
                          //  padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Color(0xffe0e0e0), Colors.indigo],
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(1.0, 5.0),
                                )
                              ]),
                          margin: const EdgeInsets.only(left: 5, right: 5),
                          child: Column(children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/img/user.jpg'),
                                radius: 50,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text("Reputacion",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                            ////////// reputacion
                            Expanded(
                              child: Container(
                                child: RatingBar.builder(
                                  ignoreGestures: true,
                                  initialRating: 2.5,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ),
                            ),
                            Container(
                              width: 280,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue[800],
                                  border: Border.all(color: Colors.white)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Nombre de empresa",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                    /*  Container(
                                  // color: Colors.blue,
                                  alignment: Alignment.bottomLeft,
                                  width: 50,
                                  child: RaisedButton(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.white, width: 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.blue[800],
                                    child: Icon(
                                      Icons.contacts_outlined,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    splashColor: Colors.white,
                                    onPressed: () {},
                                  ),
                                ),*/
                                  ]),
                            ),
                          ]),
                        ),
                        onTap: () {
                          //aqui se enviara a la carpeta correspondiente
                        }),

                    ////////////////ver todo el directorio

                    Container(
                      // color: Colors.grey[200],
                      margin: EdgeInsets.all(50),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Ver todos',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

///////////// inicio de Proximos eventos

              Container(
                //inicio de titulo proximos eventos
                //color: Palette.primaryColor,
                color: Color.fromRGBO(18, 10, 143, 1),

                margin: const EdgeInsets.only(top: 25.0, bottom: 25.0),
                height: 60,
                width: double.infinity,
                child: Align(
                  alignment: Alignment(-0.7, 0),
                  child: Text("Proximos eventos",
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 26)),
                ),
              ), //fin de titulo proximos eventos

              SizedBox(
                // inicio de body proximos eventos
                height: 240,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    ////primer evento

                    InkWell(
                        splashColor: Color.fromRGBO(0, 0, 200, 1),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Color(0xffe0e0e0), Colors.indigo],
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(1.0, 5.0),
                                )
                              ]),
                          margin: const EdgeInsets.only(left: 10, right: 5),
                          child: Column(children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/img/BimEmp2.png',
                                // width: 300,
                                height: 150,
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Text("Fecha: " + "12/12/2022",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 280,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue[800],
                                  border: Border.all(color: Colors.white)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Nombre del evento",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                    /* Icon(
                                      Icons.contacts_outlined,
                                      size: 25,
                                      color: Colors.white,
                                    ),*/
                                  ]),
                            ),
                          ]),
                        ),
                        onTap: () {
                          //aqui se enviara a la carpeta correspondiente
                        }),

                    ////////////////////////  segundo evento

                    InkWell(
                        splashColor: Color.fromRGBO(0, 0, 200, 1),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Color(0xffe0e0e0), Colors.indigo],
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(1.0, 5.0),
                                )
                              ]),
                          margin: const EdgeInsets.only(left: 10, right: 5),
                          child: Column(children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/img/BimEmp2.png',
                                // width: 300,
                                height: 150,
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Text("Fecha: " + "12/12/2022",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 280,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue[800],
                                  border: Border.all(color: Colors.white)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Nombre del evento",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                    /* Icon(
                                      Icons.contacts_outlined,
                                      size: 25,
                                      color: Colors.white,
                                    ),*/
                                  ]),
                            ),
                          ]),
                        ),
                        onTap: () {
                          //aqui se enviara a la carpeta correspondiente
                        }),

////tercer evento

                    InkWell(
                        splashColor: Color.fromRGBO(0, 0, 200, 1),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Color(0xffe0e0e0), Colors.indigo,]
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(1.0, 5.0),
                                )
                              ]),
                          margin: const EdgeInsets.only(left: 10, right: 5),
                          child: Column(children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/img/BimEmp2.png',
                                // width: 300,
                                height: 150,
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Text("Fecha: " + "12/12/2022",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 280,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue[800],
                                  border: Border.all(color: Colors.white)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Nombre del evento",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                    /* Icon(
                                      Icons.contacts_outlined,
                                      size: 25,
                                      color: Colors.white,
                                    ),*/
                                  ]),
                            ),
                          ]),
                        ),
                        onTap: () {
                          //aqui se enviara a la carpeta correspondiente
                        }),

// cuarto evento
                    InkWell(
                        splashColor: Color.fromRGBO(0, 0, 200, 1),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [Color(0xffe0e0e0), Colors.indigo,]
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 10.0,
                                  spreadRadius: 1.0,
                                  offset: Offset(1.0, 5.0),
                                )
                              ]),
                          margin: const EdgeInsets.only(left: 10, right: 5),
                          child: Column(children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                'assets/img/BimEmp2.png',
                                // width: 300,
                                height: 150,
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              child: Text("Fecha: " + "12/12/2022",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(height: 10),
                            Container(
                              width: 280,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue[800],
                                  border: Border.all(color: Colors.white)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("Nombre del evento",
                                          style: GoogleFonts.montserrat(
                                              color: Colors.white,
                                              fontSize: 20)),
                                    ),
                                    /* Icon(
                                      Icons.contacts_outlined,
                                      size: 25,
                                      color: Colors.white,
                                    ),*/
                                  ]),
                            ),
                          ]),
                        ),
                        onTap: () {
                          //aqui se enviara a la carpeta correspondiente
                        }),

                    ////////////////ver todos los eventos

                    Container(
                      // color: Colors.grey[200],
                      margin: EdgeInsets.all(50),
                      child: Align(
                        alignment: Alignment.center,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 30),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Ver todos',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //// fin de proximos eventos
              ///inicio de membresias
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(18, 10, 143, 1),
                  // color: Colors.orange[300],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 3,
                      offset: Offset(2, 4), // Shadow position
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(
                    top: 25.0, bottom: 3.0, left: 1, right: 1),
                height: 70,
                width: double.infinity,
                child: Align(
                  alignment: Alignment(0, 0),
                  child: Text("Â¿Que te puede ofrecer Business in Motion?",
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ),
              Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                          bottom: 15.0, left: 1, right: 1),
                      decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.only(to),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 3,
                            offset: Offset(2, 4), // Shadow position
                          ),
                        ],
                      ),
                      width: double.infinity,
                      height: 300,
                      child: Card(
                        color: Colors.orange[300],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 130,
                              child: Icon(
                                Icons.business,
                                size: 115,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              width: 200,
                              // width: double.infinity,
                              height: 400,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Tu mejor opcion!!",
                                      textAlign: TextAlign.start,
                                      style: GoogleFonts.montserrat(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25)),
                                  Text(
                                    "Business in Motion......Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet volutpat consequat mauris nunc congue nisi vitae suscipit.",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  ),
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: RaisedButton(
                                      color: Color.fromRGBO(18, 10, 143, 1),
                                      onPressed: () {},
                                      child: Text("Conoce mas",
                                          style:
                                              TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.indigo,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(2, -5), // Shadow position
                          ),
                        ],
                      ),
                      margin:
                          const EdgeInsets.only(top: 25.0, left: 1, right: 1),
                      height: 200,
                      width: double.infinity,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Eres empresario y te gustaria formar parte de nuestra comunidad empresarial?",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 19),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            Container(
                              alignment: Alignment.center,
                              child: RaisedButton(
                                color: Color.fromRGBO(18, 10, 143, 1),
                                onPressed: () {},
                                child: Text("Da click aqui",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ]),
                    ),
                  ])
            ],
          ),
        ],
      ),
    );
  }
}


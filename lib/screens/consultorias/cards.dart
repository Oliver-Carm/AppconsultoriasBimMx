import 'dart:io';
import 'package:app_bimmx/screens/dashboard/home_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_bimmx/login.dart';
import 'package:app_bimmx/screens/directorio_empresarial/directorio_empresarial.dart';
import 'package:app_bimmx/screens/publicidad/publicidad.dart';

class Cards extends StatelessWidget {
  static String id = 'consultoria';
  @override
  static const String _title = 'Servicios de consultoria';
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
       drawer: new Drawer(
           child: Container(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
               DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(50, 75, 205, 1),
            ),
            child: Column(
              
              children: <Widget>[
                Material(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    child: Image.asset('assets/img/user.png', width: 100, height: 100,),
                   elevation: 10,
                ),
                Text('Oliver Carmona', style: TextStyle(color: Colors.white, fontSize: 20.0),),
            
               
              ],

            ),
            ),
           
          
            ListTile(
              leading: Icon(
                Icons.home,
               color: Colors.white,
                ),
              title: Text('Inicio',style: TextStyle(color: Colors.white, fontSize: 16)),
             
              onTap: () {
               Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
         
           
              const SizedBox(height: 10),
             ListTile(
              leading: Icon(
                Icons.library_books,
               color: Colors.white,
                ),
              title: Text('Directorio', style: TextStyle(color: Colors.white,fontSize: 16)),
             
              onTap: () {
                Navigator.pushNamed(context, DirectorioEmpresarial.id);
              },
            ),
              const SizedBox(height: 10),
             ListTile(
              leading: Icon(
                Icons.rate_review,
                color: Colors.white,
                ),
              title: Text('Publicidad',style: TextStyle(color: Colors.white,fontSize: 16)),
              
              onTap: () {
              Navigator.pushNamed(context, Publicidad.id);
              },
            ),
             
            
             const SizedBox(height: 60),
             Divider(
              height: 8.0,
             color: Colors.white,
              indent: 16.0,
              endIndent: 16.0,
            ),
             ListTile(
              leading: Icon(
                Icons.logout,
               color: Colors.white,
                ),
              title: Text('Salir',style: TextStyle(color: Colors.white,fontSize: 16)),
             
              onTap: () {
               Navigator.pushNamed(context, Login.id);
              },
            ),
            
          ],
        ),
      ),
          
        ),
        appBar: AppBar(title: const Text(_title)),
        backgroundColor: Color.fromARGB(255, 209, 224, 224),
        body: _ListView(),
        floatingActionButton: FloatingActionButton(
          onPressed: _launchURL_api_whasapp,
          backgroundColor: Colors.green,
          heroTag: "¿Tienes alguna duda?",
          child: Image(
            image: AssetImage('assets/icons/whatsapp.png'),
            fit: BoxFit.cover,
            height: 40,
          ),
          elevation: 10,
        ),
      ),
    );
  }
}

Widget _ListView() {
  return ListView(
    //scrollDirection: Axis.vertical, itemCount: 10, itemBuilder: (context,position){return Padding(padding: const EdgeInsets.all(8.0),child: Container(  width: 200.0,height: 150.0, color: Colors.blue, child: Text("Posicion $position"),),); },
    children: <Widget>[
      CardImage1(),
      CardInf1(),
      CardImage2(),
      CardInf2(),
      CardMediosdeContacto()
    ],
  );
}

Card CardImage1() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        Image(
          image: AssetImage('assets/img/bim.jpg'),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text('Nombre Servicio'),
        ),
      ],
    ),
  );
}

Card CardInf1() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Titulo'),
          subtitle: Text(
              'Este es el subtitulo del card. Aqui podemos colocar descripción de este card.'),
          leading: Icon(Icons.home),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(onPressed: () => {}, child: Text('Mas Información')),
            //FlatButton(onPressed: () => {}, child: Text('Cancelar'))
          ],
        )
      ],
    ),
  );
}

Card CardImage2() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
         Image(
          image: AssetImage('assets/img/bim.jpg'),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text('Nombre Servicio'),
        )
      ],
    ),
  );
}

Card CardInf2() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    color: Color.fromARGB(255, 255, 255, 255),
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Titulo'),
          subtitle: Text(
              'Este es el subtitulo del card. Aqui podemos colocar descripción de este card.'),
          leading: Icon(Icons.home),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(onPressed: () => {}, child: Text('Mas Información')),
            //FlatButton(onPressed: () => {}, child: Text('Cancelar'))
          ],
        )
      ],
    ),
  );
}

Card CardMediosdeContacto() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    color: Color.fromARGB(255, 255, 255, 255),
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Síguenos',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
          subtitle: Text('En redes sociales y entérate de nuestros eventos'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            FlatButton(
                child: Image(
                  image: AssetImage('assets/icons/facebook.png'),
                  fit: BoxFit.cover,
                  height: 50,
                ),
                onPressed: _launchURL_facebook),
            FlatButton(
                child: Image(
                  image: AssetImage('assets/icons/instagram.png'),
                  fit: BoxFit.cover,
                  height: 50,
                ),
                onPressed: _launchURL_instagram),
            FlatButton(
                child: Image(
                  image: AssetImage('assets/icons/linkedin.png'),
                  fit: BoxFit.cover,
                  height: 50,
                ),
                onPressed: _launchURL_linkedln),
            FlatButton(
                child: Image(
                  image: AssetImage('assets/icons/twitter.png'),
                  fit: BoxFit.cover,
                  height: 50,
                ),
                onPressed: _launchURL_twitter),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
            ),
            //FlatButton(onPressed: () => {}, child: Text('Mas Información')),
            //FlatButton(onPressed: () => {}, child: Text('Cancelar'))
          ],
        )
      ],
    ),
  );
}

_launchURL_facebook() async {
  const url = 'https://www.facebook.com/binmotionmx/';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true, enableJavaScript: true);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL_instagram() async {
  const url = 'https://www.instagram.com/binmotionmx/?hl=es';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true, enableJavaScript: true);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL_twitter() async {
  const url = 'https://twitter.com/binmotionmx';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true, enableJavaScript: true);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL_linkedln() async {
  const url = 'https://mx.linkedin.com/company/binmotionmx';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true, enableJavaScript: true);
  } else {
    throw 'Could not launch $url';
  }
}

_launchURL_api_whasapp() async {
  const url = 'https://api.whatsapp.com/send?phone=4424547902';
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true, enableJavaScript: true);
  } else {
    throw 'Could not launch $url';
  }
}

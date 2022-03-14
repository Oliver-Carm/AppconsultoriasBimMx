
import 'package:app_bimmx/inicio.dart';
import 'package:app_bimmx/login.dart';
import 'package:app_bimmx/screens/chat_interno/chat_detail_page.dart';
import 'package:app_bimmx/screens/consultorias/cards.dart';
import 'package:app_bimmx/screens/dashboard/home_screen.dart';
import 'package:app_bimmx/screens/directorio_empresarial/directorio_empresarial.dart';
import 'package:app_bimmx/screens/invitado/invitadopage.dart';
import 'package:app_bimmx/screens/invitado/test.dart';
import 'package:app_bimmx/screens/publicidad/publicidad.dart';
import 'package:app_bimmx/screens/registro/AddCompany.dart';
import 'package:app_bimmx/screens/registro/PaqueteFin.dart';
import 'package:app_bimmx/screens/registro/RegistroN.dart';
import 'package:app_bimmx/screens/registro/finRegistro.dart';
import 'package:app_bimmx/screens/registro/registrar_person.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
     // home: BottomNavScreen(),
     home: Inicio(),
      routes: {
      'inicio': (context) => Inicio(),
      'login' : (context) => Login(),
      'dashboard' : (context) => HomeScreen(),
      'registrare': (context) => RegistroN(),
      'directorio' : (context) => const DirectorioEmpresarial(),
      'invitadopage' : (context) => InvitadoPage(),
      'testtest' : (context) => TestTest(),
      'publicidad' : (context) => Publicidad(),
      'consultoria' : (context) => Cards(),
      'chat' : (context) => ChatDetailPage(),
      'addcompañia': (context) => AddCompany(),
      'registrarp' : (context) => registrar_person(),
      'finregistro' : (context) => FinRegistro(),   
      'paquetefin': (context) => PaqueteFin(),  
     },
    );
  }
}

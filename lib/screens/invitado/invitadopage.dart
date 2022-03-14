
import 'package:app_bimmx/login.dart';
import 'package:app_bimmx/screens/invitado/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


class InvitadoPage extends StatefulWidget {
  static String id = 'invitadopage';

  @override
  _InvitadoPageState createState() => _InvitadoPageState();
}

class _InvitadoPageState extends State<InvitadoPage> {
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
          leading: Icon(Icons.card_membership),
          title: Text('MembresÃ­as'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.calendar_today),
          title: Text('Cursos'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.work),
          title: Text('Talleres'),
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
          Container(
            height: 200, //determina el tamaÃ±o del header
            decoration: BoxDecoration(
                image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage('assets/img/BIMLogo.png'))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 60,
                child: Text("Bienvenido a App In Motion",
                    style: GoogleFonts.montserrat(
                        color: Colors.black, fontSize: 25)),
              ),
              Container(
                width: 320,
                height: 250,
                child: Text(
                    'Hacer negocios con empresas solventes ayudará a mejorar tus costos con descuentos preferentes que se otorgan para beneficios de los mismos socios, siempre conocerás nuevos empresarios a quien presentar a tu empresa y contarpas con una red de contactos comerciales que te ayudarán a difundir tu mensaje.',
                    style: GoogleFonts.montserrat(
                        color: Colors.grey[800], fontSize: 18)),
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, TestTest.id );
                  },
                  child: Container(
                    width: 320,
                    height: 45,
                    color: Colors.indigo,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Conoce más",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                  color: Colors.white, fontSize: 18)),
                        ]),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

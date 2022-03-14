
import 'package:app_bimmx/screens/dashboard/home_screen.dart';
import 'package:app_bimmx/screens/directorio_empresarial/cliente.dart';
import 'package:app_bimmx/screens/directorio_empresarial/info_cliente.dart';
import 'package:app_bimmx/screens/publicidad/publicidad.dart';
import 'package:flutter/material.dart';
import 'package:app_bimmx/screens/consultorias/cards.dart';
import 'package:app_bimmx/login.dart';


class DirectorioEmpresarial extends StatefulWidget {
    static String id = 'directorio';
  const DirectorioEmpresarial({Key? key}) : super(key: key);

  @override
  _DirectorioEmpresarial createState() => _DirectorioEmpresarial();
}

class _DirectorioEmpresarial extends State<DirectorioEmpresarial> {
  static List<String> nombreCliente =
      List.generate(10, (index) => "Cliente $index");

  static List<String> url =
      List.generate(10, (index) => 'assets/img/logo.png');

  static String descripcion =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.";

  static String giro = "Teconologia";

  final List<Cliente> clienteData = List.generate(nombreCliente.length,
      (index) => Cliente(nombreCliente[index], url[index], giro, descripcion));

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < 4; i++) {
      nombreCliente[i] = ('Cliente $i');
    }

    return Scaffold(
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
              const SizedBox(height: 10),
             ListTile(
              leading: Icon(
                Icons.leaderboard,
               color: Colors.white,
                ),
              title: Text('Servicios de consultoría',style: TextStyle(color: Colors.white,fontSize: 16)),
             
              onTap: () {
               Navigator.pushNamed(context, Cards.id);
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
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 83, 109, 254),
          title: const Text('Directorio Empresarial'),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: clienteData.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                        child: ListTile(
                          //contentPadding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                          title: Text(clienteData[index].name),
                          subtitle: Text(clienteData[index].giro),
                          leading: SizedBox(
                            child: Image(
                              image: AssetImage(clienteData[index].imageUrl),
                              // width: 80,
                              height: 100,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => InfoCliente(
                                      datos: clienteData[index],
                                    )));
                          },
                        ),
                      );
                    }))
          ],
        ));
  }
}

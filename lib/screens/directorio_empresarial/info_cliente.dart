
import 'package:app_bimmx/screens/chat_interno/chat_detail_page.dart';
import 'package:app_bimmx/screens/directorio_empresarial/cliente.dart';
import 'package:app_bimmx/screens/directorio_empresarial/detalle_servicio.dart';
import 'package:app_bimmx/screens/directorio_empresarial/formulario_contacto.dart';
import 'package:flutter/material.dart';


class InfoCliente extends StatelessWidget {
  final Cliente datos;
  static List<String> servicios = [
    'Marketing',
    'Finanzas',
    'Sistemas',
    'Administración',
    'Ventas'
  ];

  static String descripcion =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.";

  const InfoCliente({Key? key, required this.datos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 83, 109, 254),
        title: Text(datos.name),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    image: AssetImage(datos.imageUrl),
                    height: 130,
                    width: 130,
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Información",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                maxLines: 1,
                textAlign: TextAlign.left,
              ),
            ),
            Text(
              datos.desc,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Productos o servicios",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                maxLines: 1,
                textAlign: TextAlign.left,
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: List.generate(servicios.length, (index) {
                return GestureDetector(
                  child: Card(
                      child: Center(
                    child: Text(
                      servicios[index],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  )),
                  onTap: () {
                    // FormularioContacto(servicios: servicios);
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return DetalleServicio(
                            servicio: servicios[index],
                            descripcion: descripcion,
                            costo: 14,
                          );
                        });
                  },
                );
              }),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Contacto",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                maxLines: 1,
                textAlign: TextAlign.left,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 10, bottom: 10),
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const <Widget>[
                        Icon(
                          Icons.call,
                          color: Color.fromARGB(255, 83, 109, 254),
                          size: 26,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "+52 442 0000 000",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.mail,
                          color: Color.fromARGB(255, 83, 109, 254),
                          size: 26,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "binmotion@gmail.com",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const <Widget>[
                        Icon(
                          Icons.location_pin,
                          color: Color.fromARGB(255, 83, 109, 254),
                          size: 26,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "col. .........",
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 10),
              alignment: Alignment.centerLeft,
              child: const Text(
                "Reputación",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                maxLines: 1,
                textAlign: TextAlign.left,
              ),
            ),
            Container(
                margin: const EdgeInsets.only(bottom: 50.0),
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const FormularioContacto()));
                            },
                            child: Container(
                              margin: const EdgeInsets.all(30.0),
                              alignment: Alignment.center,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                color: const Color.fromARGB(255, 83, 109, 254),
                              ),
                              child: const Text("Contactar",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                              padding:
                                  const EdgeInsets.only(top: 16, bottom: 16),
                            ))),
                  ],
                  
                )),
                TextButton(
                 onPressed: (){
                   Navigator.pushNamed(context, 'chat');
                 },
                 child: Text('Contactar'),
                 ),
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';

class FormularioContacto extends StatefulWidget {
  const FormularioContacto({Key? key}) : super(key: key);

  @override
  _FormularioContactoState createState() => _FormularioContactoState();
}

class _FormularioContactoState extends State<FormularioContacto> {
  GlobalKey<FormState> keyForm = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 83, 109, 254),
          title: const Text('Contactanos'),
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Form(
              key: keyForm,
              child: Card(
                child: formUI(),
              )),
        )));
  }
}

formItemsDesign(icon, item) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 7),
    child: ListTile(
        contentPadding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
        leading: Icon(icon, color: const Color.fromARGB(255, 83, 109, 254)),
        title: item),
  );
}

String dropdownValue = 'One';

Widget formUI() {
  List<String> servicios = [
    'Marketing',
    'Finanzas',
    'Sistemas',
    'Administración',
    'Ventas'
  ];

  return Column(
    children: <Widget>[
      formItemsDesign(
          Icons.person,
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Nombre',
            ),
          )),
      formItemsDesign(
          Icons.phone,
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Numero de telefono',
            ),
            keyboardType: TextInputType.phone,
          )),
      formItemsDesign(
          Icons.email,
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Email',
            ),
            keyboardType: TextInputType.emailAddress,
          )),
      formItemsDesign(
        Icons.gif_box_rounded,
        DropdownButtonFormField(
            decoration: const InputDecoration(
              labelText: 'Producto o servicio de interes',
            ),
            items: servicios.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: onChanged),
      ),
      formItemsDesign(
          Icons.bookmark_rounded,
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Breve descripcion de lo requerido',
            ),
            maxLines: 3,
            maxLength: 500,
          )),
      GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.all(30.0),
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              color: const Color.fromARGB(255, 83, 109, 254),
            ),
            child: const Text("Enviar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500)),
            padding: const EdgeInsets.only(top: 16, bottom: 16),
          ))
    ],
  );
}

void onChanged(value) {}

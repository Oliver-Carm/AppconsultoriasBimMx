
import 'package:app_bimmx/screens/directorio_empresarial/formulario_contacto.dart';
import 'package:flutter/material.dart';

class DetalleServicio extends StatefulWidget {
  final String servicio;
  final String descripcion;
  final double costo;

  const DetalleServicio({
    Key? key,
    required this.servicio,
    required this.descripcion,
    required this.costo,
  }) : super(key: key);

  @override
  _DetalleServicioState createState() => _DetalleServicioState();
}

class _DetalleServicioState extends State<DetalleServicio> {
  static const double padding = 20;
  static const double avatarRadius = 45;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
              left: padding,
              top: 20 + padding,
              right: padding,
              bottom: padding),
          margin: const EdgeInsets.only(top: avatarRadius),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                widget.servicio,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Descripcion:",
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.descripcion,
                style: const TextStyle(fontSize: 15),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Costo:",
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                r"$" + widget.costo.toString(),
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: 22,
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FormularioContacto()));
                        // Navigator.of(context).pop();
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
                        padding: const EdgeInsets.only(top: 16, bottom: 16),
                      ))),
            ],
          ),
        ),
      ],
    );
  }
}

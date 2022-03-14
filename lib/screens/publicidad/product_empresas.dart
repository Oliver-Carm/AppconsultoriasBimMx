
import 'package:flutter/material.dart';

class ProductEmpresas extends StatelessWidget {
  const ProductEmpresas({
    required this.press,
  });

  final press;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 150,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            // Those are our background
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.blue,
               
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      topLeft: Radius.circular(22),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(right: 15),
                child: Row(
                  children: <Widget>[
                   /* FadeInImage(
                      placeholder: AssetImage('assets/gif/jar-loading.gif'),
                      image: AssetImage('assets/imagenes/logoflutter.png'),
                    ),*/
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: 200,
                          child: Text(
                            'Business in Motion',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: SizedBox(
                            height: 90,
                            width: 200,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Enfocada en apoyar a pequeñas y medianas empresas a generar distintas oportunidades de negocios.',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

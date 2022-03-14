//import 'package:app_motion/screens/constants.dart';
import 'package:flutter/material.dart';

class ProductCategorias extends StatelessWidget {
  const ProductCategorias({
    //  required this.itemIndex,
    // required this.product,
    required this.press,
  });

  // final int itemIndex;
  // final Product product;
  final press;
  // final img = 'assets/img/Publicidad_prueba.png';

  @override
  Widget build(BuildContext context) {
    // It  will provide us total height and width of our screen
    //Size size = MediaQuery.of(context).size;
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
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage('assets/img/Categoria_Industria.png'),
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.18), BlendMode.darken),
                  )),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(60, 0, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Industria',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

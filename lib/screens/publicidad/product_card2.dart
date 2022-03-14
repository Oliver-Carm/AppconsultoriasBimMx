
//import 'package:app_motion/screens/product.dart';
import 'package:flutter/material.dart';

class ProductCard2 extends StatelessWidget {
  const ProductCard2({
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
      // color: Colors.blueAccent,
      // height: 200,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            // Those are our background
            Container(
              //height: ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.blue,
              
              ),
              child: Container(
                margin: EdgeInsets.only(right: 15),
                color: Colors.grey,
                child: Image.asset(
                  'assets/img/PublicidadGeneral.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

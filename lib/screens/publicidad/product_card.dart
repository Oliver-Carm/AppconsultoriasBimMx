
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
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
      //height: 200,
      child: InkWell(
        onTap: press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            // Those are our background
            Container(
              // height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.blue,
              
              ),
              child: Container(
                margin: EdgeInsets.only(right: 15),
                color: Colors.red,
                child: Image.asset(
                  'assets/img/Publicidad_prueba.png',
                ),
                /* decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),*/
              ),
            ),

            /* // our product image
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: '${product.id}',
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 160,
                  // image is square but we add extra 20 + 20 padding thats why width is 200
                  width: 200,
                  /* child: Image.asset(
                    product.image,
                    fit: BoxFit.cover,
                  ),*/
                ),
              ),
            ),*/
            // Product title and price
            /*Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                // our image take 200 width, thats why we set out total width - 200
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      /*child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.button,
                      ),*/
                    ),
                    // it use the available space
                    Spacer(), /*
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 1.5, // 30 padding
                        vertical: kDefaultPadding / 4, // 5 top and bottom
                      ),
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                       child: Text(
                        "\$${product.price}",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ),*/
                  ],
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}

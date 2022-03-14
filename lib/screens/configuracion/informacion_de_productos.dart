// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';


class InformacionDeProductos extends StatefulWidget {
  const InformacionDeProductos({Key? key}) : super(key: key);

  @override
  _InformacionDeProductosState createState() => _InformacionDeProductosState();
}

class _InformacionDeProductosState extends State<InformacionDeProductos> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Informacion de productos'),
       /* leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const DrawerPage()))),*/
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Card(
            margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
            child: Column(
              children: [
                Image.network('https://blog.izabc.com.mx/hubfs/3-4.jpg')
              ],
            )),
        FlatButton(
          color: Colors.blue,
          onPressed: () {
            print("Hello world");
          },
          child: const Center(
            child: Text(
              'producto 1',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: Color.fromARGB(255, 255, 255, 255),
                height: 1,
              ),
            ),
          ),
        ),
        Card(
            margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
            child: Column(
              children: [
                Image.network('https://blog.izabc.com.mx/hubfs/3-4.jpg')
              ],
            )),
        FlatButton(
          color: Colors.blue,
          onPressed: () {
            print("Hello world");
          },
          child: const Center(
            child: Text(
              'producto 2',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: Color.fromARGB(255, 255, 255, 255),
                height: 1,
              ),
            ),
          ),
        ),
        Card(
            margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
            child: Column(
              children: [
                Image.network('https://blog.izabc.com.mx/hubfs/3-4.jpg')
              ],
            )),
        FlatButton(
          color: Colors.blue,
          onPressed: () {
            print("Hello world");
          },
          child: const Center(
            child: Text(
              'producto 3',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: Color.fromARGB(255, 255, 255, 255),
                height: 1,
              ),
            ),
          ),
        ),
        Card(
            margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
            child: Column(
              children: [
                Image.network('https://blog.izabc.com.mx/hubfs/3-4.jpg')
              ],
            )),
        FlatButton(
          color: Colors.blue,
          onPressed: () {
            print("Hello world");
          },
          child: const Center(
            child: Text(
              'producto 4',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: Color.fromARGB(255, 255, 255, 255),
                height: 1,
              ),
            ),
          ),
        ),
        Card(
            margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
            child: Column(
              children: [
                Image.network('https://blog.izabc.com.mx/hubfs/3-4.jpg')
              ],
            )),
        FlatButton(
          color: Colors.blue,
          onPressed: () {
            print("Hello world");
          },
          child: const Center(
            child: Text(
              'producto 5',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 18,
                color: Color.fromARGB(255, 255, 255, 255),
                height: 1,
              ),
            ),
          ),
        )
      ])));
}


//import 'package:app_motion/screens/category_list_publisidad.dart';
//import 'package:app_motion/screens/constants.dart';

//import 'package:app_motion/screens/product.dart';
import 'package:app_bimmx/screens/consultorias/cards.dart';
import 'package:app_bimmx/login.dart';
import 'package:app_bimmx/screens/dashboard/home_screen.dart';
import 'package:app_bimmx/screens/directorio_empresarial/directorio_empresarial.dart';
import 'package:app_bimmx/screens/publicidad/PublicidadCategoria.dart';
import 'package:app_bimmx/screens/publicidad/info_publicidad.dart';
import 'package:app_bimmx/screens/publicidad/mi_publicidad.dart';
import 'package:app_bimmx/screens/publicidad/nueva_publicidad.dart';
import 'package:app_bimmx/screens/publicidad/product_card.dart';
import 'package:app_bimmx/screens/publicidad/product_card2.dart';
import 'package:app_bimmx/screens/publicidad/product_categorias.dart';
import 'package:app_bimmx/screens/publicidad/product_empresas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Publicidad extends StatefulWidget {
  static String id = 'publicidad';

  @override
  _PublicidadState createState() => _PublicidadState();
}

class _PublicidadState extends State<Publicidad> {
  int selectedIndex = 0;
  List categories = [
    'Mis publicaciones',
    'Todos',
    'Categorias',
    'Destacados',
    'Empresas'
  ];

  // int _publicacionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: BodyPublicidad1(),
        drawer: new Drawer(
          child: Datos(),
        ),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Builder(
              builder: (context) => IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/icon.svg",
                  height: 19,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
          ),
          backgroundColor: Colors.indigo,
          // elevation: 0,
          //  centerTitle: false,
          //  titleSpacing: 0,
          actions: <Widget>[
            IconButton(
              icon: new Icon(Icons.settings),
              onPressed: () {},
            ),
          ],
        ),
        floatingActionButton: buttonPublicidad()

        /*
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _crearBIM(),
          SizedBox(height: 10.0),
          _cardTipo1(),
          SizedBox(height: 10.0),
          _cardTipo1(),
          SizedBox(height: 10.0),
          _cardTipo1(),
          SizedBox(height: 10.0),
          _cardTipo1(),
          SizedBox(height: 10.0),
          _cardTipo1(),
          SizedBox(height: 10.0),
          _cardTipo1(),
          SizedBox(height: 10.0),
          _cardTipo1(),
          SizedBox(height: 10.0),
          _cardTipo1(),
          SizedBox(height: 10.0),
          _cardTipo1(),
          SizedBox(height: 10.0),
          _cardTipo1(),
          SizedBox(height: 10.0),
          _cardTipo1(),
          SizedBox(height: 10.0),
          _cardTipo1(),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Widget _crearBIM() {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/img/BIMLogo.png',
            height: 130,
            width: 400,
          ),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            title: Text('Socio'),
            subtitle:
                Text('Descripción breve del empresario para ver sus datos'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: Text('Contactar'),
              ),
              TextButton(
                onPressed: () => _showOverlay(context),
                child: Text('Ver datos'),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _crearlistview() {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (_, index) {
          return ListTile(
            title: Text('Socio Nombre $index'),
            leading: Icon(Icons.person),
          );
        });
  }

  Widget _crearDirectorio() {
    return Container(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      color: Colors.indigo,
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Directorio de Socios',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  late List<Para> param;
  late bool sortAscending;

  @override
  void initState() {
    super.initState();
    sortAscending = false;
    param = Para.getParametros();
  }

  List<Para> usersFiltered = [];
  TextEditingController controller = TextEditingController();
  String _searchResult = '';

  Widget _crearBuscar() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      color: Colors.indigo[50],
      child: Center(
        child: Column(
          children: <Widget>[
            Card(
              child: new ListTile(
                leading: new Icon(Icons.search),
                title: new TextField(
                    controller: controller,
                    decoration: new InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                    onChanged: (value) {
                      setState(() {
                        _searchResult = value;
                        usersFiltered = param
                            .where((param) =>
                                param.socio.contains(_searchResult) ||
                                param.empresa.contains(_searchResult))
                            .toList();
                      });
                    }),
                trailing: new IconButton(
                  icon: new Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      controller.clear();
                      _searchResult = '';
                      usersFiltered = param;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),*/
        );
  }

  buttonPublicidad() {
    return FloatingActionButton.extended(
      onPressed: () =>
          showDialog(context: context, builder: (context) => NuevaPublicidad()),
      label: Icon(Icons.add),
      backgroundColor: Colors.deepOrange,
    );
  }

  Datos() {
    return Container(
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
                  child: Image.asset(
                    'assets/img/user.png',
                    width: 100,
                    height: 100,
                  ),
                  elevation: 10,
                ),
                Text(
                  'Oliver Carmona',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text('Inicio',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.id);
            },
          ),
          const SizedBox(height: 10),
          
          const SizedBox(height: 10),
          ListTile(
            leading: Icon(
              Icons.library_books,
              color: Colors.white,
            ),
            title: Text('Directorio',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: () {
              Navigator.pushNamed(context, DirectorioEmpresarial.id);
            },
          ),
          const SizedBox(height: 10),
         
          const SizedBox(height: 10),
          ListTile(
            leading: Icon(
              Icons.leaderboard,
              color: Colors.white,
            ),
            title: Text('Servicios de consultoría',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: () {
            Navigator.pushNamed(context, Cards.id);
            },
          ),
         
         
          const SizedBox(height: 20),
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
            title: Text('Salir',
                style: TextStyle(color: Colors.white, fontSize: 16)),
            onTap: () {
              Navigator.pushNamed(context, Login.id);
            },
          ),
        ],
      ),
    );
  }

  BodyPublicidad1() {
    return Container(
      child: new Column(
        children: <Widget>[
          CrearBarra(),
          SizedBox(height: 10 / 4),
          Expanded(
            child: Stack(
              children: <Widget>[
                // Our background
                Container(
                  margin: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                ),
                CrearPublicidad()
                // Image.asset('assets/img/Publicidad_prueba.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  CrearBarra() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 20,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: 10,
              // At end item it add extra 20 right  padding
              right: index == categories.length - 1 ? 10 : 0,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? Colors.white.withOpacity(0.4)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              categories[index],
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget CrearPublicidad() {
    if (selectedIndex == 0) {
      return ListView.builder(
        // here we use our demo procuts list
        itemCount: 5,
        itemBuilder: (context, index) => ProductCard(
          // itemIndex: index,
          // product: products[index],
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MiPublicidad()),
            );
          },
        ),
      );
    }
    if (selectedIndex == 1) {
      return ListView.builder(
        // here we use our demo procuts list
        itemCount: 10,
        itemBuilder: (context, index) => ProductCard2(
          // itemIndex: index,
          // product: products[index],
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InfoPublicidad()),
            );
          },
        ),
      );
    }
    if (selectedIndex == 3) {
      return ListView.builder(
        // here we use our demo procuts list
        itemCount: 10,
        itemBuilder: (context, index) => ProductCard2(
          // itemIndex: index,
          // product: products[index],
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InfoPublicidad()),
            );
          },
        ),
      );
    }
    if (selectedIndex == 4) {
      return ListView.builder(
        // here we use our demo procuts list
        itemCount: 10,
        itemBuilder: (context, index) => ProductEmpresas(
          // itemIndex: index,
          // product: products[index],
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InfoPublicidad()),
            );
          },
        ),
      );
    } else {
      return ListView.builder(
        // here we use our demo procuts list
        itemCount: 1,
        itemBuilder: (context, index) => ProductCategorias(
          // itemIndex: index,
          // product: products[index],
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PubicidadCategoria()),
            );
          },
        ),
      );
    }
  }
}

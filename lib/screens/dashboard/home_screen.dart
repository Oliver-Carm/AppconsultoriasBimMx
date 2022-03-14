// ignore_for_file: deprecated_member_use

import 'package:app_bimmx/screens/configuracion/about_us.dart';
import 'package:app_bimmx/screens/configuracion/informacion_de_productos.dart';
import 'package:app_bimmx/screens/configuracion/profile_page.dart';
import 'package:app_bimmx/screens/consultorias/cards.dart';
import 'package:app_bimmx/screens/dashboard/info_socio.dart';
import 'package:app_bimmx/login.dart';
import 'package:app_bimmx/screens/directorio_empresarial/directorio_empresarial.dart';
import 'package:app_bimmx/screens/notificaciones/notificaciones.dart';
import 'package:app_bimmx/screens/publicidad/publicidad.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class HomeScreen extends StatefulWidget {
   static String id = 'dashboard';
  get imgList => null;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
];
class _HomeScreenState extends State<HomeScreen> {
  
    
 void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xff3f51b5),
            height: 200,
            child: Container(
              child: _buildBottomNavigationMenu(),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10),
                  topRight: const Radius.circular(10),
                ),
              ),
            ),
          );
        });
  }
  Column _buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
      
        ListTile(
          leading: Icon(Icons.accessibility_new),
          title: Text('Configuración de contacto'),
         onTap: () {
             
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
              },
        ),
        ListTile(
          leading: Icon(Icons.work),
          title: Text('Configuración de empresa'),
        onTap: () {
         
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AboutUs()),
            );
              },
        ),
        ListTile(
          leading: Icon(Icons.accessibility_new),
          title: Text('Información de productos o servicios'),
        onTap: () {
         
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InformacionDeProductos()),
            );
              },
        ),
      ],
    );
  }
 List<PieChartSectionData> sectionsChart = [
    PieChartSectionData(
      value: 35,
      title: "35%",
      showTitle: true,
      color: Colors.orange,
      radius: 100,
    ),
    PieChartSectionData(
      value: 45,
      title: "45%",
      showTitle: true,
      color: Colors.blue,
      radius: 100,
    ),
    PieChartSectionData(
      value: 15,
      title: "15%",
      
      showTitle: true,
      color: Colors.red,
      radius: 100,
    ),
    PieChartSectionData(
      value: 5,
      title: "5%",
      showTitle: true,
      color: Colors.purple,
      radius: 100,
    ),
    
  ];



  Container buildDots() {
    return Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: dotsList()),
    );
  }

  Container buildChart(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      child: PieChart(
        PieChartData(
            borderData: FlBorderData(
              show: false,
            ),
            sectionsSpace: 0,
            centerSpaceRadius: 0,
            sections: sectionsChart),
      ),
    );
  }

  List<Widget> dotsList() {
    List<Widget> list = [];

    for (var item in sectionsChart) {
      list.add(Container(
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  color: item.color, borderRadius: BorderRadius.circular(100)),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Text(item.title),
            )
          ],
        ),
        
      ));
    }

    return list;
  }
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
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
                Icons.person,
               color: Colors.white,
                ),
              title: Text('Perfil',style: TextStyle(color: Colors.white, fontSize: 16)),
             
              onTap: () {
              //  Navigator.pushNamed(context, ProfilePage.id);
              },
            ),
         
           
              const SizedBox(height: 10),
             ListTile(
              leading: Icon(
                Icons.library_books,
               color: Colors.white,
                ),
              title: Text('Directorio', style: TextStyle(color: Colors.white,fontSize: 16)),
             
              onTap: () {
                Navigator.pushNamed(context, DirectorioEmpresarial.id);
              },
            ),
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
        elevation: 0,
        centerTitle: false,
        titleSpacing: 0,
         actions: <Widget>[
           
             IconButton(
                      icon: new Icon(Icons.notifications),
                       onPressed: ()=> Navigator.push(
                         context,
                          MaterialPageRoute(
                            builder: (context){
                              return notificaciones();
                            }
                        ),
                      ),
                 ),
            IconButton(
              icon: new Icon(Icons.settings),
               onPressed: () => _onButtonPressed(),
            ),
          ],
        ),
    
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
           _buildYourOwnTest(screenHeight),
            _buildPreventionTips1(screenHeight),
        
          _buildPreventionTips(screenHeight),

           _buildPreventionTip(screenHeight),
      
          
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Dashboard',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              
              ],
            ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
    
            
            const SizedBox(height: 20.0 ),
               CarouselSlider(
              items: imgList
                  .map((item) => Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0)
                          ),
                          child: Image.network(
                            item,
                            fit: BoxFit.cover,
                            width: 1000,
                          ),
                        ),
                      ))
                  .toList(),
                  
              options: CarouselOptions(
                height: 150,
                autoPlay: true,
                aspectRatio: 3.0,
                enlargeCenterPage: true,
              ),
            )
              ], 
            )
          ],
        ),
      ),
    );
  }


  
  SliverToBoxAdapter _buildPreventionTip(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        //color: Color.fromARGB(49, 147, 152, 177),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             Card(
                 elevation: 5,
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                 const SizedBox(height: 4.0 ),
               Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset('assets/img/flutter.jpg'),

    ],
  ),
         
           ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Nombre de la empresa'),
          
        ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                     OutlinedButton(
      onPressed: ()=> Navigator.push(
                         context,
                          MaterialPageRoute(
                            builder: (context){
                              return graficas();
                            }
                        ),
                      ),
      child: const Text('información'),
    ),
                  ],
                ),
                
              ],
            ),
          ),
          const SizedBox(height: 15.0 ),
       
            Card(
              elevation: 5,
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                 const SizedBox(height: 4.0 ),
               Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset('assets/img/flutter.jpg'),

    ],
  ),
         
           ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Nombre de la empresa'),
          
        ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                     OutlinedButton(
      onPressed: ()=> Navigator.push(
                         context,
                          MaterialPageRoute(
                            builder: (context){
                              return graficas();
                            }
                        ),
                      ),
      child: const Text('información'),
    ),
                  ],
                ),
                
              ],
            ),
          ),
           const SizedBox(height: 15.0 ),
             Card(
               elevation: 5,
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                 const SizedBox(height: 4.0 ),
               Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset('assets/img/flutter.jpg'),

    ],
  ),
         
           ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Nombre de la empresa'),
          
        ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                     OutlinedButton(
      onPressed: ()=> Navigator.push(
                         context,
                          MaterialPageRoute(
                            builder: (context){
                              return graficas();
                            }
                        ),
                      ),
      child: const Text('información'),
    ),
                  ],
                ),
                
              ],
            ),
          ),
          
             const SizedBox(height: 15.0 ),
            Card(
                elevation: 2,
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                 const SizedBox(height: 4.0 ),
               Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset('assets/img/flutter.jpg'),

    ],
  ),
         
           ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Nombre de la empresa'),
          
        ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                     OutlinedButton(
      onPressed: ()=> Navigator.push(
                         context,
                          MaterialPageRoute(
                            builder: (context){
                              return graficas();
                            }
                        ),
                      ),
      child: const Text('información'),
    ),
                  ],
                ),
                
              ],
            ),
          ),
          ],
        ), 
      ),
    );
    
  }
  
  SliverToBoxAdapter _buildPreventionTips(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(0),
        //color: Color.fromARGB(49, 147, 152, 177),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
               Card(
                 margin: EdgeInsets.all(20),
                  color: Colors.indigo,
                elevation: 2,
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                 
               Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  ),      
  
           ListTile(     
          title: Text('socios',
          style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,  
              color: Colors.white, 
                //     
              ),
               textAlign: TextAlign.center,  
          ),  
               
        ),
        
              ],
            ),
          ),
              ],
            ),
          ),

    );
    
  }
  SliverToBoxAdapter _buildPreventionTips1(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(

        //color: Color.fromARGB(49, 147, 152, 177),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: buildChart(context)),
            
                buildDots(),
              ],
            ),
          ),

    );
    
  }
  
    SliverToBoxAdapter _buildYourOwnTest(double screenHeight) {
    return SliverToBoxAdapter(
   
        // height: 500,
      
        //color: Color.fromARGB(49, 147, 152, 177),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
               Card(
                 
                   margin: EdgeInsets.all(20),
                   color: Colors.indigo,
                   elevation: 2,
                   clipBehavior: Clip.antiAlias,
                     child: Column(
                       children: [                     
                        ListTile(     
                         title: Text('Estadisticas generales',
                         style: const TextStyle(
                         fontSize: 16.0,
                         fontWeight: FontWeight.w600,  
                         color: Colors.white,     
                      ),
                        textAlign: TextAlign.center,  
          ),  
               
        ),
        
              ],
            ),
          ),
              ],
            ),
      

    );
    
  }
  
  /*SliverToBoxAdapter _buildYourOwnTest(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        
        
        margin: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        padding: const EdgeInsets.all(10.0),
        height: screenHeight * 0.15,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffe0e0e0), Palette.primary],
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          
          children: <Widget>[
              FadeInImage(
             image: AssetImage('assets/imagenes/logoflutter.png'),
             placeholder: AssetImage('assets/gif/jar-loading.gif'),
             fadeInDuration: Duration(seconds:15,),
             height: 300.0,
             fit: BoxFit.cover,
             ),
           
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Ganadas',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget> [
               TextButton(
                 onPressed: (){
                   Navigator.pushNamed(context, OportunidadesTotal.id);
                 },
                 child: Text('Ver',style: const TextStyle(
                    color: Colors.white,
                  ),),
                 ),
                  TextButton(
                 onPressed: ()=>_mostrarAlert(context),
                 child: Text('Consultar', style: const TextStyle(
                    color: Colors.white,
                  ),),
                 ),
              ],
            )
              ],
            )
          ],
        ),
      ),
    );
  }
   void _mostrarAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(20.0)
          ),
          title: Text('Oportunidad de negocio'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Velit aliqua esse tempor anim cillum pariatur anim dolore proident anim esse do laborum laborum. '),
             FadeInImage(
                image: NetworkImage('http://karinlifoods.com/wp-content/uploads/2017/09/imagen-no-disponible.jpg'),
               placeholder: AssetImage('assets/gif/loading78.gif'),
             fadeInDuration: Duration(milliseconds: 200),
             height: 230.0,
             fit: BoxFit.cover,
             ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: ()=> Navigator.of(context).pop(),
            ),
             TextButton(
              child: Text('Ok'),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
          ],

        );
      }
    );
  }*/
  
}




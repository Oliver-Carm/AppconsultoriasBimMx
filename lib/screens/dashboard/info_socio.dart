
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.Dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_svg/svg.dart';


class graficas extends StatefulWidget{
  
  @override
 graficasPageState createState() => graficasPageState();   
    }

  class graficasPageState  extends State<graficas>{
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
    return Scaffold( 
      
      appBar: AppBar(
              title: Align(
          alignment: Alignment.center,
          child: Text(
            'Estadisticas',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor:  Colors.indigo,
        
        ),
        
         body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[   
               _crearBIM(),
               _informacion(),
               const SizedBox(height: 15.0 ),
               _cardTipo2(),
    
          Container(
                width: MediaQuery.of(context).size.width,
                child: buildChart(context)),
            
                buildDots(),
           
           
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
            height: 150,
            width: 700,
          ),
        ],
      ),
    );
  }
  
      Widget _informacion() {
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: <Widget>[
            Divider(
              indent: 0,
              endIndent: 0,
              color: Colors.indigo[50],
            ),
            Stack(
              children: <Widget>[
                Container(
                  //padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  width: 900,
                  height: 55,
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                            'Descripción de la empresa, Descripción de la empresa Descripción de la empresa,Descripción de la empresa, Descripción de la empresa, Descripción de la empresa, Descripción de la empresa, Descripción de la empresa, Descripción de la empresa ,Descripción de la empresa',  
                                                    style: TextStyle(
                            fontSize: 11,
                            //color: Colors.blue[900],
                          ),
                        ),
                      ),
                    ],
                  ),
              
                ),
              ],
            ),
       
          ],
        ),
      ),
    );
  }
      Widget _cardTipo2(){
      
            return Card(
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
          title: Text('Ganancias',
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
  
      );
    }  


}





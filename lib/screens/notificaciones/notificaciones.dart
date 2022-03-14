import 'package:flutter/cupertino.dart';
import 'package:flutter/material.Dart';



class notificaciones extends StatefulWidget{
  
  @override
  notificacionesPageState createState() => notificacionesPageState();
    
    }
    /*class Alert extends StatefulWidget{
  
  @override
  AlertPageState createState() => AlertPageState();
    
    }*/
  class notificacionesPageState  extends State<notificaciones>{

   Widget build(BuildContext context ){
      return Scaffold(
         appBar: AppBar(

        title: Align(
          alignment: Alignment.center,
          child: Text(
            'Notificaciones',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      
         body: ListView( 
           padding: EdgeInsets.symmetric(horizontal: 5),
            children: [
              SizedBox(height: 10, ),
               Text(
                'Recientes',
                 style: const TextStyle(
                  fontSize: 15.0, 
                  fontWeight: FontWeight.w600,
               ),
                 textAlign: TextAlign.center,
            ),
             SizedBox(height: 10, ),
              Container(   
                color: Colors.blueGrey.shade50,
                padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
                   child:
                    ListTile(
                      onTap: () => showModal(),
                        title: Text('Tu membrecia plus esta proxima a expirar', 
                         style: const TextStyle(
                         fontSize: 14.0, 
                  
                  ),),
                       subtitle: Text('lunes a las 10:15 a. m.'
                       ),             
                       leading: CircleAvatar(
                       backgroundColor: Colors.indigo,
                       child: Icon(Icons.notifications_on_rounded, color: Colors.white,size: 25,
                    ),    
                   ),    
                     trailing: Icon(Icons.more_horiz),
                ),
              ),

            Container(   
              color: Colors.blueGrey.shade50,
              padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
              child: ListTile(
                onTap: () => showModal(),
                title: Text('Tu membrecia plus esta proxima a expirar',
                   style: const TextStyle(
                         fontSize: 14.0, 
                  
                  ), ),
                subtitle: Text('lunes a las 8:15 a. m.'),              
               leading: CircleAvatar(
                       backgroundColor: Colors.indigo,
                       child: Icon(Icons.notifications_on_rounded, color: Colors.white,size: 25,
                    ),    
                   ),  
                   trailing: Icon(Icons.more_horiz),
                ),
            ),
                SizedBox(height: 10, ),
                 Text(
                 'Anteriores',
                  style: const TextStyle(
                  fontSize: 15.0, 
                  fontWeight: FontWeight.w600,
              ),
               textAlign: TextAlign.center,
            ),
                Container(   
                // color: Colors.blueGrey.shade50,
                padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
                child: ListTile(
                  onTap: () => showModal(),
                  title: Text('Hola Luis, gracias por adquirir el nuevo paquetes....',
                     style: const TextStyle(
                         fontSize: 14.0, 
                  
                  ), ),
                  subtitle: Text('Domingo a las 10:05 a. m.'),              
                  leading: CircleAvatar (
                 backgroundImage: AssetImage("assets/img/adm.jpg"),   
                   ),
                   
                   trailing: Icon(Icons.more_horiz),
                ),
              ),
              Container(   
                //color: Colors.blueGrey.shade50,
                padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
                child: ListTile(
                  onTap: () => showModal(),
                     title: Text('Hola Luis, gracias por adquirir el nuevo paquetes....',
                     style: const TextStyle(
                         fontSize: 14.0, 
                  
                  ), ),
                  subtitle: Text('sabado a las 2:15 p. m.'),              
                  leading: CircleAvatar (
                 backgroundImage: AssetImage("assets/img/adm.jpg"),   
                   ),
                   
                   trailing: Icon(Icons.more_horiz),
                ),
              ),
              Container(   
                //color: Colors.blueGrey.shade50,
                padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
                child: ListTile(
                  onTap: () => showModal(),
                  title: Text('Recuerda que con tu nuevo paquetes ahora cuentas con los siguientes beneficios',
                     style: const TextStyle(
                         fontSize: 14.0, 
                  
                  ), ),
                  subtitle: Text('viernes a las 10:15 a. m.'),              
                   leading: CircleAvatar(
                       backgroundColor: Colors.indigo,
                       child: Icon(Icons.assignment, color: Colors.white,size: 25,
                    ),    
                   ),
                   
                   trailing: Icon(Icons.more_horiz),
                ),
              ),
                 Container(   
                //color: Colors.blueGrey.shade50,
                padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
                child: ListTile(
                  onTap: () => showModal(),
                  title: Text('Recuerda que con tu nuevo paquetes ahora cuentas con los siguientes beneficios',
                     style: const TextStyle(
                         fontSize: 14.0, 
                  
                  ), ),
                  subtitle: Text('viernes a las 10:15 a. m.'),              
                   leading: CircleAvatar(
                       backgroundColor: Colors.indigo,
                       child: Icon(Icons.assignment, color: Colors.white,size: 25,
                    ),    
                   ),
                   
                   trailing: Icon(Icons.more_horiz),
                ),
              ),
              Container(   
                //color: Colors.blueGrey.shade50,
                padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
                child: ListTile(
                  onTap: () => showModal(),
                   title: Text('Recuerda que con tu nuevo paquetes ahora cuentas con los siguientes beneficios',
                     style: const TextStyle(
                         fontSize: 14.0, 
                  
                  ), ),
                  subtitle: Text('Jueves a las 10:25 p. m.'),              
                 leading: CircleAvatar(
                       backgroundColor: Colors.indigo,
                       child: Icon(Icons.assignment, color: Colors.white,size: 25,
                    ),    
                   ),
                   
                   trailing: Icon(Icons.more_horiz),
                ),
              ),
              Container(   
                //color: Colors.blueGrey.shade50,
                padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
                child: ListTile(
                  onTap: () => showModal(),
                  title: Text('Tu membrecia plus esta proxima a expirar',
                     style: const TextStyle(
                         fontSize: 14.0, 
                  
                  ), ),
                  subtitle: Text('Miercoles a las 8:15 a. m.'),              
                leading: CircleAvatar(
                       backgroundColor: Colors.indigo,
                       child: Icon(Icons.notifications_on_rounded, color: Colors.white,size: 25,
                    ),    
                   ),  
                   
                   trailing: Icon(Icons.more_horiz),
                ),
              ),
              Container(   
                //color: Colors.blueGrey.shade50,
                padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
                child: ListTile(
                  onTap: () => showModal(),
                  title: Text('Tu membrecia plus esta proxima a expirar',
                     style: const TextStyle(
                         fontSize: 14.0, 
                  
                  ), ),
                  subtitle: Text('Miercoles a las 8:15 p. m.'),              
                  leading: CircleAvatar(
                       backgroundColor: Colors.indigo,
                       child: Icon(Icons.notifications_on_rounded, color: Colors.white,size: 25,
                    ),    
                   ),  
                   
                   trailing: Icon(Icons.more_horiz),
                ),
              ),
              Container(   
                //color: Colors.blueGrey.shade50,
                padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
                child: ListTile(
                  onTap: () => showModal(),
                  title: Text('Tu membrecia plus esta proxima a expirar',
                     style: const TextStyle(
                         fontSize: 14.0, 
                  
                  ), ),
                  subtitle: Text('Miercoles a las 10:15 a. m.'),              
                  leading: CircleAvatar(
                       backgroundColor: Colors.indigo,
                       child: Icon(Icons.notifications_on_rounded, color: Colors.white,size: 25,
                    ),    
                   ),  
                   
                   trailing: Icon(Icons.more_horiz),
                ),
              ),
              Container(   
                //color: Colors.blueGrey.shade50,
                padding: EdgeInsets.symmetric(vertical:10, horizontal:10),
                child: ListTile(
                  onTap: () => showModal(),
                  title: Text('Tu membrecia plus esta proxima a expirar',
                     style: const TextStyle(
                         fontSize: 14.0, 
                  
                  ), ),
                  subtitle: Text('Martes a las 1:15 a. m.'),              
                  leading: CircleAvatar(
                       backgroundColor: Colors.indigo,
                       child: Icon(Icons.notifications_on_rounded, color: Colors.white,size: 25,
                    ),    
                   ),  
                   
                   trailing: Icon(Icons.more_horiz),
                ),
              ),
         
            ],
          ),
      
       );   
    }
 
   void showModal(){
    showModalBottomSheet(
      context: context,
      builder: (context){
        return Container(
          
          height: MediaQuery.of(context).size.height/2.5,
         
          color: Color(0xff737373),
          child: Container(
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
            ),
            child: Column( 
                   
               children: <Widget>[ 
                 SizedBox(height: 10,),
                  Center(
                    child: Container(
                      height: 4,
                      width: 40,
                      color: Colors.grey.shade500,      
                   ),     
                  ), 
                  SizedBox(height: 10,),
                   CircleAvatar (
                 backgroundImage: AssetImage("assets/img/adm.jpg"),   
                   ),
                SizedBox(height: 10,),
                
                Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,          
                    children:<Widget> [ 
                                 Padding( padding: EdgeInsets.only(left:20.0, right: 20.0),
                    
                     child: Text('Tu membrecia plus esta proxima a experirar, recuerda adquirir un nuevo paquete para poder disfrutar de nuestros servicios.Tu membrecia plus esta proxima a experirar, recuerda adquirir un nuevo paquete para poder disfrutar de nuestros servicios.Tu membrecia plus esta proxima a experirar, recuerda adquirir un nuevo paquete para poder disfrutar de nuestros servicios.',
                        style: const TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ), 
                    ),  
                                 ),   
                  ],             
                ),  
                  //   Divider(height: 10.0, color: Colors.grey[500],),
                  SizedBox(height: 30,),
                 ListTile(         
                   leading: CircleAvatar(
                       backgroundColor: Colors.indigo,
                       child: Icon(Icons.delete, color: Colors.white,size: 25,
                    ),    
                   ),
                   
               title: Text('Eliminar notificación',
               style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                    
                  ),
                 onTap: () => alert(),
                )    
              ],
            ),     
          ),
        );
      }
    );
  }
   void alert(){
     
    showCupertinoDialog<void>(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                title: const Text('Alerta'),
                content: const Text('¿Estas seguro de elimimar la notificación?'),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    child: const Text('No'),
                    onPressed: ()=> Navigator.of(context).pop(),
                  ),
                  CupertinoDialogAction(
                    child: const Text('Si'),
                    isDestructiveAction: true,
                   onPressed: ()=> Navigator.of(context).pop(),
                  )
                ],
              ),
            );
  }
}



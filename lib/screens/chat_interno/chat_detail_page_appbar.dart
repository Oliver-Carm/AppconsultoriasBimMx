
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class ChatDetailPageAppBar extends StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor:Colors.blueGrey.shade300,
      flexibleSpace: SafeArea(
        child: Container(
          padding: EdgeInsets.only(right:16),
          child: Row(
           children: <Widget> [
            IconButton(
              onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back, color: Colors.white,),
            ),
            SizedBox(width: 7,),
            CircleAvatar(
              backgroundImage: AssetImage("assets/img/user.png"),
              maxRadius: 20, 
            ),
            SizedBox(width: 12,),
            Expanded(
              child: Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Luis Angel",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                  SizedBox(height: 6,),
                  Text("Online", style: TextStyle(color: Colors.white, fontSize: 12,),)
                ],
              ),
            ),
            Padding(
              padding:EdgeInsets.only(right:10),
            child: PopupMenuButton (
              itemBuilder: (context)=>[
                PopupMenuItem(
                  child:
                  
                 Row(
                   children: [
                     Icon(Icons.contact_page,
                     color: Colors.blueGrey.shade200,
                     ),
                      Padding (
                        padding: EdgeInsets.only(left:10.0),
                        child: Text('ver contacto')
                      ),
                   ],
                   ),
                   ),
                    PopupMenuItem(
                  child:
                 Row(
                   children: [
                     Icon(Icons.file_copy_rounded,
                     color: Colors.blueGrey.shade200,
                     ),
                      Padding (
                        padding: EdgeInsets.only(left:10.0),
                        child: Text('Archivos')
                      ),
                   ],
                   ),
                   ),
                    PopupMenuItem(
                  child:
                 Row(
                   children: [
                     Icon(Icons.report,
                    color: Colors.blueGrey.shade200,
                     ),
                      Padding (
                        padding: EdgeInsets.only(left:10.0),
                        child: Text('Reportar')
                      ),
                   ],
                   ),
                   )
              ],
              child: Icon(
               Icons.more_vert,
               color: Colors.white,
                size: 25,
            ),
            ),
            ),
          ], 
          
          ),
       
        ),
        
      ),
      
    );
     }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}


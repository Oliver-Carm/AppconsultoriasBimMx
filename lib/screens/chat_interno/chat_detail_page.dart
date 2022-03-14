
import 'package:app_bimmx/screens/chat_interno/chat_bubble..dart';
import 'package:app_bimmx/screens/chat_interno/chat_detail_page_appbar.dart';
import 'package:app_bimmx/screens/chat_interno/chat_message.dart';
import 'package:app_bimmx/screens/chat_interno/menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



enum MessageType{
  Sender, 
  Receiver,
}


class ChatDetailPage extends StatefulWidget {
    static String id = 'chat';
  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List<ChatMessage> chatMessage=[
    ChatMessage(message: "Hola Juan",type: MessageType.Receiver),
     ChatMessage(message: "Estoy interesado en ser socios en nuevos proyectos",type: MessageType.Receiver),
      ChatMessage(message: "Hola Luis",type: MessageType.Sender),
       ChatMessage(message: "Genial, agendamos una reuniÃ³n? ",type: MessageType.Sender),
        ChatMessage(message: "si, perfecto",type: MessageType.Receiver),
        ChatMessage(message: "A las 12:00pm te parece bien?",type: MessageType.Sender),
       ChatMessage(message: "si, esta bien",type: MessageType.Receiver),
        

  ];

  List<SendMenuItems> menuItems = [
    SendMenuItems(text: "Galeria", icons: Icons.image, color: Colors.amber, size: 20),
    SendMenuItems(text: "Documento", icons: Icons.insert_drive_file, color: Colors.blue, size: 20,) , 
    SendMenuItems(text: "Ubicacion", icons: Icons.location_on, color: Colors.green, size: 20),
  ];

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
                    color: Colors.grey.shade200,
                    child: Icon(Icons.add,color:Colors.grey.shade200,size: 21,),
                  ),
                  
                ),
                SizedBox(height: 10,),
                  ListView.builder(
                    itemCount: menuItems.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                      return Container(
                        padding: EdgeInsets.only(top:10, bottom: 10),
                        child: ListTile(
                          leading:Container(
                            decoration: BoxDecoration(
                              borderRadius:BorderRadius.circular(50),
                              color: menuItems[index].color.shade100,
                               ),
                               height: 30,
                               width: 30,
                               child: Icon(menuItems[index].icons, size: 20, color: menuItems[index].color.shade400,),
                          ),
                          title: Text(menuItems[index].text),
                        ),
                      );
                    },
                  ),
               ],
             ),
      ),
         );
    }
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatDetailPageAppBar(), 
       body:  Stack(
        children: <Widget> [ 
        ListView.builder(
          itemCount: chatMessage.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.all(8),
          itemBuilder: (context, index){
            return ChatBubble(
            chatMessage: chatMessage[index],
            );
          },
        ),

         Align(
            alignment: Alignment.bottomLeft,
            child:Container(
              padding: EdgeInsets.only(left:5, bottom: 10),
              height: 70,
              width: double.infinity,
             color: Colors.blueGrey.shade300,
              child: Row(
                children: [ 
                      Expanded( 
                        child: Container(
                             padding: EdgeInsets.symmetric(
                              
                             ),
                           decoration: BoxDecoration(
                           color: Colors.grey.shade50,
                          borderRadius:BorderRadius.circular(30),
                           ),
                           child: Row(
                             children: <Widget>[
                              GestureDetector(
                              onTap: (){  
                              showModal();
                             },
                                child: Container(
                                  height: 40,
                                   width: 40, 
                                      child: Icon(Icons.add_circle_sharp, color: Colors.black54,size: 25,),
                                    ),          
                                  ),
                                IconButton( 
                                  
                                icon: Icon(Icons.sentiment_satisfied_alt_outlined),
                                 iconSize: 25,
                                 color: Colors.black54,
                                 onPressed: () {},
                                 ),
                                 
                                 Expanded
                                 (child:
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText:"Type message...",
                                      border:InputBorder.none
                                    ),
                                  ),
                                 ),
                                  IconButton( 
                                icon: Icon(Icons.camera_alt),
                                 iconSize: 25,
                                 
                                  color: Colors.black54,
                                 onPressed: () {},
                                 ),
                               ],
                             ),
                          ),
                        ),
                          IconButton(
                       icon: Icon(Icons.mic),
                       iconSize: 35,
                      color: Colors.white ,
                      onPressed: () {},
                      ),
                      ],
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}


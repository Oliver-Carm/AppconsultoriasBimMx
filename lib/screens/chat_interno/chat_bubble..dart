import 'package:app_bimmx/screens/chat_interno/chat_detail_page.dart';
import 'package:app_bimmx/screens/chat_interno/chat_message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatefulWidget{
  ChatMessage chatMessage;
  ChatBubble({required this.chatMessage});

@override
  _ChatBubbleState createState()=> _ChatBubbleState();
  }
  
  class _ChatBubbleState extends State<ChatBubble> {
    @override
    Widget build(BuildContext context){  
      return Container(
        margin: EdgeInsets.symmetric(vertical:4),
        padding: EdgeInsets.all(8),
         child: Align(
          alignment:(widget.chatMessage.type==MessageType.Receiver?Alignment.topLeft:Alignment.topRight), 
          child: Container(   
            decoration: BoxDecoration( 
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(1),
                ),       
              ],
              color: (widget.chatMessage.type == MessageType.Receiver?Colors.blue.shade50:Colors.grey.shade200),
             borderRadius: BorderRadius.circular(25),
            ),
            padding: EdgeInsets.all(11),
            child:Text(widget.chatMessage.message),    
          ), 
        ),
      );    
    }
}
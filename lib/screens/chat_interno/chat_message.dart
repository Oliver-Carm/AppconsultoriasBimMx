import 'package:app_bimmx/screens/chat_interno/chat_detail_page.dart';
import 'package:flutter/services.dart';





class ChatMessage{
  String message;
  MessageType type;
  ChatMessage ({required this.message, required this.type});
}
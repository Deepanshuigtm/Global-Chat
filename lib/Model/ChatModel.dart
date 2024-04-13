
import 'package:flutter/cupertino.dart';

class ChatModel {
  String name;
  Icon icon;
  bool isGroup;
  String time;
  String currentMessage;

  ChatModel({
    required this.name,
    required this.icon,
    required this.isGroup,
    required this.time,
    required this.currentMessage,
  });
}

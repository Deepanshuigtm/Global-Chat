
import 'package:chatapp/CustomUi/CustomCard.dart';
import 'package:chatapp/Model/ChatModel.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget{
  ChatPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();

}
class _ChatPageState extends State<ChatPage>{
  List<ChatModel> chat = [
    ChatModel(name: "Deep", icon: Icon(Icons.person), isGroup: false, time: "12:04", currentMessage: "Hello Buddy"),
    ChatModel(name: "Baken", icon: Icon(Icons.person), isGroup: false, time: "07:00", currentMessage: "Okay"),
    ChatModel(name: "Hunter", icon: Icon(Icons.person), isGroup: false, time: "10:26", currentMessage: "Welcome"),
    ChatModel(name: "Supra", icon: Icon(Icons.person), isGroup: false, time: "11:00", currentMessage: "Lets Race"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: chat.length,
          itemBuilder: (context, index) => CustomCard(chats: chat[index],)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.chat),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
      ),
    );
  }

}
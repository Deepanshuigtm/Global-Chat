
import 'package:chatapp/IndividualPage.dart';
import 'package:chatapp/Model/ChatModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget{
  CustomCard({super.key, required this.chats});
  final ChatModel chats;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => IndividualPage(chats: chats),
          ),
        );
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
            ),
            title: Text(
                chats.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all,size: 20,color: Colors.white60,),
                SizedBox(width: 7,),
                Text(
                  chats.currentMessage,style: TextStyle(
                    fontSize: 13,
                  color: Colors.white60
                ),
                ),
              ],
            ),
            trailing: Text(chats.time, style: TextStyle(
              color: Colors.white60
            ),),

          ),
          Padding(
            padding: const EdgeInsets.only(right: 19, left: 88),
            child: Divider(thickness: 0.4,),
          )
        ],
      ),
    );
  }

}
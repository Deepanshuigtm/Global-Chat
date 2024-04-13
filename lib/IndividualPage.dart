

import 'package:flutter/material.dart';

import 'Model/ChatModel.dart';

class IndividualPage extends StatefulWidget{
  IndividualPage({super.key, required this.chats});
  final ChatModel chats;

  @override
  _IndividualPageState createState() => _IndividualPageState();

}
class _IndividualPageState extends State<IndividualPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white12,
        leadingWidth: 70,

        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 10,),
              Icon(Icons.arrow_back, color: Colors.white, size: 24,),
              SizedBox(width: 10,),
              CircleAvatar(
                radius:20,
              ),
              SizedBox(width: 10,),
              Container(
                margin: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.chats.name,style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                    ),),
                    Text("Last seen today at 18:06", style: TextStyle(
                        fontSize: 13,
                      color: Colors.white
                    ),)
                  ],
                ),
              )
            ],
          ),
        ),
        // title: Container(
        //   margin: EdgeInsets.all(5),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text(widget.chats.name,style: TextStyle(
        //           color: Colors.white,
        //         fontSize: 18
        //       ),),
        //       Text("Last seen today at 18:06", style: TextStyle(
        //         fontSize: 13
        //       ),)
        //     ],
        //   ),
        // )

      ),
    );
  }
}

import 'package:chatapp/ChatPage.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("G Chat", style: TextStyle(
          color: Colors.white
        ),),
        actions: [
          IconButton(onPressed: (){
            print("pressed");
          }, icon: Icon(Icons.search,color: Colors.white,)),
          PopupMenuButton<String>(
            color: Colors.black87,
            onSelected: (value){
              print(value);
            },
              icon: Icon(Icons.more_vert,color: Colors.white),
              itemBuilder: (BuildContext context){
            return [
              PopupMenuItem(child: Text("New Group", style: TextStyle(color: Colors.white),), value: "New Group",),
              PopupMenuItem(child: Text("New Broadcast", style: TextStyle(color: Colors.white),), value: "New Broadcast",),
              PopupMenuItem(child: Text("Whatsapp Web", style: TextStyle(color: Colors.white),), value: "Whatsapp Web",),
              PopupMenuItem(child: Text("Started Message", style: TextStyle(color: Colors.white),), value: "Started Message",),
              PopupMenuItem(child: Text("Settings", style: TextStyle(color: Colors.white),), value: "Settings",),
            ];
          })
        ],
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          ChatPage(),
        Text("status"),
          Text("updates"),
        Text("calls"),
      ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black87,
        child: TabBar(
          controller: _controller,
          labelColor: Colors.white,
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          tabs: [
            Tab(
              icon: Column(
                children: [
                  Icon(Icons.chat),
                  SizedBox(height: 0.9,),
                  Text("Chats", style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),)
                ],
              )
            ),
            Tab(
                icon: Column(
                  children: [
                    Icon(Icons.person),
                    SizedBox(height: 0.9,),
                    Text("Status", style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                )
            ),
            Tab(
                icon: Column(
                  children: [
                    Icon(Icons.update),
                    SizedBox(height: 0.9,),
                    Text("Updates", style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                )
            ),
            Tab(
                icon: Column(
                  children: [
                    Icon(Icons.call),
                    SizedBox(height: 0.9,),
                    Text("Calls", style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),)
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
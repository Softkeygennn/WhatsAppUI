
import 'package:flutter/material.dart';
import 'package:whatsapp1/CallModel.dart';
import 'package:whatsapp1/ChatModel.dart';
import 'package:whatsapp1/GroupModel.dart';
class WhatsAppUI extends StatelessWidget {
  final mystyle = const TextStyle(fontSize: 40);
   WhatsAppUI({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Whatsapp"),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Group"),
              ),
              Tab(
                child: Text("Calls"),
              ),

            ],
          ),
          actions: [
            const Padding(padding: EdgeInsets.all(8.0),
                child: const Icon(Icons.wifi),
            ),
            const Padding(padding: EdgeInsets.all(8.0),
              child: const Icon(Icons.airplanemode_off),
            ),
             const Icon(Icons.search),
            const SizedBox(width: 10,),
            PopupMenuButton(
              icon: const Icon(Icons.more_horiz_outlined),
                itemBuilder: (context)=> [
                  const PopupMenuItem(
                    value: 1,
                    child: Text("New Group"),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text("Settings"),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text("Log Out"),
                  ),
                ]
            ),
            const SizedBox(width: 10,),
          ],
        ),
        body: Container(
          child: TabBarView(
              children: [
                Center(child: Text("Camera", style: mystyle)),
               ListView.separated(
                 itemCount: chatList.length,
                   itemBuilder: (context, index){
                 return  ListTile(
                   leading: CircleAvatar(backgroundImage: NetworkImage(chatList[index].profilePic),),
                   title: Text(chatList[index].title),
                   subtitle: Text(chatList[index].message),
                   trailing: Text(chatList[index].time),
                 );
               },
                   separatorBuilder: (context, index){
                 return const Divider();
               },
                   ),

                ListView.separated(
                  itemCount: groupList.length,
                  itemBuilder: (context, index){
                    return  ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage(groupList[index].profilePic),),
                      title: Text(groupList[index].title),
                      subtitle: Text(groupList[index].message),
                      trailing: Text(groupList[index].time),
                    );
                  },
                  separatorBuilder: (context, index){
                    return const Divider();
                  },
                ),
                ListView.separated(
                  itemCount: callList.length,
                  itemBuilder: (context, index){
                    return  ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage(callList[index].profilePic),),
                      title: Text(callList[index].title,),
                      subtitle: Text(callList[index].time),
                      trailing: const Icon(Icons.call),
                    );
                  },
                  separatorBuilder: (context, index){
                    return const Divider();
                  },
                ),
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF128c7e),
          onPressed: () {  },
          child: const Icon(
            Icons.add,
          ),
        ),
      ),
    );
  }
}

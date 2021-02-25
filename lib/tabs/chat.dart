import 'package:Whatsapp_UI/model/chat_model.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: chatsData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 1,
          ),
          new ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(chatsData[i].pic),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  chatsData[i].name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new Text(
                  chatsData[i].time,
                  style: TextStyle(fontSize: 11.0, color: Colors.grey),
                )
              ],
            ),
            subtitle: Text(chatsData[i].msg,
                style: TextStyle(fontSize: 14.0, color: Colors.grey)),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:Whatsapp_UI/model/call_model.dart';

class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: callsData.length,
      itemBuilder: (context, i) => new Column(
        children: <Widget>[
          new Divider(
            height: 1,
          ),
          new ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(callsData[i].pic),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(
                  callsData[i].name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new Icon(
                  i % 2 == 0 ? Icons.call : Icons.videocam,
                  color: Color(0xFF075e54),
                ),
              ],
            ),
            subtitle: Text(
              callsData[i].time,
              style: TextStyle(color: Colors.grey, fontSize: 12.0),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './announcement_board.dart';

class AnnouncementList extends StatefulWidget {
  @override
  _AnnouncementListState createState() => _AnnouncementListState();
}

class _AnnouncementListState extends State<AnnouncementList> {
  final List<Announcement> announcement = [
    Announcement(
        announcementTitle: "New announcement on xxx",
        announcementInfo: "xxxxxxxxxxxxxxxxxxxx"),
    Announcement(
        announcementTitle: "New announcement on xxx",
        announcementInfo: "asdasfa"),
    Announcement(
        announcementTitle: "New announcement on xxx",
        announcementInfo: "thdfgfgdfgd"),
    Announcement(
        announcementTitle: "New announcement on xxx",
        announcementInfo: "22efve3e2r"),
    Announcement(
        announcementTitle: "New announcement on xxx",
        announcementInfo: "bbsegawe4t2"),
    Announcement(
        announcementTitle: "New announcement on xxx",
        announcementInfo: "09joijnp08i"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: announcement.map((tx) {
        return Card(
          elevation: 5, //rise up the card, make shadow
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    //title
                    width: 230,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: Text(tx.announcementTitle,
                        overflow: TextOverflow.ellipsis,
                        style:
                            new TextStyle(fontSize: 18.0, color: Colors.grey)),
                    height: 80,
                  ),
                  Container(
                    //Infomation
                      width: 230,
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Text(
                        tx.announcementInfo,
                        style: new TextStyle(fontSize: 18.0),
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  
                  Row(
                    children: <Widget>[
                      Container(
                        //check button
                        margin: EdgeInsets.only(right: 10.0),
                        child: IconButton(icon: Icon(Icons.check_circle), onPressed: null, iconSize: 80,color: Colors.green[300],)),
                    ],
                  )
                ],
              )
              
            ],
          ),
        );
      }).toList(),
    );
  }
}
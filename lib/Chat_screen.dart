import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          DirectMessage(
            sender: 'Mark Zuckerbug',
            message: 'Stressed Out!!',
            time: 'Now',
            messageIcon: Icons.looks_one_sharp,
            url:
                'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTQyMDA0NDgwMzUzNzcyNjA2/mark-zuckerberg_gettyimages-512304736jpg.jpg',
          ),
          DottedLine(
            lineLength: 250,
            lineThickness: 0.2,
            dashGapColor: Colors.black,
          ),
          DirectMessage(
            sender: 'Tim Cook',
            message: 'Nice work',
            time: '11/09/20',
            url:
                'https://content.fortune.com/wp-content/uploads/2015/03/9826_01_0153.jpg',
          ),
          DottedLine(
            lineLength: 250,
            lineThickness: 0.2,
            dashGapColor: Colors.black,
          ),
          DirectMessage(
            sender: 'Sundar Pichai',
            message: 'Doing good? ',
            time: '05/09/19',
            url:
                'https://api.time.com/wp-content/uploads/2020/09/time-100-Sundar-Pichai.jpg',
          ),
          DottedLine(
            lineLength: 250,
            lineThickness: 0.2,
            dashGapColor: Colors.black,
          ),
          DirectMessage(
            sender: 'Jeff Bezos',
            message: 'Yea',
            time: '10/11/20',
            url:
                'https://specials-images.forbesimg.com/imageserve/5f469ea85cc82fc8d6083f05/960x0.jpg?fit=scale',
          ),
          DottedLine(
            lineLength: 250,
            lineThickness: 0.2,
            dashGapColor: Colors.black,
          ),
          DirectMessage(
            sender: 'Elon Musk',
            message: 'Good job?',
            time: 'Yesterday',
            url:
                'https://upload.wikimedia.org/wikipedia/commons/e/ed/Elon_Musk_Royal_Society.jpg',
          ),
          DottedLine(
            lineLength: 250,
            lineThickness: 0.2,
            dashGapColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

class DirectMessage extends StatelessWidget {
  final String sender;
  final String message;
  final String url;
  final String time;
  final IconData messageIcon;
  DirectMessage(
      {this.sender, this.message, this.url, this.time, this.messageIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                maxRadius: 30.0,
                backgroundImage: NetworkImage(url),
              ),
              SizedBox(
                width: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      sender,
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      message,
                      style: TextStyle(color: Colors.black38),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  time,
                  style: TextStyle(color: Colors.black38),
                ),
              ),
              Icon(
                messageIcon,
                color: Colors.green,
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CallLogs(
            sender: 'Elon Musk',
            url:
                'https://upload.wikimedia.org/wikipedia/commons/e/ed/Elon_Musk_Royal_Society.jpg',
            time: 'Today, 10.20PM',
            callIcon: Icons.call,
            inorout: Icons.call_made_sharp,
            iconColor: Colors.green,
          ),
          DottedLine(
            lineLength: 250,
            lineThickness: 0.2,
            dashGapColor: Colors.black,
          ),
          CallLogs(
            sender: 'Elon Musk',
            url:
                'https://upload.wikimedia.org/wikipedia/commons/e/ed/Elon_Musk_Royal_Society.jpg',
            time: 'Today, 10.05PM',
            callIcon: Icons.call,
            inorout: Icons.call_made_sharp,
            iconColor: Colors.green,
          ),
          DottedLine(
            lineLength: 250,
            lineThickness: 0.2,
            dashGapColor: Colors.black,
          ),
          CallLogs(
            sender: 'JeffBezos',
            url:
                'https://specials-images.forbesimg.com/imageserve/5f469ea85cc82fc8d6083f05/960x0.jpg?fit=scale',
            time: 'Yesterday, 11.34AM',
            callIcon: Icons.call,
            inorout: Icons.call_received,
            iconColor: Colors.red,
          ),
          DottedLine(
            lineLength: 250,
            lineThickness: 0.3,
            dashGapColor: Colors.black,
          ),
          CallLogs(
            sender: 'Mark ZuckerBurg',
            url:
                'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTQyMDA0NDgwMzUzNzcyNjA2/mark-zuckerberg_gettyimages-512304736jpg.jpg',
            time: 'Yesterday, 06.35AM',
            callIcon: Icons.call,
            inorout: Icons.call_received,
            iconColor: Colors.green,
          ),
          DottedLine(
            lineLength: 250,
            lineThickness: 0.05,
            dashGapColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

class CallLogs extends StatelessWidget {
  final String sender;
  final IconData inorout;
  final String url;
  final String time;
  final IconData callIcon;
  final Color iconColor;
  CallLogs(
      {this.sender,
      this.iconColor,
      this.url,
      this.time,
      this.callIcon,
      this.inorout});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      //Tile for a specific user
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          inorout,
                          size: 20.0,
                          color: iconColor,
                        ),
                        Text(
                          time,
                          style: TextStyle(color: Colors.black38),
                        )
                      ],
                    )
                    // Text(
                    //   message,
                    //   style: TextStyle(color: Colors.black38),
                    // )
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(right: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //to maintain the icon in center
                Container(
                  child: Divider(
                    height: 18.0,
                  ),
                ),
                Icon(
                  callIcon,
                  color: Colors.green,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Statuslist(
            icon: Icons.account_circle,
            name: 'My status',
            time: 'Tap to add status update',
            statusAdd: Icons.add,
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'Recent updates',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          DottedLine(
            lineLength: 250,
            lineThickness: 0.2,
            dashGapColor: Colors.black,
          ),
          Statuslist(
            icon: Icons.account_circle,
            name: 'Tim Cook',
            time: '20 minutes ago',
          ),
          DottedLine(
            lineLength: 250,
            lineThickness: 0.2,
            dashGapColor: Colors.black,
          ),
          Statuslist(
            icon: Icons.account_circle,
            name: 'Jeff Bezoz',
            time: 'Today, 6.40 AM',
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              'View updates',
              style: TextStyle(color: Colors.black87),
            ),
          ),
          DottedLine(
            lineLength: 250,
            lineThickness: 0.2,
            dashGapColor: Colors.black,
          ),
          Statuslist(
            icon: Icons.account_circle,
            name: 'Jeff Bezoz',
            time: 'Today, 6.40 AM',
          ),
        ],
      ),
    );
  }
}

class Statuslist extends StatelessWidget {
  final IconData icon;
  final String name;
  final String time;
  final IconData statusAdd;
  Statuslist({this.icon, this.name, this.time, this.statusAdd});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Colors.white,
      child: Row(
        children: [
          Stack(
            children: [
              Icon(
                icon,
                size: 40.0,
              ),
              Positioned(
                bottom: 0.6,
                right: 1.0,
                child: Container(
                  height: 10.0,
                  width: 10.0,
                  child: Icon(statusAdd),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                time,
                style: TextStyle(color: Colors.black38),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

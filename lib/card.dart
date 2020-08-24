import 'package:flutter/material.dart';

class MyCard {
  Widget create(Position position) {
    List<Widget> widgets = [];
    CrossAxisAlignment alignment;
    switch (position) {
      case Position.left:
        alignment = CrossAxisAlignment.start;
        widgets = [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/img/folder-3.png'),
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/img/more-options-v-3.png'),
              ),
            ],
          ),
          Text(
            'Prototypes',
            style: TextStyle(
              color: Color(0xFFAC4040),
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 0.5),
          Text(
            'November 22.2020',
            style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.normal,
              color: Color(0xFFAC4040),
            ),
          )
        ];
        break;
      case Position.rigth:
        alignment = CrossAxisAlignment.end;
        widgets = [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset('assets/img/more-options-v-1.png'),
              ),
              Image.asset('assets/img/folder-1.png'),
            ],
          ),
          Text(
            'Mobile Apps',
            style: TextStyle(
              color: Color(0xFF415EB6),
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 0.5),
          Text(
            'December 20.2020',
            style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.normal,
              color: Color(0xFF415EB6),
            ),
          ),
        ];
        break;
    }

    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFEEEEE),
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
      child: Column(
        crossAxisAlignment: alignment,
        children: widgets,
      ),
    );
  }
}

enum Position { left, rigth }

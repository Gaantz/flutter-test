import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: createAppBar('My Profile'),
        body: Padding(
          padding: EdgeInsets.only(left: 12, right: 12),
          child: Column(children: [
            createCardProfile(),
            Expanded(
                child: ListView(
              children: [
                createSubtitle(
                    [
                      imageOf('add'),
                      imageOf('settings'),
                      imageOf('vector-right')
                    ],
                    createText(
                        title: 'My Folder',
                        color: Color(0xFF22215B),
                        fontWeight: FontWeight.w600,
                        fontSize: 15)),
                createCard(color: Color(0xFFEEF7FE), row: createCardContent(Position.left,
                  iconButtonOf(imageOf('more-options-v-1')),
                  Image.asset(imageOf('folder-1')),
                  createText(title: 'Mobile Apps', fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFF415EB6)),
                  createText(title:'December 20.2020', fontSize: 10, color: Color(0xFF415EB6)))),
                createCard(color: Color(0xFFFFFBEC), row: createCardContent(Position.left,
                  iconButtonOf(imageOf('more-options-v-2')),
                  Image.asset(imageOf('folder-2')),
                  createText(title: 'SVG Icons', fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFFFFB110)),
                  createText(title:'December 14.2020', fontSize: 10, color: Color(0xFFFFB110)))),
                createSubtitle(
                    [
                      imageOf('sort'),
                    ],
                    createText(
                        title: 'Recent Uploads',
                        color: Color(0xFF22215B),
                        fontWeight: FontWeight.w600,
                        fontSize: 15)),
                createCard(color: Colors.transparent),
                createSubtitle(
                    [
                      imageOf('add'),
                      imageOf('settings'),
                      imageOf('vector-right')
                    ],
                    createText(
                        title: 'My Folder',
                        color: Color(0xFF22215B),
                        fontWeight: FontWeight.w600,
                        fontSize: 15)),
                createCard(color: Color(0xFFFEEEEE), row: createCardContent(Position.right,
                  iconButtonOf(imageOf('more-options-v-3')),
                  Image.asset(imageOf('folder-3')),
                  createText(title: 'Prototypes', fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFFAC4040)),
                  createText(title:'November 22.2020', fontSize: 10, color: Color(0xFFAC4040)))),
                createCard(color: Color(0xFFF0FFFF), row: createCardContent(Position.right,
                  iconButtonOf(imageOf('more-options-v-4')),
                  Image.asset(imageOf('folder-4')),
                  createText(title: 'Avatars', fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFF23B0B0)),
                  createText(title:'November 10.2020', fontSize: 10, color: Color(0xFF23B0B0))))
              ],
            ))
          ]),
        ));
  }

  Widget createCardProfile() {
    return createCard(color: Colors.white, height: 200);
  }

  Widget createSubtitle(List<String> paths, Text text) {
    List<Widget> icons = [];
    for (var path in paths) {
      icons.add(iconButtonOf(path));
    }
    return Padding(
        padding: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [text, Row(children: icons)],
        ));
  }

  Widget createCard({Color color, double height = 100, Row row}) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20.0),
          ),
          height: height,
          child: row),
    );
  }

  Row createCardContent(Position position, IconButton icon , Image image, Text textTitle, Text subtitleText) {
    List<Widget> widgets = [];
    switch (position) {
      case Position.left:
      widgets = [
        icon,
        Padding(
          padding: const EdgeInsets.only(top: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: 
          [
            image,
            textTitle,
            subtitleText
          ]),
        )
        ];
      break;
      case Position.right:        
      widgets = [
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: 
          [
            image,
            textTitle,
            subtitleText
          ]),
        ),
        icon
        ];
      break;
    }
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: widgets);
  }

  AppBar createAppBar(String title) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Color(0xFF22215B),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: iconButtonOf(imageOf('vector-left')),
      actions: [iconButtonOf(imageOf('more-options'))],
    );
  }

  Text createText({String title, Color color, double fontSize, FontWeight fontWeight}) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  IconButton iconButtonOf(String path) {
    return IconButton(onPressed: () {}, icon: Image.asset(path));
  }

  String imageOf(String name) {
    return 'assets/img/' + name + '.png';
  }
}

enum Position { left, right }

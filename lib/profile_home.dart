import 'package:flutter/material.dart';

class ProfileHome extends StatefulWidget {
  @override
  _ProfileHomeState createState() => _ProfileHomeState();
}

class _ProfileHomeState extends State<ProfileHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Color(0xFF22215B),
        ),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Image.asset('assets/img/vector-left.png'),
          onPressed: (){},
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/img/more-options.png'),
            onPressed: (){},
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: [
            cardProfile(),
            SizedBox(height: 10),
            cardProfileBody(),


          ],
        ),
      ),
    );
  }

  Widget cardProfile(){
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 60,
                ),
                Image.asset('assets/img/profile.png'),
                Positioned(
                  left: 0,
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF317B),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'PRO',
                      style: TextStyle(
                        color: Colors.white,
                          fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Text('Neelesh Chaudhary',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF22215B),
            fontSize: 18,
          ),
          textAlign: TextAlign.center,),
          SizedBox(height: 10.0),
          Text('UI / UX Designer',
          style: TextStyle(
            fontSize: 13,
            color: Color(0xFF22215B),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.0),
          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.',
          style: TextStyle(
            fontSize: 13,
            color: Color.fromRGBO(34, 33, 91, 0.6)
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Widget cardProfileBody() {
    return Expanded(
      child: ListView(
        children: [
          cardMyFolders1(),
          SizedBox(height: 10.0),
          cardRecentUpload(),
          SizedBox(height: 10.0),
          cardMyFolders2(),
        ],
      ),
    );
  }

  Widget cardMyFolders1(){
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('My Folders',
              style: TextStyle(
                fontSize: 15.0,
                color: Color(0xFF22215B),
                fontWeight: FontWeight.w600,
              ),),
              Row(
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: Image.asset('assets/img/add.png')
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Image.asset('assets/img/settings.png'),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Image.asset('assets/img/vector-right.png'),
                  )
                ],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFEEF7FE),
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Image.asset('assets/img/more-options-v-1.png'),
                    ),
                    Image.asset('assets/img/folder-1.png'),
                  ],
                ),
                Text('Mobile Apps',
                style: TextStyle(
                  color: Color(0xFF415EB6),
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 0.5),
                Text('December 20.2020',
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF415EB6),
                ),),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFFFBEC),
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 20.0, 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: Image.asset('assets/img/more-options-v-2.png'),
                    ),
                    Image.asset('assets/img/folder-2.png'),
                  ],
                ),
                Text('SGV Icons',
                  style: TextStyle(
                    color: Color(0xFFFFB110),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text('December 14.2020',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFFFB110),
                  ),),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget cardMyFolders2(){
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('My Folders',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xFF22215B),
                  fontWeight: FontWeight.w600,
                ),),
              Row(
                children: [
                  IconButton(
                      onPressed: (){},
                      icon: Image.asset('assets/img/add.png')
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Image.asset('assets/img/settings.png'),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: Image.asset('assets/img/vector-right.png'),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFFEEEEE),
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/img/folder-3.png'),
                    IconButton(
                      onPressed: (){},
                      icon: Image.asset('assets/img/more-options-v-3.png'),
                    ),

                  ],
                ),
                Text('Prototypes',
                  style: TextStyle(
                    color: Color(0xFFAC4040),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 0.5),
                Text('November 22.2020',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFAC4040),
                  ),),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFF0FFFF),
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/img/folder-4.png'),
                    IconButton(
                      onPressed: (){},
                      icon: Image.asset('assets/img/more-options-v-4.png'),
                    ),

                  ],
                ),
                Text('Avatars',
                  style: TextStyle(
                    color: Color(0xFF23B0B0),
                    fontSize: 15.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 0.5),
                Text('November 10.2020',
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF23B0B0),
                  ),),
              ],
            ),
          ),
          SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Widget cardRecentUpload(){
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text( 'Recent Uploads',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF22215B)
                ),
              ),
              IconButton(
                onPressed: (){},
                icon: Image.asset('assets/img/sort.png'),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFEEF7FE),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: IconButton(
                  onPressed: null,
                  icon: Image.asset('assets/img/word.png'),
                ),
              ),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Projects.docx',
                    style: TextStyle(
                      color: Color(0xFF22215B),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),),
                  Row(
                    children: [
                      Text('November 22.2020',
                      style: TextStyle(
                        color: Color.fromRGBO(34, 33, 91, 0.6),
                        fontSize: 11,
                      ),
                      ),
                      SizedBox(width: 120.0),
                      Text('300kb',
                        style: TextStyle(
                          color: Color.fromRGBO(34, 33, 91, 0.6),
                          fontSize: 11,

                        ),),
                    ],
                  ),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}

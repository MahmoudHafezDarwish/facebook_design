import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messanger_design/MODEL/dummy_data.dart';
import 'package:messanger_design/UI/details_post.dart';
import 'package:messanger_design/UI/widget/post.dart';
import 'package:messanger_design/UI/widget/story.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      '/home':(context)=> MessangerDesign(),
      '/post_details':(context)=> FeedPost(),

    },
  ));

}

class MessangerDesign extends StatelessWidget {
  const MessangerDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Facebook",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.search,
                    size: 16,
                    color: Colors.black,
                  )),
            ),
            SizedBox(
              width: 1,
            ),
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.mode_comment_outlined,
                  size: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.camera_alt_outlined),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Search"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.chat),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: DummyData.users.map((user) {
                    return Story(user);
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: DummyData.posts.map((post) {
                      return PostCad(post);
                    }).toList(),
                  ),
                ),
              ),
              PositionedDirectional(
                  bottom: 10,
                  end: 5,

                  child: Row(
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/post_details');
                        },
                        child: Icon(Icons.add),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.home  ,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 10,),  IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person_add  ,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 10,),  IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person_pin  ,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 10,),  IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person  ,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 10,),  IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings  ,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 10,),
                    ],
                  )),
            ],
          ),
        ),
      );

  }
}
/*
Massenger  Design
*  return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('images/hd.jpg'),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "Chats",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.camera_alt,
                    size: 16,
                  )),
            ),
            SizedBox(
              width: 1,
            ),
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  size: 16,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Search"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Mahmoud Darwish",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Mahmoud Darwish",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Mahmoud Darwish",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Mahmoud Darwish",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Mahmoud Darwish",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Mahmoud Darwish",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Mahmoud Darwish",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage:
                                AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Mahmoud Darwish",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mahmoud darwish",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                          "Mahmoud darwish is typing",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("1:15 AM"),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Container(
                                        width: 15,
                                        height: 15,
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                          AssetImage('images/hd.jpg'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mahmoud darwish",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                          "Mahmoud darwish is typing",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("1:15 AM"),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Container(
                                        width: 15,
                                        height: 15,
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                          AssetImage('images/hd.jpg'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mahmoud darwish",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                          "Mahmoud darwish is typing",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("1:15 AM"),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Container(
                                        width: 15,
                                        height: 15,
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                          AssetImage('images/hd.jpg'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mahmoud darwish",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                          "Mahmoud darwish is typing",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("1:15 AM"),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Container(
                                        width: 15,
                                        height: 15,
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                          AssetImage('images/hd.jpg'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mahmoud darwish",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                          "Mahmoud darwish is typing",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("1:15 AM"),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Container(
                                        width: 15,
                                        height: 15,
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                          AssetImage('images/hd.jpg'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mahmoud darwish",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                          "Mahmoud darwish is typing",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("1:15 AM"),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Container(
                                        width: 15,
                                        height: 15,
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                          AssetImage('images/hd.jpg'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mahmoud darwish",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                          "Mahmoud darwish is typing",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("1:15 AM"),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Container(
                                        width: 15,
                                        height: 15,
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                          AssetImage('images/hd.jpg'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mahmoud darwish",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                          "Mahmoud darwish is typing",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("1:15 AM"),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Container(
                                        width: 15,
                                        height: 15,
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                          AssetImage('images/hd.jpg'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('images/hd.jpg'),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(bottom: 3.0, left: 3),
                                child: CircleAvatar(
                                  radius: 7,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mahmoud darwish",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Text(
                                          "Mahmoud darwish is typing",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("1:15 AM"),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Container(
                                        width: 15,
                                        height: 15,
                                        child: CircleAvatar(
                                          radius: 25,
                                          backgroundImage:
                                          AssetImage('images/hd.jpg'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );*/

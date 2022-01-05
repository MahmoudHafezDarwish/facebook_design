import 'package:flutter/material.dart';
import 'package:messanger_design/MODEL/dummy_data.dart';
import 'package:messanger_design/UI/widget/post.dart';
import 'package:messanger_design/UI/widget/postDetails.dart';

class FeedPost extends StatelessWidget {
  const FeedPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: DummyData.posts.map((post) {
                  return PostCardDetails(post);
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

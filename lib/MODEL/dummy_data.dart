import 'package:flutter/material.dart';

import 'PostCreaetor.dart';
import 'UserStory.dart';

class DummyData{
  static List<User> users = [
    User("images/hd.jpg", "Mahmoud Darwish"),
    User("images/hd.jpg", "Mahmoud Darwish"),
    User("images/hd.jpg", "Mahmoud Darwish"),
    User("images/hd.jpg", "Mahmoud Darwish"),
    User("images/hd.jpg", "Mahmoud Darwish"),
    User("images/hd.jpg", "Mahmoud Darwish"),
  ];

 static List<Post> posts = [
    Post(
        user: users[0],
        post_image: "images/hd.jpg",
        post_comment: "post_comment",
        isLike: false,
        isSave: false),
    Post(
        user: users[0],
        post_image: "images/hd.jpg",
        post_comment: "post_comment",
        isLike: true,
        isSave: true),
    Post(
        user: users[0],
        post_image: "images/hd.jpg",
        post_comment: "post_comment",
        isLike: false,
        isSave: false),
    Post(
        user: users[0],
        post_image: "images/hd.jpg",
        post_comment: "post_comment",
        isLike: true,
        isSave: false),
    Post(
        user: users[0],
        post_image: "images/hd.jpg",
        post_comment: "post_comment",
        isLike: false,
        isSave: false),
  ];
}

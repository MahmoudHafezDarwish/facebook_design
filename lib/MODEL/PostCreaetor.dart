import 'package:flutter/material.dart';

import 'UserStory.dart';

class Post {
  User user;
  String post_image;
  String post_comment;
  bool isLike;
  bool isSave;

  Post(
      {required this.user,
      required this.post_image,
      required this.post_comment,
      required this.isLike,
      required this.isSave});
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messanger_design/MODEL/PostCreaetor.dart';

class PostCardDetails extends StatelessWidget {
  Post post;

  PostCardDetails(this.post);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage(post.user.image_url),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3.0, left: 3),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        post.user.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10,),
                      Text("32 minuts ago"),
                    ],
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Updated his cover photo",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_control_outlined)),

                  // Row(
                  //   children: [
                  //     Expanded(
                  //         child: Text(
                  //           "Mahmoud darwish is typing",
                  //           maxLines: 2,
                  //           overflow: TextOverflow.ellipsis,
                  //         )),
                  //     SizedBox(
                  //       height: 10,
                  //     ),
                  //     Text("1:15 AM"),
                  //     Padding(
                  //       padding: const EdgeInsets.symmetric(
                  //           horizontal: 20),
                  //       child: Container(
                  //         width: 15,
                  //         height: 15,
                  //         child: CircleAvatar(
                  //           radius: 25,
                  //           backgroundImage:
                  //           AssetImage('images/hd.jpg'),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

          ] ,
        ),
        SizedBox(
          height: 10,
        ),

        SizedBox(
          height:30,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("Mahmoud hafez soliman darwish iam Mobile develeoper graduate from iug of gaza in 15/6/2021 "),
        ),

        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          width: double.infinity,


          child: Card(
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image(
              image: AssetImage(post.post_image,),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          width: double.infinity,


          child: Card(
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image(
              image: AssetImage(post.post_image,),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.tag_faces_rounded,
              color: Colors.blue,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ),
            Text('444'),
            Spacer(),
            Text(
              '100 comments',
              style:
                  TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.5)),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.facebook_sharp,
                      color: Colors.blue,
                    ),
                  ),
                  Text('Like'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.comment,
                      color: Colors.grey,
                    ),
                  ),
                  Text('Comment'),
                ],
              ),
            ),
          ],
        ),
        // Text(
        //   'Liked by Mohammed and  36 others',
        //   style: TextStyle(color: Colors.black, fontSize: 14),
        // ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.facebook_rounded),
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
                    Text("Add a comment"),
                    Spacer(),
                    Icon(
                      Icons.gif_rounded,
                    ),
                    Icon(
                      Icons.tag_faces_sharp,
                    ),

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

      ],
    );
  }
}

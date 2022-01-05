import 'package:flutter/material.dart';
import 'package:messanger_design/MODEL/UserStory.dart';

class Story extends StatelessWidget {

  User user;


  Story(this.user);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: 350,
                  height: 180,
                  child: Card(
                    child: Image.asset(user.image_url,fit: BoxFit.cover,),
                    shape: RoundedRectangleBorder(

                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(
                        width: 0,
                        style:BorderStyle.solid,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0,right: 1,left: 1),
                  child: Text(
                    user.name,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal

                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),

          ],
        ));
  }
}

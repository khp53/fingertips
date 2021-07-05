import 'package:flutter/material.dart';

class PostsTile extends StatelessWidget {
  final String postsBody;
  final String postsPhoto;
  final String title;
  const PostsTile({this.postsBody, this.postsPhoto, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.grey[100],
      child: Column(
        children: [
          Image(
            image: NetworkImage(postsPhoto),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                postsBody,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

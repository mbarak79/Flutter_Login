import 'package:flutter/material.dart';

class MessngerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2014/03/27/21/36/model-299694_960_720.jpg"),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text(
                'Chats',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
                ),
            ),
          ],
        ),
        actions: [
          IconButton(
                icon: CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.blue[300],
                  child: Icon(
                      Icons.camera_alt,
                      size: 16.0,
                      color: Colors.white,
                  ),
                ),
            ),
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.blue[300],
              child: Icon(
                Icons.edit,
                size: 15.0,
                color: Colors.white,
              ),
            ),
          ),


        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.grey[300]
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  Text(
                    'Search',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

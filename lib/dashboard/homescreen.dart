import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                // Profile row
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 10,
                          color: Colors.grey[300],
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: 150,
                          height: 10,
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // Image placeholder
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.grey[300],
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          Icon(Icons.image, size: 50, color: Colors.grey[600])),
                ),
                SizedBox(height: 10),
                // Interaction buttons within a container
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.grey),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.download),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 2.0,
              color: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                // Profile row
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 10,
                          color: Colors.grey[300],
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: 150,
                          height: 10,
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // Image placeholder
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.grey[300],
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          Icon(Icons.image, size: 50, color: Colors.grey[600])),
                ),
                SizedBox(height: 10),
                // Interaction buttons within a container
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.grey),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.download),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 2.0,
              color: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                // Profile row
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 10,
                          color: Colors.grey[300],
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: 150,
                          height: 10,
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                // Image placeholder
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.grey[300],
                  child: IconButton(
                      onPressed: () {},
                      icon:
                          Icon(Icons.image, size: 50, color: Colors.grey[600])),
                ),
                SizedBox(height: 10),
                // Interaction buttons within a container
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.grey),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.download),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.comment),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

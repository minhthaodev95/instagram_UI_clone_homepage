import 'package:flutter/material.dart';

class PostContent extends StatelessWidget {
  const PostContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            height: 50,
            padding:
                const EdgeInsets.only(top: 5, left: 10, bottom: 5, right: 10),
            child: Row(
              children: const [
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: NetworkImage(
                      'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg'),
                  backgroundColor: Colors.blueAccent,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Text('Laliga',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                ),
                Icon(Icons.more_horiz)
              ],
            ),
          ), //-> Row
          Image.network(
            "https://images.unsplash.com/photo-1547721064-da6cfb341d50",
            height: 450,
            width: double.infinity,
            fit: BoxFit.cover,
          ), // -> Image
          Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 10,
                                right: 10,
                              ),
                              child: Icon(Icons.favorite_outline, size: 30),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 10,
                                right: 10,
                              ),
                              child: Icon(Icons.comment_outlined, size: 30),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: 10,
                                right: 10,
                              ),
                              child: Icon(Icons.share, size: 30),
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.turned_in_not,
                          size: 30,
                        ),
                      ),
                    ],
                  ),

                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("7.157 likes")),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      const Text('laliga '),
                      const Text('Killer in front of goal ...'),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          ' more',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "View all 69 comments",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "15 hours ago",
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w300),
                    ),
                  ),
                  // -> button 'more'
                  // -> buttom 'view all 10 comments '
                  // -> one comment new
                  // -> row ( avatar, input form, 3 button )
                  // -> row ( time posted , butotn 'see translate' )
                ],
              )), // -> Row
        ],
      ),
    );
  }
}

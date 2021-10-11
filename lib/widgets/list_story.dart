import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/datas/dummy_data.dart';

class ListStory extends StatelessWidget {
  const ListStory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 100,
            height: 100.0,
            child: Center(
              child: Stack(
                children: [
                  Column(
                    children: const [
                      SizedBox(
                        child: CircleAvatar(
                          radius: 35.0,
                          backgroundImage: NetworkImage(
                              'https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg'),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Your Story')
                    ],
                  ),
                  const Positioned(
                    bottom: 25,
                    right: 0,
                    child: Icon(Icons.add_a_photo_outlined),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) {
                return Container(
                  margin: const EdgeInsets.only(left: 15),
                  width: 80,
                  height: 100.0,
                  child: Column(
                    children: [
                      Container(
                        child: CircleAvatar(
                          radius: 37,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage(users[i].avatar),
                          ),
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.red,
                            width: 1.5,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(users[i].nickname)
                    ],
                  ),
                );
              },
              itemCount: users.length,
            ),
          )
        ],
      ),
    );
  }
}

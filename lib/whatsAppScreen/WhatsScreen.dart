import 'package:flutter/material.dart';

class WhatsScreen extends StatelessWidget {
  const WhatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: Colors.grey[500],
        backgroundColor: Colors.cyan[800],
        title: Text(
          'WhatsApp',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[500]),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_outlined)),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.cyan[800],
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.camera_alt,
                      color: Colors.grey[500],
                    )),
                Expanded(
                    child: Text(
                  'CHATS',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                )),
                Expanded(
                    child: Text(
                  'STATUS',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                )),
                Expanded(
                    child: Text(
                  'CALLS',
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ))
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 15.0,
                    ),
                itemCount: 20),
          ),
        ],
      ),
    );
  }

  Widget buildChatItem() => Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage(
                  'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/km5shziugh7xrtkhgcjp.jpg'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Text(
                    'Mohamed hamza',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0),
                  ),
                  SizedBox(
                    width: 110.0,
                  ),
                  Text(
                    '10:51 Am',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Brooooo how are you? ',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ],
      );
}

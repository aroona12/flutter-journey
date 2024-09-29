import 'package:flutter/material.dart';

class WhatsappUi extends StatefulWidget {
  const WhatsappUi({super.key});

  @override
  State<WhatsappUi> createState() => _WhatsappUiState();
}

class _WhatsappUiState extends State<WhatsappUi> {
  List<Map<String , String>> People = [
    {
      'name': 'Aroona Bibi',
      'message': 'sunny day ',
      'imageUrl':'https://th.bing.com/th/id/R.73193850befde848c3a7967e758d3405?rik=0Q%2fRbkxdQ3HaJA&pid=ImgRaw&r=0',
      'time' : '12.00 pm'
    },
    {
      'name': 'Laiba Bibi',
      'message': 'its not okay ',
      'imageUrl':'https://th.bing.com/th/id/OIP.zekCsoFCnAiHuSvAfhfHTQHaHa?w=900&h=900&rs=1&pid=ImgDetMain',
      'time' : '4.20 PM',
    },
    {
      'name': 'memoona Bibi',
      'message': 'i dont know ',
      'imageUrl':'https://th.bing.com/th/id/OIP.z_cc0ePSzDBNSbLzOx1JHAAAAA?rs=1&pid=ImgDetMain',
      'time': '3.45 AM',
    },
    {
      'name': 'jabbar',
      'message': 'right know i am doing job ',
      'imageUrl':'https://th.bing.com/th/id/OIP.H2frbkT1XnX9eO7N1mwopAHaHZ?rs=1&pid=ImgDetMain',
      'time': '3.45 AM',
    },
    {
      'name': 'ali',
      'message': 'i am not happy today',
      'imageUrl':'https://media.licdn.com/dms/image/D4E12AQHlgw0UbbVzWw/article-cover_image-shrink_600_2000/0/1673818354066?e=2147483647&v=beta&t=9FH4aWgyqTMmrTESbaEYIniKrep-D4FZ0ztpcwraSUM',

    },
    {
      'name': 'ahsan',
      'message': 'we will back soon ',
      'imageUrl':'https://th.bing.com/th/id/R.0f67dc4d44e2c63a3952169c215b1b8e?rik=J%2fe2On0Dx1WFUA&pid=ImgRaw&r=0',

    },
    {
      'name': 'ahmed',
      'message': ' be happy',
      'imageUrl':'https://th.bing.com/th/id/OIP.KpOsYjsoUWX4fkc0gCK-NQHaEo?rs=1&pid=ImgDetMain',

    },
    {
      'name': 'sara',
      'message': 'make sure you have enough money to buy icecream? ',
      'imageUrl':'https://th.bing.com/th/id/OIP.B5vXMKZLN_AbHxU4QOhlJAHaJQ?rs=1&pid=ImgDetMain',

    },
  ];
  List<Map<String , String>> status =[
    {
    'name': 'My Status',
      'time' :'tap to add status update',
      'imageUrl' : 'https://th.bing.com/th/id/OIP.O-F8fJDAUFp4rYvYCESD4gHaEK?rs=1&pid=ImgDetMain'
    },
    {
      'name': 'Aru Sister',
      'time' :'just now',
      'imageUrl' : 'https://th.bing.com/th/id/R.c97e33019157a35f3492ca82982f297f?rik=lwYLkU8%2bQK0nCQ&pid=ImgRaw&r=0'
    }, {
      'name': 'Hella',
      'time' :'7  hour ago',
      'imageUrl' : 'https://th.bing.com/th/id/OIP.LrcUb8pRdEQbZgIY9U1hAgHaJJ?rs=1&pid=ImgDetMain'
    },
    {
      'name': 'ali',
      'time' :'30 minutes ago',
      'imageUrl' : 'https://i0.wp.com/www.techgrama.in/wp-content/uploads/2021/06/dp-for-instagram-for-boy-30.jpg?w=960&ssl=1'
    }, {
      'name': 'rani',
      'time' :'8 minute ago',
      'imageUrl' : 'https://th.bing.com/th/id/OIP.hg2_xVsmAi6caA6efHG4RAHaHa?rs=1&pid=ImgDetMain'
    },

  ];
  @override

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Whatsapp'),
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('chats'),
            ),
            Tab(
              child: Text('status'),
            ),
            Tab(
              child: Text('calls'),
            ),
          ]),
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Text('New group'),
                ),
                const PopupMenuItem(
                  child: Text('New Broadcast'),
                ),
                const PopupMenuItem(
                  child: Text('Linked devices'),
                ),
                const PopupMenuItem(
                  child: Text('Starred Messages'),
                ),
                const PopupMenuItem(
                  child: Text('Setting'),
                ),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            const Text('camera'),
            ListView.builder(
              itemCount: People.length,
                itemBuilder: (context, index) {
                final person = People[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(person['imageUrl']!),
                    ),
                    title: Text(person['name']!),
                    subtitle: Text(person['message']!),

                  );
                }),
            ListView.builder(
              itemCount: status.length,
                itemBuilder: (context, index){
              final statuses= status[index];
              return ListTile(
                leading: CircleAvatar(
    backgroundColor: Colors.green,
                  backgroundImage: NetworkImage(statuses['imageUrl']!),
                ),
                title: Text(statuses['name']!),
                subtitle: Text(statuses['time']!),
              );
            }),
            ListView.builder(
              itemCount: 20,
                itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.BNbIQ87ZsFOwt5UnwvOToQHaHa?w=1024&h=1024&rs=1&pid=ImgDetMain'),
                ),
                title: Text('Aru'),
                subtitle: Text((index %2 ==0)?'you missed audio call' : 'you missed video call'),
                trailing: Icon((index%2 == 0)?Icons.call : Icons.video_call),
              );
            })
          ],
        ),
      ),
    );
  }
}

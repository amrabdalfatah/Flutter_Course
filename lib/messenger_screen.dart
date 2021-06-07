import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  final List<PersonModel> personModel = [
    PersonModel(
      name: 'Ali Mohamed',
      imageUrl:
          'https://i.pinimg.com/736x/04/bb/21/04bb2164bbfa3684118a442c17d086bf.jpg',
      message: 'ايه الاخبار؟',
      time: '02:30 pm',
    ),
    PersonModel(
      name: 'Ghada Khaled',
      imageUrl:
          'https://expertphotography.com/wp-content/uploads/2018/10/cool-profile-pictures-retouching-1.jpg',
      message: 'كنت لسه بذاكر امبارح والى هو لسه مخلصه دلوقتى وبقلب ف الفيس',
      time: '02:15 pm',
    ),
    PersonModel(
      name: 'Ahmed Abdelfatah',
      imageUrl:
          'https://helostatus.com/wp-content/uploads/2021/03/2021-WhatsApp-profile-photo.jpg',
      message: 'Hello, My name is Ahmed',
      time: '01:15 pm',
    ),
    PersonModel(
      name: 'Elsayed Ibrahim',
      imageUrl:
          'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      message: 'Hello, Amr How are you?',
      time: '01:00 pm',
    ),
    PersonModel(
      name: 'Ahmed Mohamed',
      imageUrl:
          'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      message: 'ايه ي عم فينك ليك واحشة',
      time: '12:30 pm',
    ),
    PersonModel(
      name: 'Eman Mohamed',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnub98gyoXNvkPnyOWxTE1zzAQiP1aeYceGA&usqp=CAU',
      message: 'كنت ملخصه المنهج',
      time: '11:14 am',
    ),
    PersonModel(
      name: 'Yara Ayman',
      imageUrl:
          'https://expertphotography.com/wp-content/uploads/2020/08/social-media-profile-photos-9.jpg',
      message: 'ابدا شغاله على المشروع',
      time: '09:15 am',
    ),
    PersonModel(
      name: 'Mohamed Ibrahim',
      imageUrl:
          'https://static.wikia.nocookie.net/sonic-underground/images/0/00/Guy.jpeg/revision/latest?cb=20201121200403',
      message: 'ي عم والله واحشني',
      time: '08:18 am',
    ),
    PersonModel(
      name: 'The Hacker',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/5/5f/Alberto_conversi_profile_pic.jpg',
      message: 'عمك مات وسابلك قطعه ارض وبيقولك تعالى انت واخوك علشان تاخدوها',
      time: '07:12 am',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 16.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://i.pinimg.com/originals/7d/1a/3f/7d1a3f77eee9f34782c6f88e97a6c888.jpg'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 16.0,
              child: Icon(
                Icons.camera_alt,
                size: 18.0,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 16.0,
              child: Icon(
                Icons.edit,
                size: 18.0,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Search'),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => PersonsHistory(
                    name: personModel[index].name,
                    imageUrl: personModel[index].imageUrl,
                  ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 15,
                  ),
                  itemCount: personModel.length,
                ),
              ),
              Divider(
                thickness: 2,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => PersonChat(
                  imageUrl: personModel[index].imageUrl,
                  name: personModel[index].name,
                  message: personModel[index].message,
                  time: personModel[index].time,
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
                itemCount: personModel.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PersonChat extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String message;
  final String time;

  PersonChat({
    @required this.imageUrl,
    @required this.name,
    @required this.message,
    @required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  imageUrl,
                ),
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        message,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 5.0,
                      width: 5.0,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PersonsHistory extends StatelessWidget {
  final String imageUrl;
  final String name;

  const PersonsHistory({@required this.imageUrl, @required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                  imageUrl,
                ),
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            width: 65,
            child: Text(
              name,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PersonModel {
  final String name;
  final String imageUrl;
  final String message;
  final String time;

  PersonModel({
    this.name,
    this.imageUrl,
    this.message,
    this.time,
  });
}

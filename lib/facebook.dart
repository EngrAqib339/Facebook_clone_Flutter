import 'package:flutter/material.dart';
class Facebook extends StatelessWidget {
  const Facebook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'facebook',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800]),
            ),
            actions: [
              SizedBox(width: 20),
              Icon(Icons.add_circle_rounded),
              SizedBox(width: 20),
              Icon(Icons.search),
              SizedBox(width: 20),
              Icon(Icons.message),
              SizedBox(width: 20),
            ],
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/aqib.jpeg'),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 35,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, top: 7),
                      child: Text("What's on your mind?"),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Icon(
                      Icons.photo_album_outlined,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 3,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                        height: 180,
                        width: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/waqas.png'),
                              fit: BoxFit.cover),
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 14.0, bottom: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('images/waqas.png'),
                              ),
                              Text(
                                'Waqas',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      height: 180,
                      width: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/arshman.jpg'),
                            fit: BoxFit.cover),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/arshman.jpg'),
                            ),
                            Text(
                              'Arshman',
                              style:
                              TextStyle(color: Colors.white, fontSize: 11),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      height: 180,
                      width: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/saad.jpg'),
                            fit: BoxFit.cover),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/saad.jpg'),
                            ),
                            Text(
                              'Saad',
                              style:
                              TextStyle(color: Colors.white, fontSize: 11),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      height: 180,
                      width: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/yasir.jpg'),
                            fit: BoxFit.cover),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('images/yasir.jpg'),
                            ),
                            Text(
                              'Yasir',
                              style:
                              TextStyle(color: Colors.white, fontSize: 11),
                            ),
                          ],
                        ),
                      )),
                ]),
              ),
              Divider(
                thickness: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/aqib.jpeg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        children: [
                          Text(
                            'Aqib Khan',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 56.0),
                            child: Row(
                              children: [
                                Text('1h'),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(Icons.public)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 325.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Winters"),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/winters.jpg'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Icon(Icons.favorite_outline),
                    Text('303k'),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(Icons.chat_bubble_outline,),
                    Text('55.1k')
                  ],
                ),
              ),
            ],
            ),
          ),
        )
    );
  }
}
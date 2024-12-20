import 'package:flutter/material.dart';
class FacebookHomePage extends StatefulWidget {
  @override
  _FacebookHomePageState createState() => _FacebookHomePageState();
}

class _FacebookHomePageState extends State<FacebookHomePage> {
  int _currentIndex = 0;

  // Pages for the BottomNavigationBar
  final List<Widget> _pages = [
    HomePage(),
    ProfilePage(),
    NotificationsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook Clone'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {
              // Handle message action
            },
          ),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
        ],
      ),
    );
  }
}

// Home Page - News Feed
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Sample posts
        PostWidget(
          profilePicUrl: 'https://via.placeholder.com/50',
          username: 'John Doe',
          timeAgo: '2 hours ago',
          postContent: 'This is a sample post in the Facebook Clone app.',
        ),
        PostWidget(
          profilePicUrl: 'https://via.placeholder.com/50',
          username: 'Jane Smith',
          timeAgo: '1 day ago',
          postContent: 'Loving the new Flutter update!',
        ),
        PostWidget(
          profilePicUrl: 'https://via.placeholder.com/50',
          username: 'Mike Johnson',
          timeAgo: '3 days ago',
          postContent: 'Check out my new blog post about Dart programming.',
        ),
      ],
    );
  }
}

// Profile Page - Placeholder
class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Profile Page - Work in Progress',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Notifications Page - Placeholder
class NotificationsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Notifications Page - Work in Progress',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Post Widget - Reusable component for posts
class PostWidget extends StatelessWidget {
  final String profilePicUrl;
  final String username;
  final String timeAgo;
  final String postContent;

  const PostWidget({
    required this.profilePicUrl,
    required this.username,
    required this.timeAgo,
    required this.postContent,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header: Profile Picture, Username, and Time Ago
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(profilePicUrl),
                  radius: 25,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      timeAgo,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            // Post Content
            Text(
              postContent,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 10),
            // Like, Comment, and Share Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up_alt_outlined),
                  label: Text('Like'),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.comment_outlined),
                  label: Text('Comment'),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.share_outlined),
                  label: Text('Share'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

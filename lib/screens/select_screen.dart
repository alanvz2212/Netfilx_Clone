import 'package:flutter/material.dart';
import 'package:netflixclone/screens/profile_splash_screen.dart';
import 'package:netflixclone/screens/select_screen.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Image.asset('assets/Images/logo.png', height: 60),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.white),
            onPressed: () {
              // Implement search functionality here
            },
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Text(
            'Who is Whatching',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'NetflixSansLight',
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BuildProfileTitle(
                context,
                imagePath: 'assets/Images/profile2.jpg',
                label: 'Alan Varghese',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileSplashScreen(),
                    ),
                  );
                },
              ),
              SizedBox(width: 20),
              BuildProfileTitle(
                context,
                imagePath: 'assets/Images/profile2.jpg',
                label: 'Childern',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileSplashScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [const SizedBox(width: 70), buildAddProfileTile(context)],
          ),
        ],
      ),
    );
  }

  BuildProfileTitle(
    BuildContext context, {
    required String imagePath,
    required String label,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CircleAvatar(radius: 40, backgroundImage: AssetImage(imagePath)),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'NetflixSans',
            ),
          ),
        ],
      ),
    );
  }

  buildAddProfileTile(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey, width: 2),
          ),
          child: Icon(Icons.add, size: 50, color: Colors.grey),
        ),
        const SizedBox(height: 10),
        Text(
          'Add Profile',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'NetflixSans',
          ),
        ),
      ],
    );
  }
}

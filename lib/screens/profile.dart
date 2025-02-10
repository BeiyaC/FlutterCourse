import 'package:flutter/material.dart';
import 'package:first_app/widgets/banner.dart';
import 'package:first_app/widgets/user.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          ProfileBanner(),
          ProfileUser()

        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
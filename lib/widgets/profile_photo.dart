import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePhoto extends StatefulWidget {
  const ProfilePhoto({super.key});
  @override
  ProfilePhotoState createState() => ProfilePhotoState();

}

class ProfilePhotoState extends State<ProfilePhoto> {


  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 100,
        child: Container(
          padding: const EdgeInsets.all(1.0),
          margin: const EdgeInsets.symmetric(vertical: 1.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                color: Colors.white,
                width: 2
            ),
          ),
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/luffy_profile.png'),
          ),
        )
    );
  }
}
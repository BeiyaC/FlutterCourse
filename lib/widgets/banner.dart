import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileBanner extends StatelessWidget {
  const ProfileBanner({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 36.0),
            child: Image(
                image: AssetImage('assets/mountain.png')
            ),
          ),
          Positioned(
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
          )
        ],
      ),
    );
  }
}
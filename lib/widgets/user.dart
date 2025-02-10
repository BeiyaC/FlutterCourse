import 'package:flutter/material.dart';

class ProfileUser extends StatelessWidget {
  const ProfileUser({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Anis Grigah',
          textAlign: TextAlign.justify,),
          Text('Lorem ipsum blabla tout ça tout ça',
          textAlign: TextAlign.justify,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ButtonStyle(

                ),
                onPressed: () {},
                child: Text('Modifier le profil')
              ),
              ElevatedButton.icon(

                onPressed: () {},
                label: Icon(Icons.add),
              )
            ],
          )
                  ],
      ),
    );
  }
}
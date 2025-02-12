import 'package:flutter/material.dart';
import 'package:first_app/widgets/profile_photo.dart';

class InteractiveProfileUser extends StatefulWidget {
  const InteractiveProfileUser({super.key});
  @override
  InteractiveProfileUserState createState() => InteractiveProfileUserState();

}

class InteractiveProfileUserState extends State<InteractiveProfileUser> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              ProfilePhoto(),
              Text('Anis Grigah',
                textAlign: TextAlign.justify,),
            ],
          ),
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
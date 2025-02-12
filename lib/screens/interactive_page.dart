import 'package:flutter/cupertino.dart';
import 'package:first_app/models/profile.dart';
import 'package:flutter/material.dart';
import 'package:first_app/enums/gender.dart';
import 'package:first_app/widgets/profile_photo.dart';
import 'package:first_app/widgets/camera.dart';

class InteractivePage extends StatefulWidget {
  const InteractivePage({super.key});

  @override
  InteractivePageState createState() => InteractivePageState();
}

class InteractivePageState extends State<InteractivePage> {
  Profile profile = Profile(firstName: "YourFirstName", lastName: "YourLastName");
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController favoriteLanguageController = TextEditingController();
  final TextEditingController secretController = TextEditingController();


  @override
  void initState() {
    super.initState();
    firstNameController.text = profile.firstName;
    lastNameController.text = profile.lastName;
    ageController.text = profile.age?.toString() ?? "";
    heightController.text = profile.height.toString();
    favoriteLanguageController.text = profile.favoriteProgrammingLanguage;
    secretController.text = profile.secret;
  }

  void updateProfile() {
    setState(() {
      profile.firstName = firstNameController.text;
      profile.lastName = lastNameController.text;
      profile.age = int.tryParse(ageController.text);
      profile.height = double.tryParse(heightController.text) ?? 0.0;
      profile.favoriteProgrammingLanguage = favoriteLanguageController.text;
      profile.secret = secretController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile Page")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfilePhoto(

                    ),
                    Text("FirstName: ${profile.firstName}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("LastName: ${profile.lastName}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text("Age: ${profile.age ?? "Not set"}"),
                    Text("Height: ${profile.height.round()} cm"),
                    Text("Gender: ${profile.gender.toString().split('.').last}"),
                    Text("Favorite Programming Language: ${profile.favoriteProgrammingLanguage}"),
                    ImagePickerWidget()
                  ],
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: firstNameController,
                decoration: const InputDecoration(labelText: "First Name"),
                onEditingComplete: updateProfile,
              ),
              TextFormField(
                controller: lastNameController,
                decoration: const InputDecoration(labelText: "Last Name"),
                onEditingComplete: updateProfile,
              ),
              TextFormField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: "Age"),
                onEditingComplete: updateProfile,
              ),
              Slider(
                value: profile.height,
                min: 0.0,
                max: 220.0,
                divisions: 120,
                label: "${profile.height.round()} cm",
                onChanged: (double value) {
                  setState(() {
                    profile.height = value;
                  });
                },
              ),
              const SizedBox(height: 10),
              const Text("Gender"),
              Column(
                children: Gender.values.map((Gender gender) {
                  return RadioListTile<Gender>(
                    title: Text(gender.toString().split('.').last),
                    value: gender,
                    groupValue: profile.gender,
                    onChanged: (Gender? newValue) {
                      setState(() {
                        profile.gender = newValue!;
                      });
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: favoriteLanguageController,
                decoration: const InputDecoration(labelText: "Favorite Programming Language"),
                onEditingComplete: updateProfile,
              ),
              TextFormField(
                controller: secretController,
                obscureText: true,
                decoration: const InputDecoration(labelText: "Secret"),
                onEditingComplete: updateProfile,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

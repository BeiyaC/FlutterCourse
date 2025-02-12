import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  @override
  _ImagePickerWidgetState createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  final ImagePicker _picker = ImagePicker();
  XFile? image;

  // Configuration des options de capture
  final imageQuality = 85; // Qualité de compression (0-100)
  final maxWidth = 1920.0;
  final maxHeight = 1080.0;

  Future<void> _pickImage(ImageSource source) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: source,
        imageQuality: imageQuality,
        maxWidth: maxWidth,
        maxHeight: maxHeight,
      );

      if (pickedFile != null) {
        setState(() {
          image = pickedFile;
        });

        // Ici vous pouvez ajouter votre logique de traitement
      }
    } catch (e) {
      print('Erreur lors de la sélection de l\'image: $e');
      // Gérez l'erreur de manière appropriée
    }
  }

  Widget _buildImagePickerUI() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton.icon(
          onPressed: () => _pickImage(ImageSource.camera),
          icon: Icon(Icons.camera_alt),
          label: Text('Appareil photo'),
        ),
        ElevatedButton.icon(
          onPressed: () => _pickImage(ImageSource.gallery),
          icon: Icon(Icons.photo_library),
          label: Text('Galerie'),
        ),
      ],
    );
  }

  Widget _buildImagePreview() {
    return Container(
      margin: EdgeInsets.all(15),
      child: image == null
          ? Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          Icons.image,
          size: 100,
          color: Colors.grey[400],
        ),
      )
          : ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.file(
          File(image!.path),
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Interface utilisateur
        _buildImagePickerUI(),
        // Affichage de l'image
        _buildImagePreview(),
      ],
    );
  }
}
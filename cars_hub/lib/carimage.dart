import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class CarImageUpload extends StatefulWidget {
  final Function(File?)
      onImageSelected; // Callback to pass the image to the parent

  const CarImageUpload({super.key, required this.onImageSelected});

  @override
  State<CarImageUpload> createState() => _CarImageUploadState();
}

class _CarImageUploadState extends State<CarImageUpload> {
  File? _imageFile;

  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: ImageSource.gallery, // You can also use ImageSource.camera
      );

      if (pickedFile != null) {
        setState(() {
          _imageFile = File(pickedFile.path); // Convert XFile to File
        });
        widget.onImageSelected(
            _imageFile); // Pass the selected image to the parent
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _imageFile != null
              ? Image.file(
                  _imageFile!,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                )
              : const Text(
                  "No image selected",
                  style: TextStyle(color: Colors.white),
                ),
          const SizedBox(height: 20),
          IconButton(
            icon: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            onPressed: _pickImage,
            iconSize: 50.0,
          ),
        ],
      ),
    );
  }
}

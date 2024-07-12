import 'package:flutter/material.dart';

class CarImageUpload extends StatefulWidget {
  const CarImageUpload({super.key});

  @override
  State<CarImageUpload> createState() => _CarImageUploadState();
}

class _CarImageUploadState extends State<CarImageUpload> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        icon: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
        onPressed: () {
          // Handle image upload
        },
        iconSize: 50.0,
      ),
    );
  }
}

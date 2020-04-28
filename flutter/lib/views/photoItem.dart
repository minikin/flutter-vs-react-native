import 'package:flutter/material.dart';

import '../models/photo.dart';

class PhotoWidget extends StatelessWidget {
  final Photo photo;

  const PhotoWidget(this.photo);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      child: Image.network(photo.imagePath, fit: BoxFit.cover),
    );
  }
}

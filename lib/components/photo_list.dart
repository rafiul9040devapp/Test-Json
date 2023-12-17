import 'package:flutter/material.dart';
import '../model/photo.dart';

class PhotoList extends StatelessWidget {
  final List<Photo> photos;

  const PhotoList({super.key, required this.photos});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Image.network(
            photos[index].thumbnailUrl ?? '',
            fit: BoxFit.fill,
          ),
        );
      },
    );
  }
}

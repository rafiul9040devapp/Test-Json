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
          foregroundDecoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 2),
            borderRadius: const BorderRadius.all(Radius.circular(16)),
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          clipBehavior: Clip.antiAlias,
          child: Image.network(
            photos[index].thumbnailUrl ?? '',
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}

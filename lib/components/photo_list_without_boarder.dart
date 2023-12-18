import 'package:flutter/material.dart';
import '../model/photo.dart';

class PhotoListWithoutBoarder extends StatelessWidget {
  final List<Photo> photos;

  const PhotoListWithoutBoarder({super.key, required this.photos});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      itemCount: photos.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // Image border
            child: SizedBox.fromSize(
              size: const Size.fromRadius(48), // Image radius
              child: Image.network(
                photos[index].thumbnailUrl ?? '',
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}

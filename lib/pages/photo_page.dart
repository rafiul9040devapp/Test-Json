import 'package:flutter/material.dart';
import 'package:test_json/model/photo.dart';
import 'package:test_json/network/fetch_photo.dart';
import 'package:http/http.dart' as http;

import '../components/photo_list.dart';

class PhotoPage extends StatefulWidget {
  const PhotoPage({super.key});

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Page'),
      ),
      body: FutureBuilder<List<Photo>>(
        future: fetchPhotos(http.Client()),
        builder: (context, response) {
          if (response.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (response.hasData) {
            return PhotoList(
              photos: response.data ?? List.empty(),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}



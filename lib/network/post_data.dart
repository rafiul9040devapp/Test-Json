import 'dart:convert';

import '../model/album_post.dart';
import 'package:http/http.dart' as http;

Future<AlbumPost> createAlbum(String title) async {
  final response = await http.post(
    Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(
      <String, String>{
        'title': title,
      },
    ),
  );

  if (response.statusCode == 201) {
    return AlbumPost.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to create album.');
  }
}

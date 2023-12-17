class AlbumPost {
  int? id = 0;
  String? title = "N/A";

  AlbumPost({required this.id, required this.title});

  factory AlbumPost.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'title': String title,
      } =>
        AlbumPost(
          id: id,
          title: title,
        ),
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}

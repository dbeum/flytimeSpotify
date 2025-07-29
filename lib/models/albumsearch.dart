class AlbumSearch {
  final String name;
  final String imageUrl;
  final String artist;
  final String albumId;

  AlbumSearch({
    required this.name,
    required this.imageUrl,
    required this.artist,
    required this.albumId,
  });

  factory AlbumSearch.fromJson(Map<String, dynamic> json) {
    return AlbumSearch(
      name: json['name'] ?? 'Unknown',
      imageUrl: (json['images'] != null && json['images'].isNotEmpty)
          ? json['images'][0]['url']
          : '',
      artist: (json['artists'] != null && json['artists'].isNotEmpty)
          ? json['artists'][0]['name']
          : 'Unknown Artist',
      albumId: json['id'] ?? '',
    );
  }
}

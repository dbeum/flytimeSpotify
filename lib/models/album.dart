class Album {
  final String name;
  final String imageUrl;
  final String artist;
  final String albumId;
  final List<String> tracks;
  Album({
    required this.name,
    required this.imageUrl,
    required this.artist,
    required this.albumId,
    required this.tracks,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      name: json['name'] ?? 'unknown artist',
      imageUrl: json['images'][0]['url'],
      artist: json['artists'][0]['name'],
      albumId: json['id'],
      tracks: List<String>.from(
        json['tracks']['items'].map((track) => track['name']),
      ),
    );
  }
}

class Playlist {
  final String name;
  final String imageUrl;
  final String owner;
  final String playlistId;
  final List<String> tracks;
  Playlist({
    required this.name,
    required this.imageUrl,
    required this.owner,
    required this.playlistId,
    required this.tracks,
  });

  factory Playlist.fromJson(Map<String, dynamic> json) {
    return Playlist(
      name: json['name'] ?? 'unknown artist',
      imageUrl: json['images'][0]['url'],
      owner: json['owner']['display_name'],
      playlistId: json['id'],
      tracks: List<String>.from(
        (json['tracks']['items'] as List)
            .map((item) => item['track']?['name'])
            .where((name) => name != null),
      ),
    );
  }
}

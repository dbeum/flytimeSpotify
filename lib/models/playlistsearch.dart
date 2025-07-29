class PlaylistSearch {
  final String name;
  final String imageUrl;
  // final String owner;
  // final String playlistId;

  PlaylistSearch({
    required this.name,
    required this.imageUrl,
    // required this.owner,
    // required this.playlistId,
  });

  factory PlaylistSearch.fromJson(Map<String, dynamic> json) {
    return PlaylistSearch(
      name: json['name'],
      imageUrl: json['images'][0]['url'],
      // owner: json['owner']['display_name'],
      // playlistId: json['id'],
    );
  }
}

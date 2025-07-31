class PlaylistSearch {
  final String name;
  final String imageUrl;

  PlaylistSearch({required this.name, required this.imageUrl});

  factory PlaylistSearch.fromJson(Map<String, dynamic> json) {
    return PlaylistSearch(
      name: json['name'],
      imageUrl: json['images'][0]['url'],
    );
  }
}

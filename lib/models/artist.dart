class Artist {
  final String name;
  //final String id;
  final String imageUrl;
  final String imageUrl2;
  // final String genres;
  // final String followers;
  // final String popularity;

  Artist({
    required this.name,
    required this.imageUrl,
    required this.imageUrl2,
    // required this.id,
    // required this.genres,
    // required this.followers,
    // required this.popularity,
  });

  factory Artist.fromJson(Map<String, dynamic> json) {
    return Artist(
      name: json['name'] ?? 'unknown artist',
      imageUrl: json['images'][0]['url'],
      imageUrl2: json['images'][2]['url'],
      // artist: json['artists'][0]['name'],
      // albumId: json['id'],
      // tracks: List<String>.from(
      //   json['tracks']['items'].map((track) => track['name']),
      // ),
    );
  }
}

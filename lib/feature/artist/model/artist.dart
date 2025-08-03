class Artist {
  final String name;

  final String imageUrl;
  final String imageUrl2;

  Artist({required this.name, required this.imageUrl, required this.imageUrl2});

  factory Artist.fromJson(Map<String, dynamic> json) {
    return Artist(
      name: json['name'] ?? 'unknown artist',
      imageUrl: json['images'][0]['url'],
      imageUrl2: json['images'][2]['url'],
    );
  }
}

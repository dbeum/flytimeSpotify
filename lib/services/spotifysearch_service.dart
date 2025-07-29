import 'dart:convert';
import 'package:flytime_spotify/models/album.dart';
import 'package:flytime_spotify/models/artist.dart';
import 'package:http/http.dart' as http;

class SpotifyService {
  final String clientId = 'b3f7cf98ad38409da78c1c48ab50a2b8';
  final String clientSecret = '7dc3dff694f04249a97fbf5abfd87645';

  Future<String> _getToken() async {
    final creds = base64Encode(utf8.encode('$clientId:$clientSecret'));
    final res = await http.post(
      Uri.parse('https://accounts.spotify.com/api/token'),
      headers: {
        'Authorization': 'Basic $creds',
        'Content-Type': 'application/x-www-form-urlencoded',
      },
      body: {'grant_type': 'client_credentials'},
    );
    if (res.statusCode == 200) {
      return jsonDecode(res.body)['access_token'];
    } else {
      throw Exception('Failed to get token');
    }
  }

  Future<Album> fetchAlbumById(String albumId) async {
    final token = await _getToken();
    final res = await http.get(
      Uri.parse('https://api.spotify.com/v1/albums/$albumId'),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (res.statusCode == 200) {
      final albumJson = jsonDecode(res.body);
      // print(jsonEncode(albumJson));
      return Album.fromJson(albumJson);
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<Artist> fetchArtistById(String artistId) async {
    final token = await _getToken();
    final res = await http.get(
      Uri.parse('https://api.spotify.com/v1/artists/$artistId'),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (res.statusCode == 200) {
      final artistJson = jsonDecode(res.body);
      // print(jsonEncode(albumJson));
      return Artist.fromJson(artistJson);
    } else {
      throw Exception('Failed to load artist');
    }
  }

  Future<List<Album>> searchAlbums(String query) async {
    final token = await _getToken();
    final res = await http.get(
      Uri.parse(
        'https://api.spotify.com/v1/search?q=$query&type=album&limit=20',
      ),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (res.statusCode == 200) {
      final jsonResult = jsonDecode(res.body);
      final albumsJson = jsonResult['albums']['items'] as List<dynamic>;

      // Convert each album json to Album model (you might want a smaller model for search)
      return albumsJson.map((albumJson) {
        return Album(
          name: albumJson['name'] ?? 'Unknown',
          imageUrl:
              (albumJson['images'] != null && albumJson['images'].isNotEmpty)
              ? albumJson['images'][0]['url']
              : '',
          artist:
              (albumJson['artists'] != null && albumJson['artists'].isNotEmpty)
              ? albumJson['artists'][0]['name']
              : 'Unknown Artist',
          albumId: albumJson['id'] ?? '',
          tracks:
              [], // search results don't contain track info, keep empty here
        );
      }).toList();
    } else {
      throw Exception('Failed to search albums');
    }
  }

  Future<List<Artist>> searchArtists(String query) async {
    final token = await _getToken();
    final res = await http.get(
      Uri.parse(
        'https://api.spotify.com/v1/search?q=$query&type=artist&limit=20',
      ),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (res.statusCode == 200) {
      final jsonResult = jsonDecode(res.body);
      final artistsJson = jsonResult['artists']['items'] as List<dynamic>;

      return artistsJson.map((artistJson) {
        return Artist.fromJson(artistJson);
      }).toList();
    } else {
      throw Exception('Failed to search artists');
    }
  }
}

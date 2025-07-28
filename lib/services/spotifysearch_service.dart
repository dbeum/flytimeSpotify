import 'dart:convert';
import 'package:flytime_spotify/models/albumsearch.dart';
import 'package:flytime_spotify/models/playlistsearch.dart';
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

  Future<Map<String, dynamic>> search(String query) async {
    final token = await _getToken();
    final encodedQuery = Uri.encodeComponent(query);
    final res = await http.get(
      Uri.parse(
        'https://api.spotify.com/v1/search?q=$encodedQuery&type=album,playlist&limit=10',
      ),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (res.statusCode == 200) {
      final data = jsonDecode(res.body);

      final albums = (data['albums']['items'] as List)
          .map((item) => AlbumSearch.fromJson(item))
          .toList();

      final playlists = (data['playlists']['items'] as List)
          .map((item) => PlaylistSearch.fromJson(item))
          .toList();

      return {'albums': albums, 'playlists': playlists};
    } else {
      print('Search failed: ${res.statusCode}');
      print(res.body);
      throw Exception('Failed to search');
    }
  }
}

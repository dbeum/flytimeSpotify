import 'dart:convert';
import 'package:flytime_spotify/models/album.dart';
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
}

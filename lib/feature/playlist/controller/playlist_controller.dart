import 'package:flutter/material.dart';
import 'package:flytime_spotify/feature/playlist/model/playlist_model.dart';
import 'package:flytime_spotify/services/spotifyplaylist_service.dart';
import 'package:palette_generator/palette_generator.dart';

class PlaylistController with ChangeNotifier {
  late Future<PlaylistModel> _playlistFuture;
  Future<PlaylistModel> get playlistFuture => _playlistFuture;

  Color _topColor = Colors.black;

  Color get topColor => _topColor;

  @override
  void callOnInit(String playlistId) {
    _playlistFuture = SpotifyService().fetchPlaylistById(playlistId);
    _playlistFuture.then((album) {
      _updatePalette(album.imageUrl);
    });
  }

  Future<void> _updatePalette(String imageUrl) async {
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(
          NetworkImage(imageUrl),
          size: const Size(200, 200),
          maximumColorCount: 5,
        );

    _topColor = paletteGenerator.dominantColor?.color ?? Colors.brown;
    notifyListeners();
  }
}

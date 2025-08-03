import 'package:flutter/material.dart';
import 'package:flytime_spotify/feature/album/model/album_model.dart';
import 'package:flytime_spotify/services/spotify_service.dart';
import 'package:palette_generator/palette_generator.dart';

class AlbumController with ChangeNotifier {
  late Future<AlbumModel> _albumFuture;
  Future<AlbumModel> get albumFuture => _albumFuture;

  Color _topColor = Colors.black;
  Color get topColor => _topColor;

  @override
  void callOnInit(String albumId) {
    _albumFuture = SpotifyService().fetchAlbumById(albumId);
    _albumFuture.then((album) {
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

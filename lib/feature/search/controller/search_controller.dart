import 'package:flutter/widgets.dart';
import 'package:flytime_spotify/feature/album/model/album_model.dart';
import 'package:flytime_spotify/services/spotifysearch_service.dart';

class SearchingController with ChangeNotifier {
  final TextEditingController _controller = TextEditingController();
  TextEditingController get searchingcontroller => _controller;

  List<AlbumModel> _searchResults = [];
  List<AlbumModel> get searchResults => _searchResults;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? error;
  void search(String query) async {
    if (query.isEmpty) return;

    _isLoading = true;
    error = null;
    notifyListeners();

    try {
      final results = await SpotifyService().searchAlbums(query);

      _searchResults = results;
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

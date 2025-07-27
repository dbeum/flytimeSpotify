import 'package:flutter_test/flutter_test.dart';
import 'package:flytime_spotify/providers/selectedartist.dart';

void main() {
  group('SelectedArtistProvider', () {
    test('initial state should be false for all section', () {
      final provider = Selectedartistprovider();
      expect(provider.isselected, false);
      // provider.toggleSelected();
      expect(provider.isselected2, false);
      //  provider.toggleSelected();
      expect(provider.isselected10, false);
      expect(provider.selectedCount, 0);
    });

    test('toggleSelected should change for every selected', () {
      final provider = Selectedartistprovider();
      expect(provider.isselected, false);
      provider.toggleSelected();
      expect(provider.isselected, true);
      expect(provider.selectedCount, 1);
      provider.toggleSelected();
      expect(provider.isselected, false);
      expect(provider.selectedCount, 0);
    });
    test('mutiple toggles should update correctly', () {
      final provider = Selectedartistprovider();
      expect(provider.isselected, false);
      expect(provider.isselected2, false);
      expect(provider.isselected4, false);
      provider.toggleSelected();
      provider.toggleSelected2();

      expect(provider.selectedCount, 2);
      provider.toggleSelected4();
      expect(provider.selectedCount, 3);

      expect(provider.isselected, true);
      expect(provider.isselected2, true);
      expect(provider.isselected4, true);
    });
  });
}

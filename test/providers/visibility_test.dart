import 'package:flutter_test/flutter_test.dart';
import 'package:flytime_spotify/providers/visibility.dart';

void main() {
  test('visibilityprovider works correctly', () {
    final provider = passwordVisibilityProvider();
    //arrange
    expect(provider.isvisible, true);
    //act
    provider.togglevisibily();
    //assert
    expect(provider.isvisible, false);
  });
}

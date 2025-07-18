import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flytime_spotify/providers/visibility.dart';
import 'package:flytime_spotify/signup/signup1.dart';
import 'package:flytime_spotify/signup/signup2.dart';
import 'package:provider/provider.dart';

void main() async {
  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });

  //build widget
  testWidgets('test signup1', (WidgetTester tester) async {
    final navigationObserver = NavigatorObserver();
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => passwordVisibilityProvider(),
        child: MaterialApp(
          home: const signup1(),
          navigatorObservers: [navigationObserver],
        ),
      ),
    );
    //check email text
    expect(find.text('What\s your email?'), findsOneWidget);
    //check email field
    expect(find.byKey(Key('emailField')), findsOneWidget);
    //input email
    await tester.enterText(find.byKey(Key('emailField')), 'text@gmail.com');
    //check if email is inputted
    expect(find.text('text@gmail.com'), findsOneWidget);
    //check next button
    expect(find.byKey(Key('nextButton')), findsOneWidget);
    //tap next button
    await tester.tap(find.byKey(Key('nextButton')));
    //rebuild widget
    await tester.pumpAndSettle();

    //check if next page is displayed
    expect(find.text('Create a password?'), findsOneWidget);
  });
}

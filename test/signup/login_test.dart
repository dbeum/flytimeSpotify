import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flytime_spotify/signup/login.dart';

void main() {
  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });
  testWidgets('Login ui', (WidgetTester tester) async {
    //build the login widget with a fake asset bundle to prevent asset loading errors
    await tester.pumpWidget(MaterialApp(home: Login()));

    //CHECK IF THE LOGIN WIDGET IS DISPLAYED
    expect(find.text('Continue with email'), findsOneWidget);

    //check if logo is displayed
    expect(find.image(AssetImage('assets/images/logo.png')), findsOneWidget);
    //check if main text is displayed
    expect(find.text('Login to Spotify'), findsOneWidget);

    //check if google icon is displayed
    expect(find.byIcon(Icons.mail_outline), findsOneWidget);

    //check if continue with email button is displayed
    expect(find.byType(Container), findsNWidgets(5));
  });
}

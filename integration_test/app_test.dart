import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flytime_spotify/main.dart' as app;
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group('Testing the entire app first time flow', () {
    testWidgets('flow test', (tester) async {
      app.main();
      await tester.pumpAndSettle();
    });
    testWidgets('login flow', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      //check if sign up free and login buttons are there
      expect(find.byKey(Key('signupButton')), findsOneWidget);
      expect(find.text('Sign up free'), findsOneWidget);
      expect(find.byKey(Key('loginButton')), findsOneWidget);

      //tap signup button
      await tester.tap(find.byKey(Key('signupButton')));
      await tester.pumpAndSettle();

      //click on continue with email
      expect(find.text('Continue with email'), findsOneWidget);
      await tester.tap(find.byKey(Key('continuewithemailButton')));
      await tester.pumpAndSettle();
      //write email
      expect(find.text('Whats your email?'), findsOneWidget);
      await tester.enterText(find.byKey(Key('emailField')), 'test@example.com');
      expect(find.text('test@example.com'), findsOneWidget);
      await tester.tap(find.byKey(Key('nextButton')));
      await tester.pumpAndSettle();

      //input password
      expect(find.text('Create a password?'), findsOneWidget);
      await tester.enterText(find.byKey(Key('passwordField')), 'password123');
      expect(find.text('password123'), findsOneWidget);
      await tester.tap(find.byKey(Key('nextButton2')));
      await tester.pumpAndSettle();

      //select gender
      expect(find.text('Whats your gender?'), findsOneWidget);
      await tester.tap(find.byKey(Key('genderField')));
      await tester.pumpAndSettle();
      expect(find.text('Male'), findsOneWidget);

      await tester.tap(find.text('Male'));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('nextButton3')));
      await tester.pumpAndSettle();

      //choose dob
      expect(find.text('What\'s your date of birth?'), findsOneWidget);
      await tester.tap(find.byKey(Key('dateField')));
      await tester.pumpAndSettle();
      await tester.tap(find.text('1'));
      await tester.pumpAndSettle();
      await tester.tap(find.text('OK'));
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(Key('nextButton4')));
      await tester.pumpAndSettle();

      //name page
      expect(find.text('What\'s your name?'), findsOneWidget);
      await tester.enterText(find.byKey(Key('nameField')), 'JOHN');
      expect(find.text('JOHN'), findsOneWidget);
      await tester.tap(find.byKey(Key('checkbox1')));
      await tester.tap(find.byKey(Key('checkbox2')));
      await tester.tap(find.byKey(Key('nextButton5')));
      await tester.pump();
    });
  });
}

// login_page_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flytime_spotify/auth_mock.dart';
import 'package:flytime_spotify/login_page.dart';
import 'package:mocktail/mocktail.dart';

void main() {
  late MockAuthService mockAuth;

  setUp(() {
    mockAuth = MockAuthService();
  });

  testWidgets('displays success message on successful login', (
    WidgetTester tester,
  ) async {
    when(
      () => mockAuth.login('user@test.com', 'password123'),
    ).thenAnswer((_) async => true);

    await tester.pumpWidget(
      MaterialApp(home: LoginPage(authService: mockAuth)),
    );

    await tester.enterText(
      find.byKey(const Key('emailField')),
      'user@test.com',
    );
    await tester.enterText(
      find.byKey(const Key('passwordField')),
      'password123',
    );

    await tester.tap(find.byKey(const Key('loginButton')));

    // Start the async login call
    await tester.pump();

    // Show CircularProgressIndicator
    // expect(find.byType(CircularProgressIndicator), findsOneWidget);

    // Wait for async operation to finish
    await tester.pumpAndSettle();

    // Verify success message
    expect(find.text('Login successful!'), findsOneWidget);

    verify(() => mockAuth.login('user@test.com', 'password123')).called(1);
  });

  testWidgets('displays failure message on failed login', (
    WidgetTester tester,
  ) async {
    when(() => mockAuth.login(any(), any())).thenAnswer((_) async => false);

    await tester.pumpWidget(
      MaterialApp(home: LoginPage(authService: mockAuth)),
    );

    await tester.enterText(
      find.byKey(const Key('emailField')),
      'wrong@test.com',
    );
    await tester.enterText(find.byKey(const Key('passwordField')), 'wrongpass');

    await tester.tap(find.byKey(const Key('loginButton')));
    await tester.pump();

    expect(find.byType(CircularProgressIndicator), findsOneWidget);

    await tester.pumpAndSettle();

    expect(find.text('Login failed!'), findsOneWidget);

    verify(() => mockAuth.login('wrong@test.com', 'wrongpass')).called(1);
  });
}

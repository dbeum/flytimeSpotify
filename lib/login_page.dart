// login_page.dart
import 'package:flutter/material.dart';
import 'auth.dart';

class LoginPage extends StatefulWidget {
  final AuthService authService;

  const LoginPage({super.key, required this.authService});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String _message = '';
  bool _loading = false;

  Future<void> _login() async {
    setState(() {
      _loading = true;
      _message = '';
    });

    final email = _emailController.text;
    final password = _passwordController.text;

    final success = await widget.authService.login(email, password);

    setState(() {
      _loading = false;
      _message = success ? 'Login successful!' : 'Login failed!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              key: const Key('emailField'),
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              key: const Key('passwordField'),
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            _loading
                ? const CircularProgressIndicator()
                : ElevatedButton(
                    key: const Key('loginButton'),
                    onPressed: _login,
                    child: const Text('Login'),
                  ),
            const SizedBox(height: 20),
            Text(
              _message,
              key: const Key('messageText'),
              style: TextStyle(
                color: _message == 'Login successful!'
                    ? Colors.green
                    : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

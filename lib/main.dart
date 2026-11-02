import 'package:flutter/material.dart';

void main() => runApp(const CampusMarketApp());

// The blue from the school logo. Change this one line if you want a slightly different shade.
const Color schoolBlue = Color(0xFF1F3F9E);
const Color schoolYellow = Color(0xFFF4D31B);

class CampusMarketApp extends StatelessWidget {
  const CampusMarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bingham Campus Cart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: schoolBlue),
        scaffoldBackgroundColor: schoolBlue,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // School logo (shows the graduation cap if logo.png isn't found)
                  Center(
                    child: Image.asset(
                      'assets/logo.png',
                      height: 120,
                      errorBuilder: (context, error, stack) => const Icon(
                        Icons.school,
                        size: 96,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Website name
                  const Text(
                    'Bingham Campus Cart',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Motto
                  const Text(
                    'Everything you need here on campus',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 48),

                  // Greeting
                  const Text(
                    'Welcome back',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Oval login button
                  SizedBox(
                    height: 54,
                    child: FilledButton(
                      onPressed: () {
                        // TODO: go to your login screen / connect your real login
                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: schoolYellow,
                        foregroundColor: Colors.black87,
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Log in',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Oval create account button
                  SizedBox(
                    height: 54,
                    child: OutlinedButton(
                      onPressed: () {
                        // TODO: go to your sign-up screen
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        side: const BorderSide(color: Colors.white, width: 2),
                        shape: const StadiumBorder(),
                      ),
                      child: const Text(
                        'Create account',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

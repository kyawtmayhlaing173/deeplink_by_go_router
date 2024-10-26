import 'package:flutter/material.dart';

class PageFourWidget extends StatefulWidget {
  const PageFourWidget({super.key});

  @override
  State<PageFourWidget> createState() => _PageFourWidgetState();
}

class _PageFourWidgetState extends State<PageFourWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                'Welcome to Page Four',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 16),
              Image.network(
                  'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExdm1zMThuajY0bDJvbnYwem52dG01YWRxbG14ZTZlbnRiZmFha3hoYiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/d1E1szXDsHUs3WvK/giphy.gif'),
              const SizedBox(height: 24),
              ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(
                      context,
                      (route) => route.settings.name == 'pageOne',
                    );
                  },
                  child: const Text('Go back to page 1')),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(
                      context,
                      (route) => route.settings.name == 'pageTwo',
                    );
                  },
                  child: const Text('Go back to page 2')),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    Navigator.popUntil(
                      context,
                      (route) => route.settings.name == 'pageThree',
                    );
                  },
                  child: const Text('Go back to page 3')),
            ],
          ),
        ),
      ),
    );
  }
}

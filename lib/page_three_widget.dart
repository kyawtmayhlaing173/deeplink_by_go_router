import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageThreeWidget extends StatefulWidget {
  const PageThreeWidget({required this.deeplinkType, super.key});
  final String deeplinkType;

  @override
  State<PageThreeWidget> createState() => _PageThreeWidgetState();
}

class _PageThreeWidgetState extends State<PageThreeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                'Welcome to Page Three',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  height: 1.7,
                ),
              ),
              Text(
                '(Opened via deeplink using ${widget.deeplinkType})',
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.7,
                ),
              ),
              const SizedBox(height: 16),
              Image.network(
                  'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExcXl2dHlzcjQzbDQ0bGE3dnJ2MGpvbm1ubTdtemF1bXd3d2VzZXlzZCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l0EwYkyU1JCExVquc/giphy.gif'),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    context.pushNamed('pageFour');
                  },
                  child: const Text('Go to Page Four')),
            ],
          ),
        ),
      ),
    );
  }
}

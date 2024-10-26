import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageTwoWidget extends StatefulWidget {
  const PageTwoWidget({super.key});

  @override
  State<PageTwoWidget> createState() => _PageTwoWidgetState();
}

class _PageTwoWidgetState extends State<PageTwoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                'Welcome to Page Two',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 16),
              Image.network(
                  'https://i.giphy.com/media/v1.Y2lkPTc5MGI3NjExMTcyMnpkcXJncW45MzdwZDdoN2JtaTQ2eG50YXphYmp0ZmQ3bHRncSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/26gsqQxPQXHBiBEUU/giphy.gif'),
              const SizedBox(height: 16),
              ElevatedButton(
                  onPressed: () {
                    context.pushNamed('pageThree',
                        pathParameters: {'type': 'GoRouter'});
                  },
                  child: const Text('Go to Page Three')),
            ],
          ),
        ),
      ),
    );
  }
}

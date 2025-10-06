import 'package:flutter/material.dart';
class ScreenA extends StatelessWidget {
  const ScreenA({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen A")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/screenB');
          },
          child: const Text("Go to Screen B"),
        ),
      ),
    );
  }
}
class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen B")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/screenC');
          },
          child: const Text("Go to Screen C"),
        ),
      ),
    );
  }
}
class ScreenC extends StatelessWidget {
  const ScreenC({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Screen C")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // goes back
          },
          child: const Text("Back to Screen B"),
        ),
      ),
    );
  }
}

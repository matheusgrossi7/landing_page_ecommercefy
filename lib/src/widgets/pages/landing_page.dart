import 'package:flutter/material.dart';

import '../../src_exports.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          FirstBlock(),
        ],
      ),
    );
  }
}

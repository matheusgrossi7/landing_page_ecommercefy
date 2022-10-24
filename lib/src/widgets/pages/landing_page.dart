import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../src_exports.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({
    super.key,
    required this.leadSource,
  });

  final String leadSource;

  @override
  Widget build(BuildContext context) {
    AppStore appStore = Modular.get<AppStore>();
    appStore.storeSession(leadSource);
    return Scaffold(
      body: ListView(
        children: const [
          LandingPageBlock0(),
          LandingPageBlock1(),
          LandingPageBlock2(),
          LandingPageBlock3(),
          LandingPageBlock4(),
          LandingPageBlock5(),
          LandingPageBlock6(),
        ],
      ),
    );
  }
}

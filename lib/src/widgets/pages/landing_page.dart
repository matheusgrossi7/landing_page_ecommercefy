import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

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
    LandingPageStore landingPageStore = Modular.get<LandingPageStore>();
    appStore.storeSession(leadSource);
    const List<Widget> blocks = [
      LandingPageBlock0(),
      LandingPageBlock1(),
      LandingPageBlock2(),
      LandingPageBlock3(),
      LandingPageBlock4(),
      LandingPageBlock5(),
      LandingPageBlock6(),
    ];
    return Scaffold(
      body: AppResponsiveness.isRunningOnSmartphoneOrTablet
          ? ListView(
              children: blocks,
            )
          : WebSmoothScroll(
              animationDuration: 300,
              scrollOffset: 128,
              curve: Curves.decelerate,
              controller: landingPageStore.scrollController,
              child: SingleChildScrollView(
                controller: landingPageStore.scrollController,
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: blocks,
                ),
              ),
            ),
    );
  }
}

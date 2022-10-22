import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../src_exports.dart';

class LandingPageBlock1 extends StatelessWidget {
  const LandingPageBlock1({super.key});

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final LandingPageStore landingPageStore = Modular.get<LandingPageStore>();
    final double spaceBetweenListItems =
        AppResponsiveness.getMarginSize(context);
    return BlockStructure(
      isChildOnFirstHalfInLargeWindow: true,
      color: Theme.of(context).scaffoldBackgroundColor,
      title: appStrings.components_LandingPage_Block1_Title,
      caption: appStrings.components_LandingPage_Block1_Subtitle,
      childHeight: 256 + 3 * spaceBetweenListItems,
      isChildOnFirstHalfInNonLargeWindow: true,
      child: Observer(
        builder: (context) {
          if (landingPageStore.initialVideoId == null) {
            return const CircularProgressIndicator();
          } else {
            return AppYoutubePlayer(
              initialVideoId: landingPageStore.initialVideoId!,
            );
          }
        },
      ),
    );
  }
}

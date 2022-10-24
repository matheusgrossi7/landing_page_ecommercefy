import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../src_exports.dart';

class NothingFoundPage extends StatelessWidget {
  const NothingFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final ThemeData appTheme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              appStrings.pages_NothingFoundPage_Message,
              textAlign: TextAlign.center,
              style: appTheme.textTheme.headline4,
            ),
            const SizedBox(
              height: 64,
            ),
            CTAButton(
              label: appStrings.pages_NothingFoundPage_MainActionButton,
              onPressedFunction: () => Modular.to.navigate(
                AppModule.landingPageRouteName,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

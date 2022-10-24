import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../src_exports.dart';

class CTAButton extends StatelessWidget {
  const CTAButton({
    Key? key,
    this.label,
    this.onPressedFunction,
  }) : super(key: key);

  final String? label;
  final Function? onPressedFunction;

  @override
  Widget build(BuildContext context) {
    LandingPageStore landingPageStore = Modular.get<LandingPageStore>();
    final S appStrings = S.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      onPressed: onPressedFunction != null
          ? () => onPressedFunction!()
          : () {
              Scrollable.ensureVisible(
                landingPageStore.block5GlobalKey.currentContext!,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Text(
          onPressedFunction != null
              ? label!
              : appStrings.components_CtaButton_MainActionText,
        ),
      ),
    );
  }
}

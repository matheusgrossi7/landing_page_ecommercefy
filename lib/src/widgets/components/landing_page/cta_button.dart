import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

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
    final S appStrings = S.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      onPressed: onPressedFunction != null
          ? () => onPressedFunction!()
          : () {
              // TODO: implement cta scroll function
            },
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Text(
          onPressedFunction != null
              ? label!
              : appStrings.components_LandingPage_CtaButton_MainActionText,
        ),
      ),
    );
  }
}

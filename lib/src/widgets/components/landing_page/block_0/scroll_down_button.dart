import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

import '../../../../../generated/l10n.dart';

class ScrollDownButton extends StatefulWidget {
  const ScrollDownButton({Key? key}) : super(key: key);

  @override
  State<ScrollDownButton> createState() => _ScrollDownButtonState();
}

class _ScrollDownButtonState extends State<ScrollDownButton> {
  int animationCounter = 0;
  Control control = Control.play;

  Future<void> _toggleDirection() async {
    if (control == Control.play) {
      control = Control.playReverse;
    } else if (animationCounter < 1) {
      control = Control.play;
      animationCounter++;
    } else {
      await Future.delayed(const Duration(seconds: 5));
      control = Control.play;
      animationCounter = 0;
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final ThemeData appTheme = Theme.of(context);
    return CustomAnimationBuilder<double>(
      control: control,
      onCompleted: () async => await _toggleDirection(),
      tween: Tween<double>(begin: 0, end: 16),
      curve: Curves.easeIn,
      delay: const Duration(seconds: 5),
      duration: const Duration(milliseconds: 150),
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, value),
          child: child,
        );
      },
      child: IconButton(
        tooltip:
            appStrings.components_LandingPage_Block0_ScrollDownButton_Tooltip,
        onPressed: () {
          // TODO: implement function
        },
        icon: Icon(
          Icons.keyboard_double_arrow_down_rounded,
          size: 48,
          color: appTheme.colorScheme.onPrimary,
        ),
      ),
    );
  }
}

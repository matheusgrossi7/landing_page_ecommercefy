import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../src_exports.dart';

class PlanRecurrenceToggle extends StatelessWidget {
  const PlanRecurrenceToggle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final ThemeData appTheme = Theme.of(context);
    final LandingPageStore landingPageStore = Modular.get<LandingPageStore>();
    return Card(
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: AppResponsiveness.isRunningOnMobileWeb
            ? const EdgeInsets.symmetric(horizontal: 4)
            : const EdgeInsets.all(4),
        child: Observer(
          builder: (context) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: landingPageStore.isYearlyRecurrencePlan
                        ? Colors.transparent
                        : appTheme.colorScheme.secondary,
                    foregroundColor: appTheme.colorScheme.onSurface,
                  ),
                  onPressed: () =>
                      landingPageStore.toggleIsYearlyRecurrencePlan(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      appStrings
                          .components_LandingPage_Block5_PlanToggleButton_Option1Monthly,
                      style: appTheme.textTheme.labelLarge,
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: landingPageStore.isYearlyRecurrencePlan
                        ? appTheme.colorScheme.secondary
                        : Colors.transparent,
                    foregroundColor: appTheme.colorScheme.onSurface,
                  ),
                  onPressed: () =>
                      landingPageStore.toggleIsYearlyRecurrencePlan(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      appStrings
                          .components_LandingPage_Block5_PlanToggleButton_Option2Yearly,
                      style: appTheme.textTheme.labelLarge,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

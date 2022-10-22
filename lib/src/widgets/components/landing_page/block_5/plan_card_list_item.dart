import 'package:flutter/material.dart';

import '../../../../src_exports.dart';

class PlanCardListItem extends StatelessWidget {
  const PlanCardListItem({
    Key? key,
    this.knowMoreText,
    required this.label,
  }) : super(key: key);

  final String label;
  final String? knowMoreText;

  void selectPlan() {}

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final ThemeData appTheme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: appTheme.colorScheme.secondary,
          ),
          child: const Icon(
            Icons.check_rounded,
            size: 12,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Flexible(
          child: Text(
            label,
            style: appTheme.textTheme.labelLarge,
          ),
        ),
        if (knowMoreText != null)
          SizedBox.square(
            dimension: 24,
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 2,
                left: 2,
              ),
              child: Tooltip(
                message: appStrings
                    .components_LandingPage_Block5_PlanCard_KnowMoreButton_Tooltip,
                child: InkWell(
                  borderRadius: BorderRadius.circular(32),
                  onTap: () => showDialog(
                    context: context,
                    builder: (context) => KnowMoreDialog(
                      title: label,
                      bodyText: knowMoreText!,
                    ),
                  ),
                  child: Icon(
                    Icons.help_outline_rounded,
                    size: 16,
                    color: appTheme.colorScheme.primary,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

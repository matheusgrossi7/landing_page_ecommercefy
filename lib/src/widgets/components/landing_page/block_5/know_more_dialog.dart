import 'package:flutter/material.dart';

import '../../../../src_exports.dart';

class KnowMoreDialog extends StatelessWidget {
  const KnowMoreDialog({
    Key? key,
    required this.title,
    required this.bodyText,
  }) : super(key: key);

  final String title;
  final String bodyText;

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    return AlertDialog(
      title: Text(title.replaceAll(".", "")),
      content: SizedBox(
        width: AppResponsiveness.getPlanCardWidth(context),
        child: Text(bodyText),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            appStrings
                .components_LandingPage_Block5_KnowMoreDialog_PopActionText,
          ),
        ),
      ],
    );
  }
}

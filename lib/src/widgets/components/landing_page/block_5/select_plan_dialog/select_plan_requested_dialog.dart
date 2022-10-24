import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import '../../../../../src_exports.dart';

class SelectPlanRequestedDialog extends StatelessWidget {
  const SelectPlanRequestedDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final SelectPlanDialogStore dialogStore =
        Modular.get<SelectPlanDialogStore>();
    return AlertDialog(
      title: Text(
        appStrings
            .components_LandingPage_Block5_SelectPlanDialog_RequestedDialog_Title(
          StringUtils.getFirstName(
            dialogStore.leadName,
          ),
        ),
      ),
      content: SizedBox(
        width: AppResponsiveness.getPlanCardWidth(context),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              appStrings
                  .components_LandingPage_Block5_SelectPlanDialog_RequestedDialog_content1,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              appStrings
                  .components_LandingPage_Block5_SelectPlanDialog_RequestedDialog_content2,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            appStrings
                .components_LandingPage_Block5_SelectPlanDialog_RequestedDialog_DismissButton,
          ),
        ),
        CTAButton(
          label: appStrings
              .components_LandingPage_Block5_SelectPlanDialog_RequestedDialog_MainActionButton,
          onPressedFunction: () {
            Navigator.pop(context);
            html.window.open(AppLinks.googleForms, "_self");
          },
        ),
      ],
    );
  }
}

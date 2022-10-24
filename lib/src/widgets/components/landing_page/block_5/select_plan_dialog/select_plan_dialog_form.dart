import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import '../../../../../src_exports.dart';

class SelectPlanDialogForm extends StatelessWidget {
  const SelectPlanDialogForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final SelectPlanDialogStore dialogStore =
        Modular.get<SelectPlanDialogStore>();
    return Observer(
      builder: (context) {
        return Column(
          children: [
            TextField(
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                filled: true,
                labelText: appStrings
                    .components_LandingPage_Block5_SelectPlanDialog_Form_NameTextField_Label,
                helperText: appStrings
                    .components_LandingPage_Block5_SelectPlanDialog_Form_NameTextField_HelperText,
                errorText: dialogStore.hasToShowNameFieldError
                    ? appStrings
                        .components_LandingPage_Block5_SelectPlanDialog_Form_NameTextField_HelperText
                    : null,
              ),
              onChanged: (value) => dialogStore.setLeadName(value),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              textCapitalization: TextCapitalization.none,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                filled: true,
                labelText: appStrings
                    .components_LandingPage_Block5_SelectPlanDialog_Form_EmailTextField_Label,
                helperText: appStrings
                    .components_LandingPage_Block5_SelectPlanDialog_Form_EmailTextField_HelperText,
                errorText: dialogStore.hasToShowEmailFieldError
                    ? appStrings
                        .components_LandingPage_Block5_SelectPlanDialog_Form_EmailTextField_ErrorText
                    : null,
              ),
              onChanged: (value) => dialogStore.setLeadEmail(value),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Checkbox(
                  fillColor: dialogStore.hasToShowPrivacyPolicyError
                      ? MaterialStateColor.resolveWith(
                          (states) => Theme.of(context).colorScheme.error,
                        )
                      : MaterialStateColor.resolveWith(
                          (states) {
                            if (states.contains(MaterialState.selected)) {
                              return Theme.of(context).colorScheme.primary;
                            } else {
                              return Theme.of(context).unselectedWidgetColor;
                            }
                          },
                        ),
                  value: dialogStore.isPrivacyPolicyAccepted,
                  onChanged: (_) => dialogStore.toggleIsPrivacyPolicyAccepted(),
                ),
                const SizedBox(
                  height: 16,
                ),
                RichText(
                  text: TextSpan(
                    text: appStrings
                        .components_LandingPage_Block5_SelectPlanDialog_Form_PrivacyPoliceCheck_Part1,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: dialogStore.hasToShowPrivacyPolicyError
                              ? Theme.of(context).colorScheme.error
                              : null,
                        ),
                    children: [
                      TextSpan(
                        text: appStrings
                            .components_LandingPage_Block5_SelectPlanDialog_Form_PrivacyPoliceCheck_Part2,
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => html.window
                              .open(AppLinks.privacyPolicy, "_blank"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}

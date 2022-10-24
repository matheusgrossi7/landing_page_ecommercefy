import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../src_exports.dart';

class SelectPlanFormDialog extends StatelessWidget {
  const SelectPlanFormDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final AppStore appStore = Modular.get<AppStore>();
    final SelectPlanDialogStore dialogStore =
        Modular.get<SelectPlanDialogStore>();
    return AlertDialog(
      scrollable: true,
      title: Text(
        appStrings
            .components_LandingPage_Block5_SelectPlanDialog_FormDialog_Title(
                dialogStore.planType.planName),
      ),
      content: SizedBox(
        width: AppResponsiveness.getPlanCardWidth(context),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              appStrings
                  .components_LandingPage_Block5_SelectPlanDialog_FormDialog_Subtitle,
            ),
            const SizedBox(
              height: 16,
            ),
            const SelectPlanDialogForm(),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            appStrings
                .components_LandingPage_Block5_SelectPlanDialog_FormDialog_DismissButton,
          ),
        ),
        CTAButton(
          label: appStrings
              .components_LandingPage_Block5_SelectPlanDialog_FormDialog_MainActionButton,
          onPressedFunction: () => dialogStore.requestForm(
            RequestAccessEvent(
              id: StringUtils.generateId(),
              sessionId: appStore.session.id,
              dateTime: DateTime.now(),
              leadName: dialogStore.leadName,
              leadEmail: dialogStore.leadEmail,
            ),
          ),
        ),
      ],
    );
  }
}

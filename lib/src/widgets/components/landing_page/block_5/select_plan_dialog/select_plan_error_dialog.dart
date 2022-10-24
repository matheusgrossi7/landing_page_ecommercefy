import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../src_exports.dart';

class SelectPlanErrorDialog extends StatelessWidget {
  const SelectPlanErrorDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final SelectPlanDialogStore dialogStore =
        Modular.get<SelectPlanDialogStore>();
    return AlertDialog(
      title: Text(
        appStrings
            .components_LandingPage_Block5_SelectPlanDialog_ErrorDialog_Title,
      ),
      content: Text(
        appStrings
            .components_LandingPage_Block5_SelectPlanDialog_ErrorDialog_Content,
      ),
      actions: [
        TextButton(
          onPressed: () =>
              dialogStore.setDialogState(SelectPlanDialogState.filingForm),
          child: Text(
            appStrings
                .components_LandingPage_Block5_SelectPlanDialog_ErrorDialog_MainActinoButton,
          ),
        ),
      ],
    );
  }
}

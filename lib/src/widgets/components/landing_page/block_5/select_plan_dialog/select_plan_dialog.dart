import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../src_exports.dart';

class SelectPlanDialog extends StatelessWidget {
  const SelectPlanDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final SelectPlanDialogStore dialogStore =
        Modular.get<SelectPlanDialogStore>();
    return Observer(
      builder: (context) {
        switch (dialogStore.dialogState) {
          case SelectPlanDialogState.filingForm:
            return const SelectPlanFormDialog();
          case SelectPlanDialogState.loading:
            return const SelectPlanLoadingDialog();
          case SelectPlanDialogState.planRequested:
            return const SelectPlanRequestedDialog();
          case SelectPlanDialogState.error:
            return const SelectPlanErrorDialog();
        }
      },
    );
  }
}

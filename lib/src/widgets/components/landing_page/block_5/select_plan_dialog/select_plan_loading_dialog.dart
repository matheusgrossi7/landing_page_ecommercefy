import 'package:flutter/material.dart';

import '../../../../../src_exports.dart';

class SelectPlanLoadingDialog extends StatelessWidget {
  const SelectPlanLoadingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    return AlertDialog(
      title: Text(
        appStrings
            .components_LandingPage_Block5_SelectPlanDialog_LoadingDialog_Title,
      ),
      content: SizedBox(
        width: AppResponsiveness.getPlanCardWidth(context),
        height: 356,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

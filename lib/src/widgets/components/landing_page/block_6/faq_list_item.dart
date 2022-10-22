import 'package:flutter/material.dart';

import '../../../../src_exports.dart';

class FaqListItem extends StatelessWidget {
  const FaqListItem({
    Key? key,
    required this.question,
    required this.answer,
  }) : super(key: key);

  final String question;
  final String answer;

  @override
  Widget build(BuildContext context) {
    final double marginSize = AppResponsiveness.getMarginSize(context);
    return Card(
      child: Padding(
        padding: EdgeInsets.all(marginSize),
        child: Column(
          children: [
            Row(
              children: [
                Flexible(
                  child: Text(
                    question,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: marginSize / 4,
            ),
            const Divider(),
            SizedBox(
              height: marginSize / 4,
            ),
            Row(
              children: [
                Flexible(
                  child: SelectableText(
                    answer,
                    style: Theme.of(context).textTheme.bodyMedium,
                    toolbarOptions: const ToolbarOptions(
                      copy: true,
                      selectAll: true,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

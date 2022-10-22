import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';

class Block0AppBar extends StatelessWidget {
  const Block0AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    return SizedBox(
      height: 64,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              width: 16,
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: implement function
              },
              child: const Text(''),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../src_exports.dart';

class ChangeLocaleButton extends StatelessWidget {
  const ChangeLocaleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final AppStore appStore = Modular.get<AppStore>();
    return PopupMenuButton(
      //TODO:
      tooltip: 'TODO:',
      onSelected: (value) => appStore.setLocale(
        AppLocales.supportedLocales[value],
      ),
      child: Text(
        AppLocales.getLocaleName(appStore.locale.toLanguageTag()),
        style: Theme.of(context).textTheme.button!.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            ),
      ),
      itemBuilder: (context) {
        return <PopupMenuEntry>[
          PopupMenuItem(
            value: 0,
            textStyle: Theme.of(context).textTheme.button!.copyWith(
                  color: appStore.locale != AppLocales.supportedLocales[0]
                      ? null
                      : Theme.of(context).colorScheme.primary,
                ),
            child: const Text('intl.language_name_en'),
          ),
          PopupMenuItem(
            value: 1,
            textStyle: Theme.of(context).textTheme.button!.copyWith(
                  color: appStore.locale != AppLocales.supportedLocales[1]
                      ? null
                      : Theme.of(context).colorScheme.primary,
                ),
            child: const Text('intl.language_name_pt_BR'),
          ),
        ];
      },
    );
  }
}

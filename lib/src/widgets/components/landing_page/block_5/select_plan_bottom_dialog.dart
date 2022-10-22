import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

import '../../../../src_exports.dart';

class SelectPlanDialog extends StatelessWidget {
  const SelectPlanDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    return AlertDialog(
      scrollable: true,
      title: Text('Solicitar Plano Starter'),
      content: SizedBox(
        width: AppResponsiveness.getPlanCardWidth(context),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
                'Se você deseja ter acesso à plataforma, preencha os campos abaixo para que possamos entrar em contato.'),
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
            'Cancelar',
          ),
        ),
        CTAButton(
          label: 'Solicitar',
          onPressedFunction: () {},
        ),
      ],
    );
  }
}

class SelectPlanDialogForm extends StatelessWidget {
  const SelectPlanDialogForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            filled: true,
            labelText: 'Nome',
            helperText: 'Digite o seu nome.',
            helperMaxLines: 3,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        TextField(
          decoration: InputDecoration(
            filled: true,
            labelText: 'E-mail',
            helperText: 'Digite o seu e-mail.',
            helperMaxLines: 3,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Checkbox(
              value: false,
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 16,
            ),
            RichText(
              text: TextSpan(
                text: "Aceitar a ",
                children: [
                  TextSpan(
                    text: 'política de privacidade.',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () =>
                          html.window.open(AppLinks.privacyPolicy, "_blank"),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

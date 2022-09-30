import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../src_exports.dart';

class FirstBlock extends StatelessWidget {
  const FirstBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final double landingPageBlockHeight =
        AppResponsiveness.getLandingPageBlockHeight(context);
    return Container(
      height: landingPageBlockHeight,
      color: Theme.of(context).colorScheme.primary,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 96),
            child: Image.asset("assets/images/half_store_front.png"),
          ),
          Center(
            child: SizedBox(
              width: AppResponsiveness.landingPageBlockContentMaxWidth,
              child: Column(
                children: [
                  SizedBox(
                    height: landingPageBlockHeight / 4.8,
                    width: landingPageBlockHeight / 1.2,
                    child: Image.asset(
                      "assets/images/ecommercefy_logo_2000px.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

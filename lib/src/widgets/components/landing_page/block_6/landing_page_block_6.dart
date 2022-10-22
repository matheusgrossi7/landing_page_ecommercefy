import 'package:flutter/material.dart';

import '../../../../src_exports.dart';

class LandingPageBlock6 extends StatelessWidget {
  const LandingPageBlock6({super.key});

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final ThemeData appTheme = Theme.of(context);
    final WindowSize windowSize = AppResponsiveness.getWindowSize(context);
    final double marginSize = AppResponsiveness.getMarginSize(context);
    final double blockStructureHorizontalPaddingAmount =
        AppResponsiveness.getBlockStructureHorizontalPaddingAmount(
      context,
    );
    final double dMarginSize =
        windowSize == WindowSize.large ? marginSize : marginSize * 2;
    final double spaceHeightBetweenItens =
        windowSize == WindowSize.large ? dMarginSize * 2 : dMarginSize;
    return Container(
      width: MediaQuery.of(context).size.width,
      color: appTheme.scaffoldBackgroundColor,
      child: Padding(
        padding: EdgeInsets.only(
          top: windowSize == WindowSize.large ? dMarginSize * 2 : dMarginSize,
          bottom: dMarginSize,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                blockStructureHorizontalPaddingAmount,
                marginSize,
                blockStructureHorizontalPaddingAmount,
                0,
              ),
              child: Text(
                appStrings.components_LandingPage_Block6_Title,
                style: windowSize == WindowSize.large
                    ? appTheme.textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      )
                    : appTheme.textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
              ),
            ),
            SizedBox(
              height: spaceHeightBetweenItens,
            ),
            Padding(
              padding: windowSize == WindowSize.large
                  ? EdgeInsets.zero
                  : EdgeInsets.symmetric(
                      horizontal: AppResponsiveness
                          .getBlockStructureHorizontalPaddingAmount(
                        context,
                      ),
                    ),
              child: SizedBox(
                width: AppResponsiveness.landingPageBlockContentMaxWidth,
                child: Row(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FaqListItem(
                            question: appStrings
                                .components_LandingPage_Block6_FaqListItem1_Question,
                            answer: appStrings
                                .components_LandingPage_Block6_FaqListItem1_Answer,
                          ),
                          SizedBox(
                            height: marginSize,
                          ),
                          FaqListItem(
                            question: appStrings
                                .components_LandingPage_Block6_FaqListItem2_Question,
                            answer: appStrings
                                .components_LandingPage_Block6_FaqListItem2_Answer,
                          ),
                          SizedBox(
                            height: marginSize,
                          ),
                          FaqListItem(
                            question: appStrings
                                .components_LandingPage_Block6_FaqListItem3_Question,
                            answer: appStrings
                                .components_LandingPage_Block6_FaqListItem3_Answer,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: spaceHeightBetweenItens,
            ),
            SelectableText(
              '${appStrings.appName} | ${appStrings.appContactEmail}',
              style: appTheme.textTheme.caption,
              toolbarOptions: const ToolbarOptions(
                copy: true,
                selectAll: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

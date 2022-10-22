import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:landing_page_ecommercefy/src/src_exports.dart';

class PlansList extends StatelessWidget {
  const PlansList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final LandingPageStore landingPageStore = Modular.get<LandingPageStore>();
    final double cardWidth = AppResponsiveness.getPlanCardWidth(context);
    final double marginSize = AppResponsiveness.getMarginSize(context);
    final double horizontalPaddingAmount =
        AppResponsiveness.getBlockStructureHorizontalPaddingAmount(
      context,
    );
    final List<PlanCardListItem> commonsListItens = [
      PlanCardListItem(
        label:
            appStrings.components_LandingPage_Block5_PlanListItem_CommonItem_1,
      ),
      PlanCardListItem(
        label:
            appStrings.components_LandingPage_Block5_PlanListItem_CommonItem_2,
      ),
      PlanCardListItem(
        label:
            appStrings.components_LandingPage_Block5_PlanListItem_CommonItem_3,
        knowMoreText: appStrings
            .components_LandingPage_Block5_PlanListItem_CommonItem_3_MoreInfo,
      ),
      PlanCardListItem(
        label:
            appStrings.components_LandingPage_Block5_PlanListItem_CommonItem_4,
      ),
      PlanCardListItem(
        label:
            appStrings.components_LandingPage_Block5_PlanListItem_CommonItem_5,
      ),
    ];
    final List<PlanCardListItem> plan1And2CardListItens = [
      PlanCardListItem(
        label: appStrings
            .components_LandingPage_Block5_PlanListItem_Plan2And3CommonItem_StoresAmount,
        knowMoreText: appStrings
            .components_LandingPage_Block5_PlanListItem_StoresAmount_MoreInfo,
      ),
      PlanCardListItem(
        label: appStrings
            .components_LandingPage_Block5_PlanListItem_Plan2And3CommonItem_CollaboratorsAmount,
        knowMoreText: appStrings
            .components_LandingPage_Block5_PlanListItem_CollaboratorsAmount_MoreInfo,
      ),
      ...commonsListItens,
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Observer(builder: (context) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: horizontalPaddingAmount,
            ),
            PlanCard(
              isStarterPlan: true,
              width: cardWidth,
              planTitle:
                  appStrings.components_LandingPage_Block5_PlanCard_Plan1_Title,
              planPrice: landingPageStore.starterPlanPrice,
              planSubtitle: landingPageStore.isYearlyRecurrencePlan
                  ? appStrings
                      .components_LandingPage_Block5_PlanCard_Plan1_YearlySubtitle
                  : appStrings
                      .components_LandingPage_Block5_PlanCard_Plan1_MonthlySubtitle,
              planListItens: [
                PlanCardListItem(
                  label: appStrings
                      .components_LandingPage_Block5_Plan1ListItem_MaxProductsAmount(
                          landingPageStore.starterPlanMaxProductsAmount,
                          landingPageStore.starterPlanPrice ?? ''),
                ),
                PlanCardListItem(
                  label: appStrings
                      .components_LandingPage_Block5_Plan1ListItem_StoresAmount(
                    landingPageStore.starterPlanMaxStoresAmount,
                  ),
                  knowMoreText: appStrings
                      .components_LandingPage_Block5_PlanListItem_StoresAmount_MoreInfo,
                ),
                PlanCardListItem(
                  label: appStrings
                      .components_LandingPage_Block5_Plan1ListItem_CollaboratorsAmount,
                  knowMoreText: appStrings
                      .components_LandingPage_Block5_PlanListItem_CollaboratorsAmount_MoreInfo,
                ),
                ...commonsListItens,
              ],
            ),
            SizedBox(
              width: marginSize,
            ),
            PlanCard(
              width: cardWidth,
              planTitle:
                  appStrings.components_LandingPage_Block5_PlanCard_Plan2_Title,
              planSubtitle: landingPageStore.isYearlyRecurrencePlan
                  ? appStrings
                      .components_LandingPage_Block5_PlanCard_Plan2And3_YearlySubtitle
                  : appStrings
                      .components_LandingPage_Block5_PlanCard_Plan2And3_MonthlySubtitle,
              planPrice: landingPageStore.growthPlanPrice,
              planListItens: [
                PlanCardListItem(
                  label: appStrings
                      .components_LandingPage_Block5_PlanListItem_Plan2And3CommonItem_MaxProductsAmount(
                    landingPageStore.growthPlanMaxProductsAmount,
                  ),
                  knowMoreText: appStrings
                      .components_LandingPage_Block5_Plan1ListItem_MaxProductsAmount_MoreInfo,
                ),
                ...plan1And2CardListItens,
              ],
            ),
            SizedBox(
              width: marginSize,
            ),
            PlanCard(
              width: cardWidth,
              planTitle:
                  appStrings.components_LandingPage_Block5_PlanCard_Plan3_Title,
              planSubtitle: landingPageStore.isYearlyRecurrencePlan
                  ? appStrings
                      .components_LandingPage_Block5_PlanCard_Plan2And3_YearlySubtitle
                  : appStrings
                      .components_LandingPage_Block5_PlanCard_Plan2And3_MonthlySubtitle,
              planPrice: landingPageStore.scalePlanPrice,
              planListItens: [
                PlanCardListItem(
                  label: appStrings
                      .components_LandingPage_Block5_PlanListItem_Plan2And3CommonItem_MaxProductsAmount(
                    landingPageStore.scalePlanMaxProductsAmount,
                  ),
                  knowMoreText: appStrings
                      .components_LandingPage_Block5_Plan1ListItem_MaxProductsAmount_MoreInfo,
                ),
                ...plan1And2CardListItens,
              ],
            ),
            SizedBox(
              width: horizontalPaddingAmount,
            ),
          ],
        );
      }),
    );
  }
}

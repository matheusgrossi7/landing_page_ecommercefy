import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../src_exports.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({
    Key? key,
    required this.planPrice,
    required this.width,
    required this.planListItens,
    required this.planTitle,
    required this.planSubtitle,
    required this.planType,
  }) : super(key: key);

  final double width;
  final List<PlanCardListItem> planListItens;
  final String planTitle;
  final String planSubtitle;
  final String? planPrice;
  final PlanType planType;

  void _selectPlan({
    required BuildContext context,
    required LandingPageStore landingPageStore,
    required AppStore appStore,
  }) {
    final SelectPlanDialogStore selectPlanDialogStore =
        Modular.get<SelectPlanDialogStore>();
    selectPlanDialogStore.setPlanType(planType);
    landingPageStore.saveSelectPlanEvent(
      SelectPlanEvent(
        id: StringUtils.generateId(),
        sessionId: appStore.session.id,
        dateTime: DateTime.now(),
        planType: planType.planName,
        isYearlyRecurrence: landingPageStore.isYearlyRecurrencePlan,
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => const SelectPlanDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final S appStrings = S.of(context);
    final AppStore appStore = Modular.get<AppStore>();
    final LandingPageStore landingPageStore = Modular.get<LandingPageStore>();
    final ThemeData appTheme = Theme.of(context);
    final bool isStarterPlan = planType == PlanType.starter;
    final double marginSize = AppResponsiveness.getMarginSize(context);
    const double spaceBetweenColumnWidgets = 16;
    return Card(
      margin: EdgeInsets.zero,
      child: SizedBox(
        width: width,
        child: Padding(
          padding: EdgeInsets.all(marginSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                planTitle,
                style: appTheme.textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: spaceBetweenColumnWidgets / 2,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(
                    child: Text(
                      planPrice == null
                          ? '${AppCurrency.getCurrencyLabel(appStore.currencyLocale)}0'
                          : planPrice!,
                      style: appTheme.textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: appTheme.colorScheme.onSurface,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 4, left: 4),
                      child: Text(
                        isStarterPlan
                            ? appStrings
                                .components_LandingPage_Block5_PlanCard_Plan1_PriceComplement
                            : appStrings
                                .components_LandingPage_Block5_PlanCard_Plan2And3_PriceComplement,
                        style: appTheme.textTheme.labelSmall,
                      ),
                    ),
                  ),
                  isStarterPlan
                      ? SizedBox.square(
                          dimension: 24,
                          child: Tooltip(
                            message: appStrings
                                .components_LandingPage_Block5_PlanCard_KnowMoreButton_Tooltip,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(32),
                              onTap: () => showDialog(
                                context: context,
                                builder: (context) => KnowMoreDialog(
                                  title: appStrings
                                      .components_LandingPage_Block5_PlanCard_Plan1_PriceComplement_KnowMore_Title,
                                  bodyText: appStrings
                                      .components_LandingPage_Block5_PlanCard_Plan1_PriceComplement_KnowMore_BodyText(
                                    landingPageStore
                                        .starterPlanMaxProductsAmount,
                                    landingPageStore.starterPlanPrice ?? "",
                                  ),
                                ),
                              ),
                              child: Icon(
                                Icons.help_outline_rounded,
                                size: 16,
                                color: appTheme.colorScheme.primary,
                              ),
                            ),
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              ),
              const SizedBox(
                height: spaceBetweenColumnWidgets / 2,
              ),
              Text(
                planSubtitle,
                style: appTheme.textTheme.labelSmall,
              ),
              const SizedBox(
                height: spaceBetweenColumnWidgets,
              ),
              const Divider(),
              const SizedBox(
                height: spaceBetweenColumnWidgets,
              ),
              ...planListItens
                  .map(
                    (Widget item) => Padding(
                      padding: const EdgeInsets.only(
                        bottom: spaceBetweenColumnWidgets,
                      ),
                      child: item,
                    ),
                  )
                  .toList(),
              const SizedBox(
                height: spaceBetweenColumnWidgets,
              ),
              Row(
                children: [
                  const Spacer(),
                  CTAButton(
                    label: appStrings
                        .components_LandingPage_Block5_PlanCard_SelectButtonText,
                    onPressedFunction: () => _selectPlan(
                      context: context,
                      appStore: appStore,
                      landingPageStore: landingPageStore,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

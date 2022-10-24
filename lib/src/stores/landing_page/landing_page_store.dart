import 'package:mobx/mobx.dart';

import '../../src_exports.dart';

part 'landing_page_store.g.dart';

// ignore: library_private_types_in_public_api
class LandingPageStore = _LandingPageStore with _$LandingPageStore;

abstract class _LandingPageStore with Store {
  _LandingPageStore({
    required this.storage,
    required this.appStore,
  }) {
    getPlanPricesValue();
    storage
        .getLandingPageYouTubeVideoId(locale: appStore.currencyLocale)
        .then((value) => initialVideoId = value);
  }

  @action
  void getPlanPricesValue() {
    starterPlanPriceValue = null;
    growthPlanPriceValue = null;
    scalePlanPriceValue = null;
    storage
        .getStarterPlanPrice(
          locale: appStore.currencyLocale,
          isYearly: isYearlyRecurrencePlan,
        )
        .then(
          (value) => starterPlanPriceValue = value,
        );
    storage
        .getGrowthPlanPrice(
          locale: appStore.currencyLocale,
          isYearly: isYearlyRecurrencePlan,
        )
        .then(
          (value) => growthPlanPriceValue = value,
        );
    storage
        .getScalePlanPrice(
          locale: appStore.currencyLocale,
          isYearly: isYearlyRecurrencePlan,
        )
        .then(
          (value) => scalePlanPriceValue = value,
        );
  }

  final AppStore appStore;
  final Storage storage;

  void saveSelectPlanEvent(SelectPlanEvent event) {
    storage.saveSelectPlanEvent(event);
  }

  @observable
  String? initialVideoId;

  @observable
  int starterPlanMaxProductsAmount = 25;

  @observable
  int starterPlanMaxStoresAmount = 2;

  @observable
  int growthPlanMaxProductsAmount = 100;

  @observable
  int scalePlanMaxProductsAmount = 1000;

  @observable
  bool isYearlyRecurrencePlan = false;

  @action
  void toggleIsYearlyRecurrencePlan() {
    isYearlyRecurrencePlan = !isYearlyRecurrencePlan;
    getPlanPricesValue();
  }

  @observable
  double? starterPlanPriceValue;

  @observable
  double? growthPlanPriceValue;

  @observable
  double? scalePlanPriceValue;

  @computed
  String? get starterPlanPrice => starterPlanPriceValue == null
      ? null
      : AppCurrency.getPriceString(
          currencyLabel: AppCurrency.getCurrencyLabel(appStore.currencyLocale),
          priceValue: starterPlanPriceValue!,
        );

  @computed
  String? get growthPlanPrice => starterPlanPriceValue == null
      ? null
      : AppCurrency.getPriceString(
          currencyLabel: AppCurrency.getCurrencyLabel(appStore.currencyLocale),
          priceValue: growthPlanPriceValue!,
        );

  @computed
  String? get scalePlanPrice => starterPlanPriceValue == null
      ? null
      : AppCurrency.getPriceString(
          currencyLabel: AppCurrency.getCurrencyLabel(appStore.currencyLocale),
          priceValue: scalePlanPriceValue!,
        );
}

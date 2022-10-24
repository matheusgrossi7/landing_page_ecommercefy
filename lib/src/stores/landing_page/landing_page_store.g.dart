// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'landing_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LandingPageStore on _LandingPageStore, Store {
  Computed<String?>? _$starterPlanPriceComputed;

  @override
  String? get starterPlanPrice => (_$starterPlanPriceComputed ??=
          Computed<String?>(() => super.starterPlanPrice,
              name: '_LandingPageStore.starterPlanPrice'))
      .value;
  Computed<String?>? _$growthPlanPriceComputed;

  @override
  String? get growthPlanPrice => (_$growthPlanPriceComputed ??=
          Computed<String?>(() => super.growthPlanPrice,
              name: '_LandingPageStore.growthPlanPrice'))
      .value;
  Computed<String?>? _$scalePlanPriceComputed;

  @override
  String? get scalePlanPrice => (_$scalePlanPriceComputed ??= Computed<String?>(
          () => super.scalePlanPrice,
          name: '_LandingPageStore.scalePlanPrice'))
      .value;

  late final _$initialVideoIdAtom =
      Atom(name: '_LandingPageStore.initialVideoId', context: context);

  @override
  String? get initialVideoId {
    _$initialVideoIdAtom.reportRead();
    return super.initialVideoId;
  }

  @override
  set initialVideoId(String? value) {
    _$initialVideoIdAtom.reportWrite(value, super.initialVideoId, () {
      super.initialVideoId = value;
    });
  }

  late final _$starterPlanMaxProductsAmountAtom = Atom(
      name: '_LandingPageStore.starterPlanMaxProductsAmount', context: context);

  @override
  int get starterPlanMaxProductsAmount {
    _$starterPlanMaxProductsAmountAtom.reportRead();
    return super.starterPlanMaxProductsAmount;
  }

  @override
  set starterPlanMaxProductsAmount(int value) {
    _$starterPlanMaxProductsAmountAtom
        .reportWrite(value, super.starterPlanMaxProductsAmount, () {
      super.starterPlanMaxProductsAmount = value;
    });
  }

  late final _$starterPlanMaxStoresAmountAtom = Atom(
      name: '_LandingPageStore.starterPlanMaxStoresAmount', context: context);

  @override
  int get starterPlanMaxStoresAmount {
    _$starterPlanMaxStoresAmountAtom.reportRead();
    return super.starterPlanMaxStoresAmount;
  }

  @override
  set starterPlanMaxStoresAmount(int value) {
    _$starterPlanMaxStoresAmountAtom
        .reportWrite(value, super.starterPlanMaxStoresAmount, () {
      super.starterPlanMaxStoresAmount = value;
    });
  }

  late final _$growthPlanMaxProductsAmountAtom = Atom(
      name: '_LandingPageStore.growthPlanMaxProductsAmount', context: context);

  @override
  int get growthPlanMaxProductsAmount {
    _$growthPlanMaxProductsAmountAtom.reportRead();
    return super.growthPlanMaxProductsAmount;
  }

  @override
  set growthPlanMaxProductsAmount(int value) {
    _$growthPlanMaxProductsAmountAtom
        .reportWrite(value, super.growthPlanMaxProductsAmount, () {
      super.growthPlanMaxProductsAmount = value;
    });
  }

  late final _$scalePlanMaxProductsAmountAtom = Atom(
      name: '_LandingPageStore.scalePlanMaxProductsAmount', context: context);

  @override
  int get scalePlanMaxProductsAmount {
    _$scalePlanMaxProductsAmountAtom.reportRead();
    return super.scalePlanMaxProductsAmount;
  }

  @override
  set scalePlanMaxProductsAmount(int value) {
    _$scalePlanMaxProductsAmountAtom
        .reportWrite(value, super.scalePlanMaxProductsAmount, () {
      super.scalePlanMaxProductsAmount = value;
    });
  }

  late final _$isYearlyRecurrencePlanAtom =
      Atom(name: '_LandingPageStore.isYearlyRecurrencePlan', context: context);

  @override
  bool get isYearlyRecurrencePlan {
    _$isYearlyRecurrencePlanAtom.reportRead();
    return super.isYearlyRecurrencePlan;
  }

  @override
  set isYearlyRecurrencePlan(bool value) {
    _$isYearlyRecurrencePlanAtom
        .reportWrite(value, super.isYearlyRecurrencePlan, () {
      super.isYearlyRecurrencePlan = value;
    });
  }

  late final _$starterPlanPriceValueAtom =
      Atom(name: '_LandingPageStore.starterPlanPriceValue', context: context);

  @override
  double? get starterPlanPriceValue {
    _$starterPlanPriceValueAtom.reportRead();
    return super.starterPlanPriceValue;
  }

  @override
  set starterPlanPriceValue(double? value) {
    _$starterPlanPriceValueAtom.reportWrite(value, super.starterPlanPriceValue,
        () {
      super.starterPlanPriceValue = value;
    });
  }

  late final _$growthPlanPriceValueAtom =
      Atom(name: '_LandingPageStore.growthPlanPriceValue', context: context);

  @override
  double? get growthPlanPriceValue {
    _$growthPlanPriceValueAtom.reportRead();
    return super.growthPlanPriceValue;
  }

  @override
  set growthPlanPriceValue(double? value) {
    _$growthPlanPriceValueAtom.reportWrite(value, super.growthPlanPriceValue,
        () {
      super.growthPlanPriceValue = value;
    });
  }

  late final _$scalePlanPriceValueAtom =
      Atom(name: '_LandingPageStore.scalePlanPriceValue', context: context);

  @override
  double? get scalePlanPriceValue {
    _$scalePlanPriceValueAtom.reportRead();
    return super.scalePlanPriceValue;
  }

  @override
  set scalePlanPriceValue(double? value) {
    _$scalePlanPriceValueAtom.reportWrite(value, super.scalePlanPriceValue, () {
      super.scalePlanPriceValue = value;
    });
  }

  late final _$_LandingPageStoreActionController =
      ActionController(name: '_LandingPageStore', context: context);

  @override
  void getPlanPricesValue() {
    final _$actionInfo = _$_LandingPageStoreActionController.startAction(
        name: '_LandingPageStore.getPlanPricesValue');
    try {
      return super.getPlanPricesValue();
    } finally {
      _$_LandingPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleIsYearlyRecurrencePlan() {
    final _$actionInfo = _$_LandingPageStoreActionController.startAction(
        name: '_LandingPageStore.toggleIsYearlyRecurrencePlan');
    try {
      return super.toggleIsYearlyRecurrencePlan();
    } finally {
      _$_LandingPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
initialVideoId: ${initialVideoId},
starterPlanMaxProductsAmount: ${starterPlanMaxProductsAmount},
starterPlanMaxStoresAmount: ${starterPlanMaxStoresAmount},
growthPlanMaxProductsAmount: ${growthPlanMaxProductsAmount},
scalePlanMaxProductsAmount: ${scalePlanMaxProductsAmount},
isYearlyRecurrencePlan: ${isYearlyRecurrencePlan},
starterPlanPriceValue: ${starterPlanPriceValue},
growthPlanPriceValue: ${growthPlanPriceValue},
scalePlanPriceValue: ${scalePlanPriceValue},
starterPlanPrice: ${starterPlanPrice},
growthPlanPrice: ${growthPlanPrice},
scalePlanPrice: ${scalePlanPrice}
    ''';
  }
}

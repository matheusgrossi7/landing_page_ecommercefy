// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_plan_dialog_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SelectPlanDialogStore on _SelectPlanDialogStore, Store {
  late final _$dialogStateAtom =
      Atom(name: '_SelectPlanDialogStore.dialogState', context: context);

  @override
  SelectPlanDialogState get dialogState {
    _$dialogStateAtom.reportRead();
    return super.dialogState;
  }

  @override
  set dialogState(SelectPlanDialogState value) {
    _$dialogStateAtom.reportWrite(value, super.dialogState, () {
      super.dialogState = value;
    });
  }

  late final _$hasToShowPrivacyPolicyErrorAtom = Atom(
      name: '_SelectPlanDialogStore.hasToShowPrivacyPolicyError',
      context: context);

  @override
  bool get hasToShowPrivacyPolicyError {
    _$hasToShowPrivacyPolicyErrorAtom.reportRead();
    return super.hasToShowPrivacyPolicyError;
  }

  @override
  set hasToShowPrivacyPolicyError(bool value) {
    _$hasToShowPrivacyPolicyErrorAtom
        .reportWrite(value, super.hasToShowPrivacyPolicyError, () {
      super.hasToShowPrivacyPolicyError = value;
    });
  }

  late final _$hasToShowNameFieldErrorAtom = Atom(
      name: '_SelectPlanDialogStore.hasToShowNameFieldError', context: context);

  @override
  bool get hasToShowNameFieldError {
    _$hasToShowNameFieldErrorAtom.reportRead();
    return super.hasToShowNameFieldError;
  }

  @override
  set hasToShowNameFieldError(bool value) {
    _$hasToShowNameFieldErrorAtom
        .reportWrite(value, super.hasToShowNameFieldError, () {
      super.hasToShowNameFieldError = value;
    });
  }

  late final _$hasToShowEmailFieldErrorAtom = Atom(
      name: '_SelectPlanDialogStore.hasToShowEmailFieldError',
      context: context);

  @override
  bool get hasToShowEmailFieldError {
    _$hasToShowEmailFieldErrorAtom.reportRead();
    return super.hasToShowEmailFieldError;
  }

  @override
  set hasToShowEmailFieldError(bool value) {
    _$hasToShowEmailFieldErrorAtom
        .reportWrite(value, super.hasToShowEmailFieldError, () {
      super.hasToShowEmailFieldError = value;
    });
  }

  late final _$planTypeAtom =
      Atom(name: '_SelectPlanDialogStore.planType', context: context);

  @override
  PlanType get planType {
    _$planTypeAtom.reportRead();
    return super.planType;
  }

  @override
  set planType(PlanType value) {
    _$planTypeAtom.reportWrite(value, super.planType, () {
      super.planType = value;
    });
  }

  late final _$isPrivacyPolicyAcceptedAtom = Atom(
      name: '_SelectPlanDialogStore.isPrivacyPolicyAccepted', context: context);

  @override
  bool get isPrivacyPolicyAccepted {
    _$isPrivacyPolicyAcceptedAtom.reportRead();
    return super.isPrivacyPolicyAccepted;
  }

  @override
  set isPrivacyPolicyAccepted(bool value) {
    _$isPrivacyPolicyAcceptedAtom
        .reportWrite(value, super.isPrivacyPolicyAccepted, () {
      super.isPrivacyPolicyAccepted = value;
    });
  }

  late final _$leadNameAtom =
      Atom(name: '_SelectPlanDialogStore.leadName', context: context);

  @override
  String get leadName {
    _$leadNameAtom.reportRead();
    return super.leadName;
  }

  @override
  set leadName(String value) {
    _$leadNameAtom.reportWrite(value, super.leadName, () {
      super.leadName = value;
    });
  }

  late final _$leadEmailAtom =
      Atom(name: '_SelectPlanDialogStore.leadEmail', context: context);

  @override
  String get leadEmail {
    _$leadEmailAtom.reportRead();
    return super.leadEmail;
  }

  @override
  set leadEmail(String value) {
    _$leadEmailAtom.reportWrite(value, super.leadEmail, () {
      super.leadEmail = value;
    });
  }

  late final _$requestFormAsyncAction =
      AsyncAction('_SelectPlanDialogStore.requestForm', context: context);

  @override
  Future<void> requestForm(RequestAccessEvent event) {
    return _$requestFormAsyncAction.run(() => super.requestForm(event));
  }

  late final _$_SelectPlanDialogStoreActionController =
      ActionController(name: '_SelectPlanDialogStore', context: context);

  @override
  bool _validateForm() {
    final _$actionInfo = _$_SelectPlanDialogStoreActionController.startAction(
        name: '_SelectPlanDialogStore._validateForm');
    try {
      return super._validateForm();
    } finally {
      _$_SelectPlanDialogStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDialogState(SelectPlanDialogState newDialogState) {
    final _$actionInfo = _$_SelectPlanDialogStoreActionController.startAction(
        name: '_SelectPlanDialogStore.setDialogState');
    try {
      return super.setDialogState(newDialogState);
    } finally {
      _$_SelectPlanDialogStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPlanType(PlanType newPlanType) {
    final _$actionInfo = _$_SelectPlanDialogStoreActionController.startAction(
        name: '_SelectPlanDialogStore.setPlanType');
    try {
      return super.setPlanType(newPlanType);
    } finally {
      _$_SelectPlanDialogStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleIsPrivacyPolicyAccepted() {
    final _$actionInfo = _$_SelectPlanDialogStoreActionController.startAction(
        name: '_SelectPlanDialogStore.toggleIsPrivacyPolicyAccepted');
    try {
      return super.toggleIsPrivacyPolicyAccepted();
    } finally {
      _$_SelectPlanDialogStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLeadName(String name) {
    final _$actionInfo = _$_SelectPlanDialogStoreActionController.startAction(
        name: '_SelectPlanDialogStore.setLeadName');
    try {
      return super.setLeadName(name);
    } finally {
      _$_SelectPlanDialogStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLeadEmail(String email) {
    final _$actionInfo = _$_SelectPlanDialogStoreActionController.startAction(
        name: '_SelectPlanDialogStore.setLeadEmail');
    try {
      return super.setLeadEmail(email);
    } finally {
      _$_SelectPlanDialogStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dialogState: ${dialogState},
hasToShowPrivacyPolicyError: ${hasToShowPrivacyPolicyError},
hasToShowNameFieldError: ${hasToShowNameFieldError},
hasToShowEmailFieldError: ${hasToShowEmailFieldError},
planType: ${planType},
isPrivacyPolicyAccepted: ${isPrivacyPolicyAccepted},
leadName: ${leadName},
leadEmail: ${leadEmail}
    ''';
  }
}

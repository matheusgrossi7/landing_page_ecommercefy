import 'package:mobx/mobx.dart';

import '../../../src_exports.dart';

part 'select_plan_dialog_store.g.dart';

// ignore: library_private_types_in_public_api
class SelectPlanDialogStore = _SelectPlanDialogStore
    with _$SelectPlanDialogStore;

abstract class _SelectPlanDialogStore with Store {
  _SelectPlanDialogStore(this.storage);

  final Storage storage;

  @action
  bool _validateForm() {
    bool isValidForm = StringUtils.isValidName(leadName) &&
        StringUtils.isValidEmail(leadEmail);
    if (!isPrivacyPolicyAccepted) {
      isValidForm = false;
      hasToShowPrivacyPolicyError = true;
    }
    hasToShowEmailFieldError = !StringUtils.isValidEmail(leadEmail);
    hasToShowNameFieldError = !StringUtils.isValidName(leadName);
    return isValidForm;
  }

  @observable
  SelectPlanDialogState dialogState = SelectPlanDialogState.filingForm;

  @action
  void setDialogState(SelectPlanDialogState newDialogState) {
    if (dialogState != newDialogState) {
      dialogState = newDialogState;
    }
  }

  @observable
  bool hasToShowPrivacyPolicyError = false;

  @observable
  bool hasToShowNameFieldError = false;

  @observable
  bool hasToShowEmailFieldError = false;

  @action
  Future<void> requestForm(RequestAccessEvent event) async {
    if (_validateForm()) {
      dialogState = SelectPlanDialogState.loading;
      await storage.requestAccess(event);
      dialogState = SelectPlanDialogState.planRequested;
    }
  }

  @observable
  PlanType planType = PlanType.unselected;

  @action
  void setPlanType(PlanType newPlanType) {
    if (planType != newPlanType) {
      planType = newPlanType;
    }
  }

  @observable
  bool isPrivacyPolicyAccepted = false;

  @action
  void toggleIsPrivacyPolicyAccepted() {
    isPrivacyPolicyAccepted = !isPrivacyPolicyAccepted;
    if (hasToShowPrivacyPolicyError && isPrivacyPolicyAccepted) {
      hasToShowPrivacyPolicyError = false;
    }
  }

  @observable
  String leadName = "";

  @action
  void setLeadName(String name) {
    if (leadName != name) {
      leadName = StringUtils.clearNameString(name);
    }
  }

  @observable
  String leadEmail = "";

  @action
  void setLeadEmail(String email) {
    if (leadEmail != email) {
      leadEmail = email.trim();
    }
  }
}

import 'package:flutter/material.dart';

final class AuthenticationKeys {
  AuthenticationKeys._();

  static const usernameFieldWD = Key('USERNAME_FIELD_WD');
  static const passwordFieldWD = Key('PASSWORD_FIELD_WD');
  static const loginButtonWD = Key('LOGIN_BUTTON_WD');
}

final class CentralKeys {
  CentralKeys._();

  static const historyButtonNavBarWD = Key('CENTRAL_HISTORY_BOTTOM_NAV_BAR_BUTTON_WD');
}

final class HistoryPageKeys {
  HistoryPageKeys._();

  static Key getEvaluationCardWDKey(String id) => Key('HISTORY_EVA_CARD_WD_ID_$id');
  static const backButtonFromCardPageWD = Key('HISTORY_BACK_BUTT_FOR_CARD_PAGE_WD');
  static const actionBarWD = Key('HISTORY_MENU_EXPANSION_BUTTON_WD');
  static const filterAdjustmentButtonWD = Key('HISTORY_SEARCH_OPTION_BUTTON_WD');
  static const deleteManagementButtonWD = Key('HISTORY_DELETE_MANAGEMENT_BUTTON_WD');
  static const oldestOptionButtonWD = Key('HISTORY_OLDEST_OPTION_BUTTON_WD');
  static const submitOptionButtonWD = Key('HISTORY_SUBMIT_OPTION_BUTTON_WD');
  static const deSelectAllButtonInDelModeWD = Key('HISTORY_SELECT_ALL_BUTTON_IN_DEL_MODE_WD');
  static const deleteButtonInDelModeWD = Key('HISTORY_DELETE_BUTTON_IN_DEL_MODE_WD');
  static const deleteButtonInPopupWD = Key('HISTORY_DELETE_BUTTON_IN_POPUP_WD');
}

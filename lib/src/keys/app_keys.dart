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
}

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../config/config.dart';

part 'central_state.abs.freezed.dart';

@freezed
class CentralState with _$CentralState {
  factory CentralState({
    @Default(1) int currentPage,
    @Default(DesignSystem.g23) Color notchColor,
    @Default(false) bool isOnResult,
    final TabController? tabController,
    final PageController? pageController,
  }) = _CentralState;
}

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'utils/utils.dart';

class ACDALog {
  const ACDALog._();

  static void print({String? message}) {
    log('[⛈️ ${ACDALogConstants.title}]: $message');
  }

  static void printDioExceptionMessage(DioException e) {
    ACDALog.print(message: 'Dio Error -> ${e.error}');
    ACDALog.print(message: 'Dio Message -> ${e.message}');
    ACDALog.print(message: 'Dio URL -> ${e.requestOptions.baseUrl}${e.requestOptions.path}');
    ACDALog.print(message: 'Dio Header -> ${beautifyHeader(e.requestOptions.headers)}');
    // ACDALog.print(message: 'Dio Data -> ${e.requestOptions.data}');
    ACDALog.print(message: 'Dio Response -> ${e.response}');
  }

  static void printDebug({String? message}) {
    debugPrint('[🦊 ${ACDALogConstants.title}]: $message');
  }

  static void printException({Exception? e, String? message}) {
    log('[🦊 ${ACDALogConstants.title} EXCEPTION]: $message');
    log('[🦊 ${ACDALogConstants.title} EXCEPTION]: $e');
  }
}

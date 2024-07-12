import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../config.dart';

class TwilioInterceptor extends Interceptor {
  const TwilioInterceptor();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final authHeader = 'Basic ' +
        base64Encode(utf8.encode('$twilioAccountSid:$twilioAuthToken'));
    options.headers['Authorization'] = authHeader;
    options.headers['Content-Type'] = 'application/x-www-form-urlencoded';
    handler.next(options);
  }
}

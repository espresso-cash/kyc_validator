import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';

import '../../../config.dart';

class SmileInterceptor extends Interceptor {
  const SmileInterceptor();

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final timestamp = DateTime.now().toUtc().toIso8601String();
    final hmac = Hmac(sha256, utf8.encode(smileApiKey));

    final output = AccumulatorSink<Digest>();
    hmac.startChunkedConversion(output)
      ..add(utf8.encode(timestamp))
      ..add(utf8.encode(smilePartnerId))
      ..add(utf8.encode("sid_request"))
      ..close();

    final digest = output.events.single;
    final signature = base64Encode(digest.bytes);

    final payload = {
      "smile_client_id": smilePartnerId,
      "partner_id": smilePartnerId,
      "signature": signature,
      "timestamp": timestamp,
    };

    if (options.method.toLowerCase() == 'post' && options.data is Map) {
      final Map<String, dynamic> data = options.data;
      data.addAll(payload);
      options.data = data;
    }
    handler.next(options);
  }
}

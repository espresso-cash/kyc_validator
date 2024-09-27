import 'package:grpc/grpc.dart';
import 'package:kyc_app_server/configure_app.dart';
import 'package:kyc_app_server/src/features/otp/handler.dart';
import 'package:kyc_app_server/src/features/validator/handler.dart';

Future<void> main(List<String> args) async {
  await configureApp();

  final server = Server.create(
    services: [
      KycEndpoint(),
      OtpEndpoint(),
    ],
    codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  );
  await server.serve(port: 50051);

  print('Server listening on port ${server.port}...');
}

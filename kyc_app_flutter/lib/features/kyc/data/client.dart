import 'package:grpc/grpc.dart';
import 'package:kyc_app_client/kyc_app_client.dart';

final channel = ClientChannel(
  '192.168.3.36',
  port: 50051,
  options: ChannelOptions(
    credentials: const ChannelCredentials.insecure(),
    codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
  ),
);
final kycClient = KycServiceClient(channel);
final otpClient = OtpServiceClient(channel);
final partnerClient = PartnerServiceClient(channel);

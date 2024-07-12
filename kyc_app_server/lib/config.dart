import 'dart:io';

// kyc
final smilePartnerId = Platform.environment['SMILE_PARTNER_ID'] ?? '';
final smileApiKey = Platform.environment['SMILE_API_KEY'] ?? '';
final smileWebhookUrl = Platform.environment['SMILE_WEBHOOK_URL'] ?? '';

// email
final smtpHost = Platform.environment['SMTP_HOST'] ?? '';
const smtpPort = 587;
final smtpUsername = Platform.environment['SMTP_USERNAME'] ?? '';
final smtpPassword = Platform.environment['SMTP_PASSWORD'] ?? '';

// sms
final twilioAccountSid = Platform.environment['TWILIO_ACCOUNT_SID'] ?? '';
final twilioAuthToken = Platform.environment['TWILIO_AUTH_TOKEN'] ?? '';
final twilioNumber = Platform.environment['TWILIO_NUMBER'] ?? '';

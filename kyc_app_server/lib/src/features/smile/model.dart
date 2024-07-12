// ignore_for_file: invalid_annotation_target

import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class InfoData with _$InfoData {
  const InfoData._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory InfoData({
    @Default(PackageInformation()) PackageInformation packageInformation,
    required IdInfo idInfo,
    required List<ImageDto> images,
  }) = _InfoData;

  factory InfoData.fromJson(Map<String, dynamic> json) =>
      _$InfoDataFromJson(json);

  Future<Uint8List> toZip() async {
    String jsonString = jsonEncode(toJson());

    // Get temporary directory
    Directory tempDir = Directory.systemTemp.createTempSync();

    // Create info.json file
    File jsonFile = File('${tempDir.path}/info.json');
    await jsonFile.writeAsString(jsonString);

    // Create zip archive
    final archive = Archive();
    final bytes = await jsonFile.readAsBytes();
    final file = ArchiveFile('info.json', bytes.length, bytes);
    archive.addFile(file);

    // Encode zip file
    final zipData = ZipEncoder().encode(archive);

    if (zipData == null) {
      throw Exception('Failed to encode zip file');
    }

    return Uint8List.fromList(zipData);
  }
}

@freezed
class IdInfo with _$IdInfo {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory IdInfo({
    required String dob,
    required String country,
    required bool entered,
    required String idType,
    required String idNumber,
    required String lastName,
    required String firstName,
    required String middleName,
  }) = _IdInfo;

  factory IdInfo.fromJson(Map<String, dynamic> json) => _$IdInfoFromJson(json);
}

@freezed
class ImageDto with _$ImageDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ImageDto({
    required int imageTypeId,
    @Default("") String image,
    @Default("") String fileName,
  }) = _ImageDto;

  factory ImageDto.fromJson(Map<String, dynamic> json) =>
      _$ImageDtoFromJson(json);
}

@freezed
class PackageInformation with _$PackageInformation {
  const factory PackageInformation({
    @Default(ApiVersion()) ApiVersion apiVersion,
  }) = _PackageInformation;

  factory PackageInformation.fromJson(Map<String, dynamic> json) =>
      _$PackageInformationFromJson(json);
}

@freezed
class ApiVersion with _$ApiVersion {
  const factory ApiVersion({
    @Default(0) int buildNumber,
    @Default(2) int majorVersion,
    @Default(0) int minorVersion,
  }) = _ApiVersion;

  factory ApiVersion.fromJson(Map<String, dynamic> json) =>
      _$ApiVersionFromJson(json);
}

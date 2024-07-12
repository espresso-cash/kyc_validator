// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InfoDataImpl _$$InfoDataImplFromJson(Map<String, dynamic> json) =>
    _$InfoDataImpl(
      packageInformation: json['package_information'] == null
          ? const PackageInformation()
          : PackageInformation.fromJson(
              json['package_information'] as Map<String, dynamic>),
      idInfo: IdInfo.fromJson(json['id_info'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$InfoDataImplToJson(_$InfoDataImpl instance) =>
    <String, dynamic>{
      'package_information': instance.packageInformation,
      'id_info': instance.idInfo,
      'images': instance.images,
    };

_$IdInfoImpl _$$IdInfoImplFromJson(Map<String, dynamic> json) => _$IdInfoImpl(
      dob: json['dob'] as String,
      country: json['country'] as String,
      entered: json['entered'] as bool,
      idType: json['id_type'] as String,
      idNumber: json['id_number'] as String,
      lastName: json['last_name'] as String,
      firstName: json['first_name'] as String,
      middleName: json['middle_name'] as String,
    );

Map<String, dynamic> _$$IdInfoImplToJson(_$IdInfoImpl instance) =>
    <String, dynamic>{
      'dob': instance.dob,
      'country': instance.country,
      'entered': instance.entered,
      'id_type': instance.idType,
      'id_number': instance.idNumber,
      'last_name': instance.lastName,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
    };

_$ImageDtoImpl _$$ImageDtoImplFromJson(Map<String, dynamic> json) =>
    _$ImageDtoImpl(
      imageTypeId: (json['image_type_id'] as num).toInt(),
      image: json['image'] as String? ?? "",
      fileName: json['file_name'] as String? ?? "",
    );

Map<String, dynamic> _$$ImageDtoImplToJson(_$ImageDtoImpl instance) =>
    <String, dynamic>{
      'image_type_id': instance.imageTypeId,
      'image': instance.image,
      'file_name': instance.fileName,
    };

_$PackageInformationImpl _$$PackageInformationImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageInformationImpl(
      apiVersion: json['apiVersion'] == null
          ? const ApiVersion()
          : ApiVersion.fromJson(json['apiVersion'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PackageInformationImplToJson(
        _$PackageInformationImpl instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
    };

_$ApiVersionImpl _$$ApiVersionImplFromJson(Map<String, dynamic> json) =>
    _$ApiVersionImpl(
      buildNumber: (json['buildNumber'] as num?)?.toInt() ?? 0,
      majorVersion: (json['majorVersion'] as num?)?.toInt() ?? 2,
      minorVersion: (json['minorVersion'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$ApiVersionImplToJson(_$ApiVersionImpl instance) =>
    <String, dynamic>{
      'buildNumber': instance.buildNumber,
      'majorVersion': instance.majorVersion,
      'minorVersion': instance.minorVersion,
    };

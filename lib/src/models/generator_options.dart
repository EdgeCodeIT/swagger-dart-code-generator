import 'package:json_annotation/json_annotation.dart';

part 'generator_options.g2.dart';

@JsonSerializable(fieldRename: FieldRename.snake, anyMap: true)
class GeneratorOptions {
  /// Instantiate generator options.
  GeneratorOptions({
    this.withBaseUrl = true,
    this.withConverter = true,
    this.ignoreHeaders = false,
    this.useDefaultNullForLists = false,
    this.buildOnlyModels = false,
    this.defaultValuesMap = const <DefaultValueMap>[],
    this.defaultHeaderValuesMap = const <DefaultHeaderValueMap>[],
    this.responseOverrideValueMap = const <ResponseOverrideValueMap>[],
    required this.inputFolder,
    required this.outputFolder,
    this.enumsCaseSensitive = true,
    this.usePathForRequestNames = false,
    this.useRequiredAttributeForHeaders = true,
    this.useInheritance = true,
    this.includeIfNull,
    this.modelPostfix = '',
  });

  /// Build options from a JSON map.
  factory GeneratorOptions.fromJson(Map<String, dynamic> json) =>
      _$GeneratorOptionsFromJson(json);

  @JsonKey(defaultValue: true)
  final bool withBaseUrl;

  @JsonKey(defaultValue: true)
  final bool withConverter;

  @JsonKey(defaultValue: true)
  final bool useRequiredAttributeForHeaders;

  @JsonKey(defaultValue: false)
  final bool ignoreHeaders;

  @JsonKey(defaultValue: true)
  final bool useInheritance;

  @JsonKey(defaultValue: false)
  final bool enumsCaseSensitive;

  @JsonKey(defaultValue: false)
  final bool usePathForRequestNames;

  @JsonKey(defaultValue: null)
  final IncludeIfNull? includeIfNull;

  @JsonKey(defaultValue: '')
  final String inputFolder;

  @JsonKey(defaultValue: '')
  final String outputFolder;

  @JsonKey(defaultValue: false)
  final bool useDefaultNullForLists;

  @JsonKey(defaultValue: false)
  final bool buildOnlyModels;

  @JsonKey(defaultValue: '')
  final String modelPostfix;

  @JsonKey(defaultValue: <DefaultValueMap>[])
  final List<DefaultValueMap> defaultValuesMap;

  @JsonKey(defaultValue: <DefaultHeaderValueMap>[])
  final List<DefaultHeaderValueMap> defaultHeaderValuesMap;

  @JsonKey(defaultValue: <ResponseOverrideValueMap>[])
  final List<ResponseOverrideValueMap> responseOverrideValueMap;

  /// Convert this options instance to JSON.
  Map<String, dynamic> toJson() => _$GeneratorOptionsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DefaultValueMap {
  DefaultValueMap({required this.typeName, required this.defaultValue});

  /// Build a default value map from a JSON map.
  factory DefaultValueMap.fromJson(Map<String, dynamic> json) =>
      _$DefaultValueMapFromJson(json);

  @JsonKey(defaultValue: '')
  final String typeName;

  @JsonKey(defaultValue: '')
  final String defaultValue;

  /// Convert this default value map instance to JSON.
  Map<String, dynamic> toJson() => _$DefaultValueMapToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class IncludeIfNull {
  IncludeIfNull({required this.enabled, required this.value});

  @JsonKey(defaultValue: false)
  final bool enabled;

  @JsonKey(defaultValue: false)
  final bool value;

  factory IncludeIfNull.fromJson(Map<String, dynamic> json) =>
      _$IncludeIfNullFromJson(json);

  Map<String, dynamic> toJson() => _$IncludeIfNullToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ResponseOverrideValueMap {
  ResponseOverrideValueMap(
      {required this.url, required this.method, required this.overriddenValue});

  /// Build a default value map from a JSON map.
  factory ResponseOverrideValueMap.fromJson(Map<String, dynamic> json) =>
      _$ResponseOverrideValueMapFromJson(json);

  @JsonKey(defaultValue: '')
  final String url;

  @JsonKey(defaultValue: '')
  final String method;

  @JsonKey(defaultValue: '')
  final String overriddenValue;

  /// Convert this default value map instance to JSON.
  Map<String, dynamic> toJson() => _$ResponseOverrideValueMapToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DefaultHeaderValueMap {
  DefaultHeaderValueMap({required this.headerName, required this.defaultValue});

  @JsonKey(defaultValue: '')
  final String headerName;

  @JsonKey(defaultValue: '')
  final String defaultValue;

  Map<String, dynamic> toJson() => _$DefaultHeaderValueMapToJson(this);

  factory DefaultHeaderValueMap.fromJson(Map<String, dynamic> json) =>
      _$DefaultHeaderValueMapFromJson(json);
}

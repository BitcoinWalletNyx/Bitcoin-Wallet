// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swapping_assets_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SwappingAssetsRecord> _$swappingAssetsRecordSerializer =
    new _$SwappingAssetsRecordSerializer();

class _$SwappingAssetsRecordSerializer
    implements StructuredSerializer<SwappingAssetsRecord> {
  @override
  final Iterable<Type> types = const [
    SwappingAssetsRecord,
    _$SwappingAssetsRecord
  ];
  @override
  final String wireName = 'SwappingAssetsRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SwappingAssetsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.assetName;
    if (value != null) {
      result
        ..add('assetName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.assetImage;
    if (value != null) {
      result
        ..add('assetImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.assetBigSymbol;
    if (value != null) {
      result
        ..add('assetBigSymbol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.assetSmallSymbol;
    if (value != null) {
      result
        ..add('assetSmallSymbol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.assetNetwork;
    if (value != null) {
      result
        ..add('assetNetwork')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.assetNumber;
    if (value != null) {
      result
        ..add('assetNumber')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  SwappingAssetsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SwappingAssetsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'assetName':
          result.assetName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'assetImage':
          result.assetImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'assetBigSymbol':
          result.assetBigSymbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'assetSmallSymbol':
          result.assetSmallSymbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'assetNetwork':
          result.assetNetwork = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'assetNumber':
          result.assetNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$SwappingAssetsRecord extends SwappingAssetsRecord {
  @override
  final String assetName;
  @override
  final String assetImage;
  @override
  final String assetBigSymbol;
  @override
  final String assetSmallSymbol;
  @override
  final String assetNetwork;
  @override
  final int assetNumber;
  @override
  final DocumentReference<Object> reference;

  factory _$SwappingAssetsRecord(
          [void Function(SwappingAssetsRecordBuilder) updates]) =>
      (new SwappingAssetsRecordBuilder()..update(updates)).build();

  _$SwappingAssetsRecord._(
      {this.assetName,
      this.assetImage,
      this.assetBigSymbol,
      this.assetSmallSymbol,
      this.assetNetwork,
      this.assetNumber,
      this.reference})
      : super._();

  @override
  SwappingAssetsRecord rebuild(
          void Function(SwappingAssetsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SwappingAssetsRecordBuilder toBuilder() =>
      new SwappingAssetsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SwappingAssetsRecord &&
        assetName == other.assetName &&
        assetImage == other.assetImage &&
        assetBigSymbol == other.assetBigSymbol &&
        assetSmallSymbol == other.assetSmallSymbol &&
        assetNetwork == other.assetNetwork &&
        assetNumber == other.assetNumber &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, assetName.hashCode), assetImage.hashCode),
                        assetBigSymbol.hashCode),
                    assetSmallSymbol.hashCode),
                assetNetwork.hashCode),
            assetNumber.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SwappingAssetsRecord')
          ..add('assetName', assetName)
          ..add('assetImage', assetImage)
          ..add('assetBigSymbol', assetBigSymbol)
          ..add('assetSmallSymbol', assetSmallSymbol)
          ..add('assetNetwork', assetNetwork)
          ..add('assetNumber', assetNumber)
          ..add('reference', reference))
        .toString();
  }
}

class SwappingAssetsRecordBuilder
    implements Builder<SwappingAssetsRecord, SwappingAssetsRecordBuilder> {
  _$SwappingAssetsRecord _$v;

  String _assetName;
  String get assetName => _$this._assetName;
  set assetName(String assetName) => _$this._assetName = assetName;

  String _assetImage;
  String get assetImage => _$this._assetImage;
  set assetImage(String assetImage) => _$this._assetImage = assetImage;

  String _assetBigSymbol;
  String get assetBigSymbol => _$this._assetBigSymbol;
  set assetBigSymbol(String assetBigSymbol) =>
      _$this._assetBigSymbol = assetBigSymbol;

  String _assetSmallSymbol;
  String get assetSmallSymbol => _$this._assetSmallSymbol;
  set assetSmallSymbol(String assetSmallSymbol) =>
      _$this._assetSmallSymbol = assetSmallSymbol;

  String _assetNetwork;
  String get assetNetwork => _$this._assetNetwork;
  set assetNetwork(String assetNetwork) => _$this._assetNetwork = assetNetwork;

  int _assetNumber;
  int get assetNumber => _$this._assetNumber;
  set assetNumber(int assetNumber) => _$this._assetNumber = assetNumber;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  SwappingAssetsRecordBuilder() {
    SwappingAssetsRecord._initializeBuilder(this);
  }

  SwappingAssetsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _assetName = $v.assetName;
      _assetImage = $v.assetImage;
      _assetBigSymbol = $v.assetBigSymbol;
      _assetSmallSymbol = $v.assetSmallSymbol;
      _assetNetwork = $v.assetNetwork;
      _assetNumber = $v.assetNumber;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SwappingAssetsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SwappingAssetsRecord;
  }

  @override
  void update(void Function(SwappingAssetsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SwappingAssetsRecord build() {
    final _$result = _$v ??
        new _$SwappingAssetsRecord._(
            assetName: assetName,
            assetImage: assetImage,
            assetBigSymbol: assetBigSymbol,
            assetSmallSymbol: assetSmallSymbol,
            assetNetwork: assetNetwork,
            assetNumber: assetNumber,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_wallets_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserWalletsRecord> _$userWalletsRecordSerializer =
    new _$UserWalletsRecordSerializer();

class _$UserWalletsRecordSerializer
    implements StructuredSerializer<UserWalletsRecord> {
  @override
  final Iterable<Type> types = const [UserWalletsRecord, _$UserWalletsRecord];
  @override
  final String wireName = 'UserWalletsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserWalletsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.walletLabel;
    if (value != null) {
      result
        ..add('walletLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.walletMnemonic;
    if (value != null) {
      result
        ..add('walletMnemonic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.walletExtendedPublicKey;
    if (value != null) {
      result
        ..add('walletExtendedPublicKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.walletDepositAddress;
    if (value != null) {
      result
        ..add('walletDepositAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.walletPrivateKey;
    if (value != null) {
      result
        ..add('walletPrivateKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.walletBalance;
    if (value != null) {
      result
        ..add('walletBalance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  UserWalletsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserWalletsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'walletLabel':
          result.walletLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'walletMnemonic':
          result.walletMnemonic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'walletExtendedPublicKey':
          result.walletExtendedPublicKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'walletDepositAddress':
          result.walletDepositAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'walletPrivateKey':
          result.walletPrivateKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'walletBalance':
          result.walletBalance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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

class _$UserWalletsRecord extends UserWalletsRecord {
  @override
  final String walletLabel;
  @override
  final String walletMnemonic;
  @override
  final String walletExtendedPublicKey;
  @override
  final String walletDepositAddress;
  @override
  final String walletPrivateKey;
  @override
  final double walletBalance;
  @override
  final DocumentReference<Object> reference;

  factory _$UserWalletsRecord(
          [void Function(UserWalletsRecordBuilder) updates]) =>
      (new UserWalletsRecordBuilder()..update(updates)).build();

  _$UserWalletsRecord._(
      {this.walletLabel,
      this.walletMnemonic,
      this.walletExtendedPublicKey,
      this.walletDepositAddress,
      this.walletPrivateKey,
      this.walletBalance,
      this.reference})
      : super._();

  @override
  UserWalletsRecord rebuild(void Function(UserWalletsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserWalletsRecordBuilder toBuilder() =>
      new UserWalletsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserWalletsRecord &&
        walletLabel == other.walletLabel &&
        walletMnemonic == other.walletMnemonic &&
        walletExtendedPublicKey == other.walletExtendedPublicKey &&
        walletDepositAddress == other.walletDepositAddress &&
        walletPrivateKey == other.walletPrivateKey &&
        walletBalance == other.walletBalance &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, walletLabel.hashCode),
                            walletMnemonic.hashCode),
                        walletExtendedPublicKey.hashCode),
                    walletDepositAddress.hashCode),
                walletPrivateKey.hashCode),
            walletBalance.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserWalletsRecord')
          ..add('walletLabel', walletLabel)
          ..add('walletMnemonic', walletMnemonic)
          ..add('walletExtendedPublicKey', walletExtendedPublicKey)
          ..add('walletDepositAddress', walletDepositAddress)
          ..add('walletPrivateKey', walletPrivateKey)
          ..add('walletBalance', walletBalance)
          ..add('reference', reference))
        .toString();
  }
}

class UserWalletsRecordBuilder
    implements Builder<UserWalletsRecord, UserWalletsRecordBuilder> {
  _$UserWalletsRecord _$v;

  String _walletLabel;
  String get walletLabel => _$this._walletLabel;
  set walletLabel(String walletLabel) => _$this._walletLabel = walletLabel;

  String _walletMnemonic;
  String get walletMnemonic => _$this._walletMnemonic;
  set walletMnemonic(String walletMnemonic) =>
      _$this._walletMnemonic = walletMnemonic;

  String _walletExtendedPublicKey;
  String get walletExtendedPublicKey => _$this._walletExtendedPublicKey;
  set walletExtendedPublicKey(String walletExtendedPublicKey) =>
      _$this._walletExtendedPublicKey = walletExtendedPublicKey;

  String _walletDepositAddress;
  String get walletDepositAddress => _$this._walletDepositAddress;
  set walletDepositAddress(String walletDepositAddress) =>
      _$this._walletDepositAddress = walletDepositAddress;

  String _walletPrivateKey;
  String get walletPrivateKey => _$this._walletPrivateKey;
  set walletPrivateKey(String walletPrivateKey) =>
      _$this._walletPrivateKey = walletPrivateKey;

  double _walletBalance;
  double get walletBalance => _$this._walletBalance;
  set walletBalance(double walletBalance) =>
      _$this._walletBalance = walletBalance;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserWalletsRecordBuilder() {
    UserWalletsRecord._initializeBuilder(this);
  }

  UserWalletsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _walletLabel = $v.walletLabel;
      _walletMnemonic = $v.walletMnemonic;
      _walletExtendedPublicKey = $v.walletExtendedPublicKey;
      _walletDepositAddress = $v.walletDepositAddress;
      _walletPrivateKey = $v.walletPrivateKey;
      _walletBalance = $v.walletBalance;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserWalletsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserWalletsRecord;
  }

  @override
  void update(void Function(UserWalletsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserWalletsRecord build() {
    final _$result = _$v ??
        new _$UserWalletsRecord._(
            walletLabel: walletLabel,
            walletMnemonic: walletMnemonic,
            walletExtendedPublicKey: walletExtendedPublicKey,
            walletDepositAddress: walletDepositAddress,
            walletPrivateKey: walletPrivateKey,
            walletBalance: walletBalance,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

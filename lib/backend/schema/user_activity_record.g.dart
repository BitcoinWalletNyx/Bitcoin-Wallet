// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_activity_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserActivityRecord> _$userActivityRecordSerializer =
    new _$UserActivityRecordSerializer();

class _$UserActivityRecordSerializer
    implements StructuredSerializer<UserActivityRecord> {
  @override
  final Iterable<Type> types = const [UserActivityRecord, _$UserActivityRecord];
  @override
  final String wireName = 'UserActivityRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserActivityRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.transactionType;
    if (value != null) {
      result
        ..add('transactionType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionTxHash;
    if (value != null) {
      result
        ..add('transactionTxHash')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionId;
    if (value != null) {
      result
        ..add('transactionId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.swapFrom;
    if (value != null) {
      result
        ..add('swapFrom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.swapTo;
    if (value != null) {
      result
        ..add('swapTo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.swapAmount;
    if (value != null) {
      result
        ..add('swapAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tokenSwappedLogo;
    if (value != null) {
      result
        ..add('tokenSwappedLogo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.estimatedReceived;
    if (value != null) {
      result
        ..add('estimatedReceived')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.transactionStatus;
    if (value != null) {
      result
        ..add('transactionStatus')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.payInAddress;
    if (value != null) {
      result
        ..add('payInAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.payOutAddress;
    if (value != null) {
      result
        ..add('payOutAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tokenNetwork;
    if (value != null) {
      result
        ..add('tokenNetwork')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tokenSmallSymbol;
    if (value != null) {
      result
        ..add('tokenSmallSymbol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tokenSymbol;
    if (value != null) {
      result
        ..add('tokenSymbol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.swapToSymbol;
    if (value != null) {
      result
        ..add('swapToSymbol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  UserActivityRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserActivityRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'transactionType':
          result.transactionType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transactionTxHash':
          result.transactionTxHash = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transactionId':
          result.transactionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swapFrom':
          result.swapFrom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swapTo':
          result.swapTo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swapAmount':
          result.swapAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'tokenSwappedLogo':
          result.tokenSwappedLogo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'estimatedReceived':
          result.estimatedReceived = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'transactionStatus':
          result.transactionStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'payInAddress':
          result.payInAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'payOutAddress':
          result.payOutAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tokenNetwork':
          result.tokenNetwork = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tokenSmallSymbol':
          result.tokenSmallSymbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tokenSymbol':
          result.tokenSymbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'swapToSymbol':
          result.swapToSymbol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$UserActivityRecord extends UserActivityRecord {
  @override
  final String transactionType;
  @override
  final String transactionTxHash;
  @override
  final String transactionId;
  @override
  final String swapFrom;
  @override
  final String swapTo;
  @override
  final double swapAmount;
  @override
  final String tokenSwappedLogo;
  @override
  final double estimatedReceived;
  @override
  final String transactionStatus;
  @override
  final String payInAddress;
  @override
  final String payOutAddress;
  @override
  final String createdAt;
  @override
  final String tokenNetwork;
  @override
  final String tokenSmallSymbol;
  @override
  final String tokenSymbol;
  @override
  final String swapToSymbol;
  @override
  final DocumentReference<Object> reference;

  factory _$UserActivityRecord(
          [void Function(UserActivityRecordBuilder) updates]) =>
      (new UserActivityRecordBuilder()..update(updates)).build();

  _$UserActivityRecord._(
      {this.transactionType,
      this.transactionTxHash,
      this.transactionId,
      this.swapFrom,
      this.swapTo,
      this.swapAmount,
      this.tokenSwappedLogo,
      this.estimatedReceived,
      this.transactionStatus,
      this.payInAddress,
      this.payOutAddress,
      this.createdAt,
      this.tokenNetwork,
      this.tokenSmallSymbol,
      this.tokenSymbol,
      this.swapToSymbol,
      this.reference})
      : super._();

  @override
  UserActivityRecord rebuild(
          void Function(UserActivityRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserActivityRecordBuilder toBuilder() =>
      new UserActivityRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserActivityRecord &&
        transactionType == other.transactionType &&
        transactionTxHash == other.transactionTxHash &&
        transactionId == other.transactionId &&
        swapFrom == other.swapFrom &&
        swapTo == other.swapTo &&
        swapAmount == other.swapAmount &&
        tokenSwappedLogo == other.tokenSwappedLogo &&
        estimatedReceived == other.estimatedReceived &&
        transactionStatus == other.transactionStatus &&
        payInAddress == other.payInAddress &&
        payOutAddress == other.payOutAddress &&
        createdAt == other.createdAt &&
        tokenNetwork == other.tokenNetwork &&
        tokenSmallSymbol == other.tokenSmallSymbol &&
        tokenSymbol == other.tokenSymbol &&
        swapToSymbol == other.swapToSymbol &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        transactionType
                                                                            .hashCode),
                                                                    transactionTxHash
                                                                        .hashCode),
                                                                transactionId
                                                                    .hashCode),
                                                            swapFrom.hashCode),
                                                        swapTo.hashCode),
                                                    swapAmount.hashCode),
                                                tokenSwappedLogo.hashCode),
                                            estimatedReceived.hashCode),
                                        transactionStatus.hashCode),
                                    payInAddress.hashCode),
                                payOutAddress.hashCode),
                            createdAt.hashCode),
                        tokenNetwork.hashCode),
                    tokenSmallSymbol.hashCode),
                tokenSymbol.hashCode),
            swapToSymbol.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserActivityRecord')
          ..add('transactionType', transactionType)
          ..add('transactionTxHash', transactionTxHash)
          ..add('transactionId', transactionId)
          ..add('swapFrom', swapFrom)
          ..add('swapTo', swapTo)
          ..add('swapAmount', swapAmount)
          ..add('tokenSwappedLogo', tokenSwappedLogo)
          ..add('estimatedReceived', estimatedReceived)
          ..add('transactionStatus', transactionStatus)
          ..add('payInAddress', payInAddress)
          ..add('payOutAddress', payOutAddress)
          ..add('createdAt', createdAt)
          ..add('tokenNetwork', tokenNetwork)
          ..add('tokenSmallSymbol', tokenSmallSymbol)
          ..add('tokenSymbol', tokenSymbol)
          ..add('swapToSymbol', swapToSymbol)
          ..add('reference', reference))
        .toString();
  }
}

class UserActivityRecordBuilder
    implements Builder<UserActivityRecord, UserActivityRecordBuilder> {
  _$UserActivityRecord _$v;

  String _transactionType;
  String get transactionType => _$this._transactionType;
  set transactionType(String transactionType) =>
      _$this._transactionType = transactionType;

  String _transactionTxHash;
  String get transactionTxHash => _$this._transactionTxHash;
  set transactionTxHash(String transactionTxHash) =>
      _$this._transactionTxHash = transactionTxHash;

  String _transactionId;
  String get transactionId => _$this._transactionId;
  set transactionId(String transactionId) =>
      _$this._transactionId = transactionId;

  String _swapFrom;
  String get swapFrom => _$this._swapFrom;
  set swapFrom(String swapFrom) => _$this._swapFrom = swapFrom;

  String _swapTo;
  String get swapTo => _$this._swapTo;
  set swapTo(String swapTo) => _$this._swapTo = swapTo;

  double _swapAmount;
  double get swapAmount => _$this._swapAmount;
  set swapAmount(double swapAmount) => _$this._swapAmount = swapAmount;

  String _tokenSwappedLogo;
  String get tokenSwappedLogo => _$this._tokenSwappedLogo;
  set tokenSwappedLogo(String tokenSwappedLogo) =>
      _$this._tokenSwappedLogo = tokenSwappedLogo;

  double _estimatedReceived;
  double get estimatedReceived => _$this._estimatedReceived;
  set estimatedReceived(double estimatedReceived) =>
      _$this._estimatedReceived = estimatedReceived;

  String _transactionStatus;
  String get transactionStatus => _$this._transactionStatus;
  set transactionStatus(String transactionStatus) =>
      _$this._transactionStatus = transactionStatus;

  String _payInAddress;
  String get payInAddress => _$this._payInAddress;
  set payInAddress(String payInAddress) => _$this._payInAddress = payInAddress;

  String _payOutAddress;
  String get payOutAddress => _$this._payOutAddress;
  set payOutAddress(String payOutAddress) =>
      _$this._payOutAddress = payOutAddress;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _tokenNetwork;
  String get tokenNetwork => _$this._tokenNetwork;
  set tokenNetwork(String tokenNetwork) => _$this._tokenNetwork = tokenNetwork;

  String _tokenSmallSymbol;
  String get tokenSmallSymbol => _$this._tokenSmallSymbol;
  set tokenSmallSymbol(String tokenSmallSymbol) =>
      _$this._tokenSmallSymbol = tokenSmallSymbol;

  String _tokenSymbol;
  String get tokenSymbol => _$this._tokenSymbol;
  set tokenSymbol(String tokenSymbol) => _$this._tokenSymbol = tokenSymbol;

  String _swapToSymbol;
  String get swapToSymbol => _$this._swapToSymbol;
  set swapToSymbol(String swapToSymbol) => _$this._swapToSymbol = swapToSymbol;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserActivityRecordBuilder() {
    UserActivityRecord._initializeBuilder(this);
  }

  UserActivityRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transactionType = $v.transactionType;
      _transactionTxHash = $v.transactionTxHash;
      _transactionId = $v.transactionId;
      _swapFrom = $v.swapFrom;
      _swapTo = $v.swapTo;
      _swapAmount = $v.swapAmount;
      _tokenSwappedLogo = $v.tokenSwappedLogo;
      _estimatedReceived = $v.estimatedReceived;
      _transactionStatus = $v.transactionStatus;
      _payInAddress = $v.payInAddress;
      _payOutAddress = $v.payOutAddress;
      _createdAt = $v.createdAt;
      _tokenNetwork = $v.tokenNetwork;
      _tokenSmallSymbol = $v.tokenSmallSymbol;
      _tokenSymbol = $v.tokenSymbol;
      _swapToSymbol = $v.swapToSymbol;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserActivityRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserActivityRecord;
  }

  @override
  void update(void Function(UserActivityRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserActivityRecord build() {
    final _$result = _$v ??
        new _$UserActivityRecord._(
            transactionType: transactionType,
            transactionTxHash: transactionTxHash,
            transactionId: transactionId,
            swapFrom: swapFrom,
            swapTo: swapTo,
            swapAmount: swapAmount,
            tokenSwappedLogo: tokenSwappedLogo,
            estimatedReceived: estimatedReceived,
            transactionStatus: transactionStatus,
            payInAddress: payInAddress,
            payOutAddress: payOutAddress,
            createdAt: createdAt,
            tokenNetwork: tokenNetwork,
            tokenSmallSymbol: tokenSmallSymbol,
            tokenSymbol: tokenSymbol,
            swapToSymbol: swapToSymbol,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

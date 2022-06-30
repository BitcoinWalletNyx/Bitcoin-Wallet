// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserInfoRecord> _$userInfoRecordSerializer =
    new _$UserInfoRecordSerializer();

class _$UserInfoRecordSerializer
    implements StructuredSerializer<UserInfoRecord> {
  @override
  final Iterable<Type> types = const [UserInfoRecord, _$UserInfoRecord];
  @override
  final String wireName = 'UserInfoRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UserInfoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.bitcoinBalance;
    if (value != null) {
      result
        ..add('bitcoinBalance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.bitBalanceUSD;
    if (value != null) {
      result
        ..add('bitBalanceUSD')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.bitPrice;
    if (value != null) {
      result
        ..add('bitPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.transactionsValues;
    if (value != null) {
      result
        ..add('transactionsValues')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    value = object.transactionValuesUSD;
    if (value != null) {
      result
        ..add('transactionValuesUSD')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    value = object.transactionDates;
    if (value != null) {
      result
        ..add('transactionDates')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  UserInfoRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserInfoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'bitcoinBalance':
          result.bitcoinBalance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'bitBalanceUSD':
          result.bitBalanceUSD = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'bitPrice':
          result.bitPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'transactionsValues':
          result.transactionsValues.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<Object>);
          break;
        case 'transactionValuesUSD':
          result.transactionValuesUSD.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(double)]))
              as BuiltList<Object>);
          break;
        case 'transactionDates':
          result.transactionDates.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
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

class _$UserInfoRecord extends UserInfoRecord {
  @override
  final double bitcoinBalance;
  @override
  final double bitBalanceUSD;
  @override
  final double bitPrice;
  @override
  final BuiltList<double> transactionsValues;
  @override
  final BuiltList<double> transactionValuesUSD;
  @override
  final BuiltList<String> transactionDates;
  @override
  final DocumentReference<Object> reference;

  factory _$UserInfoRecord([void Function(UserInfoRecordBuilder) updates]) =>
      (new UserInfoRecordBuilder()..update(updates)).build();

  _$UserInfoRecord._(
      {this.bitcoinBalance,
      this.bitBalanceUSD,
      this.bitPrice,
      this.transactionsValues,
      this.transactionValuesUSD,
      this.transactionDates,
      this.reference})
      : super._();

  @override
  UserInfoRecord rebuild(void Function(UserInfoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoRecordBuilder toBuilder() =>
      new UserInfoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfoRecord &&
        bitcoinBalance == other.bitcoinBalance &&
        bitBalanceUSD == other.bitBalanceUSD &&
        bitPrice == other.bitPrice &&
        transactionsValues == other.transactionsValues &&
        transactionValuesUSD == other.transactionValuesUSD &&
        transactionDates == other.transactionDates &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, bitcoinBalance.hashCode),
                            bitBalanceUSD.hashCode),
                        bitPrice.hashCode),
                    transactionsValues.hashCode),
                transactionValuesUSD.hashCode),
            transactionDates.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserInfoRecord')
          ..add('bitcoinBalance', bitcoinBalance)
          ..add('bitBalanceUSD', bitBalanceUSD)
          ..add('bitPrice', bitPrice)
          ..add('transactionsValues', transactionsValues)
          ..add('transactionValuesUSD', transactionValuesUSD)
          ..add('transactionDates', transactionDates)
          ..add('reference', reference))
        .toString();
  }
}

class UserInfoRecordBuilder
    implements Builder<UserInfoRecord, UserInfoRecordBuilder> {
  _$UserInfoRecord _$v;

  double _bitcoinBalance;
  double get bitcoinBalance => _$this._bitcoinBalance;
  set bitcoinBalance(double bitcoinBalance) =>
      _$this._bitcoinBalance = bitcoinBalance;

  double _bitBalanceUSD;
  double get bitBalanceUSD => _$this._bitBalanceUSD;
  set bitBalanceUSD(double bitBalanceUSD) =>
      _$this._bitBalanceUSD = bitBalanceUSD;

  double _bitPrice;
  double get bitPrice => _$this._bitPrice;
  set bitPrice(double bitPrice) => _$this._bitPrice = bitPrice;

  ListBuilder<double> _transactionsValues;
  ListBuilder<double> get transactionsValues =>
      _$this._transactionsValues ??= new ListBuilder<double>();
  set transactionsValues(ListBuilder<double> transactionsValues) =>
      _$this._transactionsValues = transactionsValues;

  ListBuilder<double> _transactionValuesUSD;
  ListBuilder<double> get transactionValuesUSD =>
      _$this._transactionValuesUSD ??= new ListBuilder<double>();
  set transactionValuesUSD(ListBuilder<double> transactionValuesUSD) =>
      _$this._transactionValuesUSD = transactionValuesUSD;

  ListBuilder<String> _transactionDates;
  ListBuilder<String> get transactionDates =>
      _$this._transactionDates ??= new ListBuilder<String>();
  set transactionDates(ListBuilder<String> transactionDates) =>
      _$this._transactionDates = transactionDates;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UserInfoRecordBuilder() {
    UserInfoRecord._initializeBuilder(this);
  }

  UserInfoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bitcoinBalance = $v.bitcoinBalance;
      _bitBalanceUSD = $v.bitBalanceUSD;
      _bitPrice = $v.bitPrice;
      _transactionsValues = $v.transactionsValues?.toBuilder();
      _transactionValuesUSD = $v.transactionValuesUSD?.toBuilder();
      _transactionDates = $v.transactionDates?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserInfoRecord;
  }

  @override
  void update(void Function(UserInfoRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserInfoRecord build() {
    _$UserInfoRecord _$result;
    try {
      _$result = _$v ??
          new _$UserInfoRecord._(
              bitcoinBalance: bitcoinBalance,
              bitBalanceUSD: bitBalanceUSD,
              bitPrice: bitPrice,
              transactionsValues: _transactionsValues?.build(),
              transactionValuesUSD: _transactionValuesUSD?.build(),
              transactionDates: _transactionDates?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'transactionsValues';
        _transactionsValues?.build();
        _$failedField = 'transactionValuesUSD';
        _transactionValuesUSD?.build();
        _$failedField = 'transactionDates';
        _transactionDates?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserInfoRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

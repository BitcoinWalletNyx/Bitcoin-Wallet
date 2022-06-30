// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.activeAddress;
    if (value != null) {
      result
        ..add('activeAddress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.activeKey;
    if (value != null) {
      result
        ..add('activeKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.activeMnemonic;
    if (value != null) {
      result
        ..add('activeMnemonic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.btc;
    if (value != null) {
      result
        ..add('BTC')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.btcUSD;
    if (value != null) {
      result
        ..add('btcUSD')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.btcPrice;
    if (value != null) {
      result
        ..add('btcPrice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.favNetworkFee;
    if (value != null) {
      result
        ..add('favNetworkFee')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.swapActivityCount;
    if (value != null) {
      result
        ..add('swapActivityCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.walletLabel;
    if (value != null) {
      result
        ..add('walletLabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.walletsCount;
    if (value != null) {
      result
        ..add('walletsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.activeExtendedPublicKey;
    if (value != null) {
      result
        ..add('activeExtendedPublicKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionsCount;
    if (value != null) {
      result
        ..add('transactionsCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.addressCount;
    if (value != null) {
      result
        ..add('addressCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.unconfirmedBalance;
    if (value != null) {
      result
        ..add('unconfirmedBalance')
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'activeAddress':
          result.activeAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'activeKey':
          result.activeKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'activeMnemonic':
          result.activeMnemonic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'BTC':
          result.btc = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'btcUSD':
          result.btcUSD = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'btcPrice':
          result.btcPrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'favNetworkFee':
          result.favNetworkFee = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'swapActivityCount':
          result.swapActivityCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'walletLabel':
          result.walletLabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'walletsCount':
          result.walletsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'activeExtendedPublicKey':
          result.activeExtendedPublicKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transactionsCount':
          result.transactionsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'addressCount':
          result.addressCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'unconfirmedBalance':
          result.unconfirmedBalance = serializers.deserialize(value,
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

class _$UsersRecord extends UsersRecord {
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final String activeAddress;
  @override
  final String activeKey;
  @override
  final String activeMnemonic;
  @override
  final double btc;
  @override
  final double btcUSD;
  @override
  final double btcPrice;
  @override
  final int favNetworkFee;
  @override
  final int swapActivityCount;
  @override
  final String walletLabel;
  @override
  final int walletsCount;
  @override
  final String activeExtendedPublicKey;
  @override
  final int transactionsCount;
  @override
  final int addressCount;
  @override
  final double unconfirmedBalance;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.activeAddress,
      this.activeKey,
      this.activeMnemonic,
      this.btc,
      this.btcUSD,
      this.btcPrice,
      this.favNetworkFee,
      this.swapActivityCount,
      this.walletLabel,
      this.walletsCount,
      this.activeExtendedPublicKey,
      this.transactionsCount,
      this.addressCount,
      this.unconfirmedBalance,
      this.reference})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        activeAddress == other.activeAddress &&
        activeKey == other.activeKey &&
        activeMnemonic == other.activeMnemonic &&
        btc == other.btc &&
        btcUSD == other.btcUSD &&
        btcPrice == other.btcPrice &&
        favNetworkFee == other.favNetworkFee &&
        swapActivityCount == other.swapActivityCount &&
        walletLabel == other.walletLabel &&
        walletsCount == other.walletsCount &&
        activeExtendedPublicKey == other.activeExtendedPublicKey &&
        transactionsCount == other.transactionsCount &&
        addressCount == other.addressCount &&
        unconfirmedBalance == other.unconfirmedBalance &&
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
                                                                        $jc(
                                                                            $jc($jc($jc(0, email.hashCode), displayName.hashCode),
                                                                                photoUrl.hashCode),
                                                                            uid.hashCode),
                                                                        createdTime.hashCode),
                                                                    phoneNumber.hashCode),
                                                                activeAddress.hashCode),
                                                            activeKey.hashCode),
                                                        activeMnemonic.hashCode),
                                                    btc.hashCode),
                                                btcUSD.hashCode),
                                            btcPrice.hashCode),
                                        favNetworkFee.hashCode),
                                    swapActivityCount.hashCode),
                                walletLabel.hashCode),
                            walletsCount.hashCode),
                        activeExtendedPublicKey.hashCode),
                    transactionsCount.hashCode),
                addressCount.hashCode),
            unconfirmedBalance.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('activeAddress', activeAddress)
          ..add('activeKey', activeKey)
          ..add('activeMnemonic', activeMnemonic)
          ..add('btc', btc)
          ..add('btcUSD', btcUSD)
          ..add('btcPrice', btcPrice)
          ..add('favNetworkFee', favNetworkFee)
          ..add('swapActivityCount', swapActivityCount)
          ..add('walletLabel', walletLabel)
          ..add('walletsCount', walletsCount)
          ..add('activeExtendedPublicKey', activeExtendedPublicKey)
          ..add('transactionsCount', transactionsCount)
          ..add('addressCount', addressCount)
          ..add('unconfirmedBalance', unconfirmedBalance)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _activeAddress;
  String get activeAddress => _$this._activeAddress;
  set activeAddress(String activeAddress) =>
      _$this._activeAddress = activeAddress;

  String _activeKey;
  String get activeKey => _$this._activeKey;
  set activeKey(String activeKey) => _$this._activeKey = activeKey;

  String _activeMnemonic;
  String get activeMnemonic => _$this._activeMnemonic;
  set activeMnemonic(String activeMnemonic) =>
      _$this._activeMnemonic = activeMnemonic;

  double _btc;
  double get btc => _$this._btc;
  set btc(double btc) => _$this._btc = btc;

  double _btcUSD;
  double get btcUSD => _$this._btcUSD;
  set btcUSD(double btcUSD) => _$this._btcUSD = btcUSD;

  double _btcPrice;
  double get btcPrice => _$this._btcPrice;
  set btcPrice(double btcPrice) => _$this._btcPrice = btcPrice;

  int _favNetworkFee;
  int get favNetworkFee => _$this._favNetworkFee;
  set favNetworkFee(int favNetworkFee) => _$this._favNetworkFee = favNetworkFee;

  int _swapActivityCount;
  int get swapActivityCount => _$this._swapActivityCount;
  set swapActivityCount(int swapActivityCount) =>
      _$this._swapActivityCount = swapActivityCount;

  String _walletLabel;
  String get walletLabel => _$this._walletLabel;
  set walletLabel(String walletLabel) => _$this._walletLabel = walletLabel;

  int _walletsCount;
  int get walletsCount => _$this._walletsCount;
  set walletsCount(int walletsCount) => _$this._walletsCount = walletsCount;

  String _activeExtendedPublicKey;
  String get activeExtendedPublicKey => _$this._activeExtendedPublicKey;
  set activeExtendedPublicKey(String activeExtendedPublicKey) =>
      _$this._activeExtendedPublicKey = activeExtendedPublicKey;

  int _transactionsCount;
  int get transactionsCount => _$this._transactionsCount;
  set transactionsCount(int transactionsCount) =>
      _$this._transactionsCount = transactionsCount;

  int _addressCount;
  int get addressCount => _$this._addressCount;
  set addressCount(int addressCount) => _$this._addressCount = addressCount;

  double _unconfirmedBalance;
  double get unconfirmedBalance => _$this._unconfirmedBalance;
  set unconfirmedBalance(double unconfirmedBalance) =>
      _$this._unconfirmedBalance = unconfirmedBalance;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _activeAddress = $v.activeAddress;
      _activeKey = $v.activeKey;
      _activeMnemonic = $v.activeMnemonic;
      _btc = $v.btc;
      _btcUSD = $v.btcUSD;
      _btcPrice = $v.btcPrice;
      _favNetworkFee = $v.favNetworkFee;
      _swapActivityCount = $v.swapActivityCount;
      _walletLabel = $v.walletLabel;
      _walletsCount = $v.walletsCount;
      _activeExtendedPublicKey = $v.activeExtendedPublicKey;
      _transactionsCount = $v.transactionsCount;
      _addressCount = $v.addressCount;
      _unconfirmedBalance = $v.unconfirmedBalance;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersRecord build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            activeAddress: activeAddress,
            activeKey: activeKey,
            activeMnemonic: activeMnemonic,
            btc: btc,
            btcUSD: btcUSD,
            btcPrice: btcPrice,
            favNetworkFee: favNetworkFee,
            swapActivityCount: swapActivityCount,
            walletLabel: walletLabel,
            walletsCount: walletsCount,
            activeExtendedPublicKey: activeExtendedPublicKey,
            transactionsCount: transactionsCount,
            addressCount: addressCount,
            unconfirmedBalance: unconfirmedBalance,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

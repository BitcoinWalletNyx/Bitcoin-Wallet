import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get activeAddress;

  @nullable
  String get activeKey;

  @nullable
  String get activeMnemonic;

  @nullable
  @BuiltValueField(wireName: 'BTC')
  double get btc;

  @nullable
  double get btcUSD;

  @nullable
  double get btcPrice;

  @nullable
  int get favNetworkFee;

  @nullable
  int get swapActivityCount;

  @nullable
  String get walletLabel;

  @nullable
  int get walletsCount;

  @nullable
  String get activeExtendedPublicKey;

  @nullable
  int get transactionsCount;

  @nullable
  int get addressCount;

  @nullable
  double get unconfirmedBalance;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..activeAddress = ''
    ..activeKey = ''
    ..activeMnemonic = ''
    ..btc = 0.0
    ..btcUSD = 0.0
    ..btcPrice = 0.0
    ..favNetworkFee = 0
    ..swapActivityCount = 0
    ..walletLabel = ''
    ..walletsCount = 0
    ..activeExtendedPublicKey = ''
    ..transactionsCount = 0
    ..addressCount = 0
    ..unconfirmedBalance = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String activeAddress,
  String activeKey,
  String activeMnemonic,
  double btc,
  double btcUSD,
  double btcPrice,
  int favNetworkFee,
  int swapActivityCount,
  String walletLabel,
  int walletsCount,
  String activeExtendedPublicKey,
  int transactionsCount,
  int addressCount,
  double unconfirmedBalance,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..activeAddress = activeAddress
          ..activeKey = activeKey
          ..activeMnemonic = activeMnemonic
          ..btc = btc
          ..btcUSD = btcUSD
          ..btcPrice = btcPrice
          ..favNetworkFee = favNetworkFee
          ..swapActivityCount = swapActivityCount
          ..walletLabel = walletLabel
          ..walletsCount = walletsCount
          ..activeExtendedPublicKey = activeExtendedPublicKey
          ..transactionsCount = transactionsCount
          ..addressCount = addressCount
          ..unconfirmedBalance = unconfirmedBalance));

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_wallets_record.g.dart';

abstract class UserWalletsRecord
    implements Built<UserWalletsRecord, UserWalletsRecordBuilder> {
  static Serializer<UserWalletsRecord> get serializer =>
      _$userWalletsRecordSerializer;

  @nullable
  String get walletLabel;

  @nullable
  String get walletMnemonic;

  @nullable
  String get walletExtendedPublicKey;

  @nullable
  String get walletDepositAddress;

  @nullable
  String get walletPrivateKey;

  @nullable
  double get walletBalance;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(UserWalletsRecordBuilder builder) => builder
    ..walletLabel = ''
    ..walletMnemonic = ''
    ..walletExtendedPublicKey = ''
    ..walletDepositAddress = ''
    ..walletPrivateKey = ''
    ..walletBalance = 0.0;

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('userWallets')
          : FirebaseFirestore.instance.collectionGroup('userWallets');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('userWallets').doc();

  static Stream<UserWalletsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserWalletsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserWalletsRecord._();
  factory UserWalletsRecord([void Function(UserWalletsRecordBuilder) updates]) =
      _$UserWalletsRecord;

  static UserWalletsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserWalletsRecordData({
  String walletLabel,
  String walletMnemonic,
  String walletExtendedPublicKey,
  String walletDepositAddress,
  String walletPrivateKey,
  double walletBalance,
}) =>
    serializers.toFirestore(
        UserWalletsRecord.serializer,
        UserWalletsRecord((u) => u
          ..walletLabel = walletLabel
          ..walletMnemonic = walletMnemonic
          ..walletExtendedPublicKey = walletExtendedPublicKey
          ..walletDepositAddress = walletDepositAddress
          ..walletPrivateKey = walletPrivateKey
          ..walletBalance = walletBalance));

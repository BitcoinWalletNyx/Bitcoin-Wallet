import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_info_record.g.dart';

abstract class UserInfoRecord
    implements Built<UserInfoRecord, UserInfoRecordBuilder> {
  static Serializer<UserInfoRecord> get serializer =>
      _$userInfoRecordSerializer;

  @nullable
  double get bitcoinBalance;

  @nullable
  double get bitBalanceUSD;

  @nullable
  double get bitPrice;

  @nullable
  BuiltList<double> get transactionsValues;

  @nullable
  BuiltList<double> get transactionValuesUSD;

  @nullable
  BuiltList<String> get transactionDates;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(UserInfoRecordBuilder builder) => builder
    ..bitcoinBalance = 0.0
    ..bitBalanceUSD = 0.0
    ..bitPrice = 0.0
    ..transactionsValues = ListBuilder()
    ..transactionValuesUSD = ListBuilder()
    ..transactionDates = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('userInfo')
          : FirebaseFirestore.instance.collectionGroup('userInfo');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('userInfo').doc();

  static Stream<UserInfoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserInfoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserInfoRecord._();
  factory UserInfoRecord([void Function(UserInfoRecordBuilder) updates]) =
      _$UserInfoRecord;

  static UserInfoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserInfoRecordData({
  double bitcoinBalance,
  double bitBalanceUSD,
  double bitPrice,
}) =>
    serializers.toFirestore(
        UserInfoRecord.serializer,
        UserInfoRecord((u) => u
          ..bitcoinBalance = bitcoinBalance
          ..bitBalanceUSD = bitBalanceUSD
          ..bitPrice = bitPrice
          ..transactionsValues = null
          ..transactionValuesUSD = null
          ..transactionDates = null));

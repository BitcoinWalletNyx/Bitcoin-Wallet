import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_activity_record.g.dart';

abstract class UserActivityRecord
    implements Built<UserActivityRecord, UserActivityRecordBuilder> {
  static Serializer<UserActivityRecord> get serializer =>
      _$userActivityRecordSerializer;

  @nullable
  String get transactionType;

  @nullable
  String get transactionTxHash;

  @nullable
  String get transactionId;

  @nullable
  String get swapFrom;

  @nullable
  String get swapTo;

  @nullable
  double get swapAmount;

  @nullable
  String get tokenSwappedLogo;

  @nullable
  double get estimatedReceived;

  @nullable
  String get transactionStatus;

  @nullable
  String get payInAddress;

  @nullable
  String get payOutAddress;

  @nullable
  String get createdAt;

  @nullable
  String get tokenNetwork;

  @nullable
  String get tokenSmallSymbol;

  @nullable
  String get tokenSymbol;

  @nullable
  String get swapToSymbol;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(UserActivityRecordBuilder builder) => builder
    ..transactionType = ''
    ..transactionTxHash = ''
    ..transactionId = ''
    ..swapFrom = ''
    ..swapTo = ''
    ..swapAmount = 0.0
    ..tokenSwappedLogo = ''
    ..estimatedReceived = 0.0
    ..transactionStatus = ''
    ..payInAddress = ''
    ..payOutAddress = ''
    ..createdAt = ''
    ..tokenNetwork = ''
    ..tokenSmallSymbol = ''
    ..tokenSymbol = ''
    ..swapToSymbol = '';

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('userActivity')
          : FirebaseFirestore.instance.collectionGroup('userActivity');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('userActivity').doc();

  static Stream<UserActivityRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UserActivityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  UserActivityRecord._();
  factory UserActivityRecord(
          [void Function(UserActivityRecordBuilder) updates]) =
      _$UserActivityRecord;

  static UserActivityRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUserActivityRecordData({
  String transactionType,
  String transactionTxHash,
  String transactionId,
  String swapFrom,
  String swapTo,
  double swapAmount,
  String tokenSwappedLogo,
  double estimatedReceived,
  String transactionStatus,
  String payInAddress,
  String payOutAddress,
  String createdAt,
  String tokenNetwork,
  String tokenSmallSymbol,
  String tokenSymbol,
  String swapToSymbol,
}) =>
    serializers.toFirestore(
        UserActivityRecord.serializer,
        UserActivityRecord((u) => u
          ..transactionType = transactionType
          ..transactionTxHash = transactionTxHash
          ..transactionId = transactionId
          ..swapFrom = swapFrom
          ..swapTo = swapTo
          ..swapAmount = swapAmount
          ..tokenSwappedLogo = tokenSwappedLogo
          ..estimatedReceived = estimatedReceived
          ..transactionStatus = transactionStatus
          ..payInAddress = payInAddress
          ..payOutAddress = payOutAddress
          ..createdAt = createdAt
          ..tokenNetwork = tokenNetwork
          ..tokenSmallSymbol = tokenSmallSymbol
          ..tokenSymbol = tokenSymbol
          ..swapToSymbol = swapToSymbol));

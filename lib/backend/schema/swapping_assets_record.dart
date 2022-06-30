import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'swapping_assets_record.g.dart';

abstract class SwappingAssetsRecord
    implements Built<SwappingAssetsRecord, SwappingAssetsRecordBuilder> {
  static Serializer<SwappingAssetsRecord> get serializer =>
      _$swappingAssetsRecordSerializer;

  @nullable
  String get assetName;

  @nullable
  String get assetImage;

  @nullable
  String get assetBigSymbol;

  @nullable
  String get assetSmallSymbol;

  @nullable
  String get assetNetwork;

  @nullable
  int get assetNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SwappingAssetsRecordBuilder builder) => builder
    ..assetName = ''
    ..assetImage = ''
    ..assetBigSymbol = ''
    ..assetSmallSymbol = ''
    ..assetNetwork = ''
    ..assetNumber = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('swappingAssets');

  static Stream<SwappingAssetsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SwappingAssetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  SwappingAssetsRecord._();
  factory SwappingAssetsRecord(
          [void Function(SwappingAssetsRecordBuilder) updates]) =
      _$SwappingAssetsRecord;

  static SwappingAssetsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSwappingAssetsRecordData({
  String assetName,
  String assetImage,
  String assetBigSymbol,
  String assetSmallSymbol,
  String assetNetwork,
  int assetNumber,
}) =>
    serializers.toFirestore(
        SwappingAssetsRecord.serializer,
        SwappingAssetsRecord((s) => s
          ..assetName = assetName
          ..assetImage = assetImage
          ..assetBigSymbol = assetBigSymbol
          ..assetSmallSymbol = assetSmallSymbol
          ..assetNetwork = assetNetwork
          ..assetNumber = assetNumber));

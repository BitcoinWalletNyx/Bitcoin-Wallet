import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'support_team_record.g.dart';

abstract class SupportTeamRecord
    implements Built<SupportTeamRecord, SupportTeamRecordBuilder> {
  static Serializer<SupportTeamRecord> get serializer =>
      _$supportTeamRecordSerializer;

  @nullable
  String get fullName;

  @nullable
  String get emailAddress;

  @nullable
  @BuiltValueField(wireName: 'Subject')
  String get subject;

  @nullable
  @BuiltValueField(wireName: 'Description')
  String get description;

  @nullable
  String get formType;

  @nullable
  String get dateAndTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(SupportTeamRecordBuilder builder) => builder
    ..fullName = ''
    ..emailAddress = ''
    ..subject = ''
    ..description = ''
    ..formType = ''
    ..dateAndTime = '';

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('supportTeam')
          : FirebaseFirestore.instance.collectionGroup('supportTeam');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('supportTeam').doc();

  static Stream<SupportTeamRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SupportTeamRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SupportTeamRecord._();
  factory SupportTeamRecord([void Function(SupportTeamRecordBuilder) updates]) =
      _$SupportTeamRecord;

  static SupportTeamRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSupportTeamRecordData({
  String fullName,
  String emailAddress,
  String subject,
  String description,
  String formType,
  String dateAndTime,
}) =>
    serializers.toFirestore(
        SupportTeamRecord.serializer,
        SupportTeamRecord((s) => s
          ..fullName = fullName
          ..emailAddress = emailAddress
          ..subject = subject
          ..description = description
          ..formType = formType
          ..dateAndTime = dateAndTime));

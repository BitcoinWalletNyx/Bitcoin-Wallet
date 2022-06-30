import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'address_book_record.g.dart';

abstract class AddressBookRecord
    implements Built<AddressBookRecord, AddressBookRecordBuilder> {
  static Serializer<AddressBookRecord> get serializer =>
      _$addressBookRecordSerializer;

  @nullable
  String get addressLabel;

  @nullable
  String get address;

  @nullable
  String get addressWlabel;

  @nullable
  String get createdAt;

  @nullable
  String get addressLogo;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(AddressBookRecordBuilder builder) => builder
    ..addressLabel = ''
    ..address = ''
    ..addressWlabel = ''
    ..createdAt = ''
    ..addressLogo = '';

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('addressBook')
          : FirebaseFirestore.instance.collectionGroup('addressBook');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('addressBook').doc();

  static Stream<AddressBookRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<AddressBookRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  AddressBookRecord._();
  factory AddressBookRecord([void Function(AddressBookRecordBuilder) updates]) =
      _$AddressBookRecord;

  static AddressBookRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createAddressBookRecordData({
  String addressLabel,
  String address,
  String addressWlabel,
  String createdAt,
  String addressLogo,
}) =>
    serializers.toFirestore(
        AddressBookRecord.serializer,
        AddressBookRecord((a) => a
          ..addressLabel = addressLabel
          ..address = address
          ..addressWlabel = addressWlabel
          ..createdAt = createdAt
          ..addressLogo = addressLogo));
